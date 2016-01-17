<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml" xmlns:djb="http://www.obdurodon.org"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <!-- Functions -->
    <xsl:function name="djb:title_case" as="xs:string">
        <xsl:param name="input" as="xs:string"/>
        <xsl:sequence select="concat(upper-case(substring($input, 1, 1)), substring($input, 2))"/>
    </xsl:function>
    <!-- Globals and keys -->
    <xsl:variable name="lemmata" select="doc('gregory_lemmata.xml')" as="document-node()"/>
    <xsl:key name="classByLemma" match="class" use="lemma"/>
    <xsl:key name="lemmaByLemma" match="lemma" use="."/>
    <xsl:variable name="paradigms" select="doc('paradigms.xml')" as="document-node()"/>
    <xsl:key name="paradigmByExample" match="paradigm" use="@type"/>
    <!-- Templates -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Normalization output</title>
                <link rel="stylesheet" type="text/css" href="http://www.obdurodon.org/css/style.css"/>
                <style type="text/css">
                    table{
                        margin-bottom: 10px;
                    }
                    td{
                        font-family: BukyVede;
                    }</style>
            </head>
            <body>
                <h1>
                    <xsl:apply-templates select="/div/title"/>
                </h1>
                <xsl:apply-templates select="//sentence"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="sentence">
        <table>
            <!-- Placeholder pos filter; eventually process all pos -->
            <tr>
                <th>Diplomatic</th>
                <xsl:apply-templates
                    select="token[position() eq 1 or @id ne preceding-sibling::token[1]/@id]"
                    mode="original"/>
            </tr>
            <tr>
                <th>Normalized</th>
                <xsl:apply-templates
                    select="token[position() eq 1 or @id ne preceding-sibling::token[1]/@id]"/>
            </tr>
        </table>
    </xsl:template>
    <xsl:template match="token" mode="original">
        <td>
            <xsl:sequence select="xs:string(@form)"/>
        </td>
    </xsl:template>
    <xsl:template match="token">
        <xsl:variable name="morphology"
            select="
                for $i in string-to-codepoints(@morphology)
                return
                    codepoints-to-string($i)"
            as="xs:string+"/>
        <xsl:variable name="output_token" as="xs:string?">
            <!-- Remove question mark from @as (above) when complete -->
            <xsl:choose>
                <!-- Distinguish indeclinable from declinable -->
                <xsl:when test="$morphology[10] eq 'n'">
                    <!-- Do we need to add these to the lemma list for @canonic purposes? -->
                    <xsl:sequence select="@lemma"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:variable name="type" select="key('classByLemma', @lemma, $lemmata)/@type"
                        as="attribute(type)"/>
                    <xsl:variable name="paradigm"
                        select="key('paradigmByExample', $type, $paradigms)" as="element(paradigm)"/>
                    <xsl:variable name="lemma"
                        select="(key('lemmaByLemma', @lemma, $lemmata)/@canonic, @lemma)[1]"
                        as="xs:string"/>
                    <xsl:variable name="stem" as="xs:string">
                        <xsl:choose>
                            <xsl:when test="@part-of-speech eq 'Me'">
                                <!-- compound ordinal; inflect only first word -->
                                <xsl:value-of
                                    select="substring(substring-before($lemma, ' '), 1, string-length(substring-before($lemma, ' ')) - number($paradigm/@truncate))"
                                />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of
                                    select="substring($lemma, 1, string-length($lemma) - number($paradigm/@truncate))"
                                />
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:choose>
                        <!-- If declinable, distinguish pos -->
                        <xsl:when test="@part-of-speech eq 'Nb'">
                            <!-- common noun -->
                            <!--
                                relevant morphology fields are:
                                2. number (s, d, p)
                                7. case (n, a, g, d, i, l, v)
                            -->
                            <xsl:variable name="desinence"
                                select="$paradigm/form[@number eq $morphology[2] and @case = $morphology[7]]"
                                as="xs:string"/>
                            <xsl:sequence select="concat($stem, $desinence)"/>
                        </xsl:when>
                        <xsl:when test="@part-of-speech eq 'Ne'">
                            <!-- proper noun -->
                            <!--
                                relevant morphology fields are:
                                2. number (s, d, p)
                                7. case (n, a, g, d, i, l, v)
                            -->
                            <xsl:variable name="desinence"
                                select="$paradigm/form[@number eq $morphology[2] and @case = $morphology[7]]"
                                as="xs:string"/>
                            <xsl:sequence
                                select="djb:title_case(concat($stem, $desinence, ' ', substring-after($lemma, ' ')))"
                            />
                        </xsl:when>
                        <xsl:when test="@part-of-speech eq 'A-'">
                            <!-- TO DO: Include comparative and superlative; currently assuming positive (field 8) -->
                            <!-- adjective -->
                            <!--
                               relevant morphology fields are:
                               2. number (s, d, p)
                               6. gender (m, f, n)
                               7. case (n, a, g, d, i, l, v)
                               9. strength (w, s; w is long and s is short)
                            -->
                            <xsl:variable name="desinence"
                                select="
                                    $paradigm/form[@number eq $morphology[2] and @gender = $morphology[6] and @case = $morphology[7] and @strength eq $morphology[9]]"
                                as="xs:string"/>
                            <xsl:sequence select="concat($stem, $desinence)"/>
                        </xsl:when>
                        <xsl:when test="@part-of-speech eq 'Df'">
                            <!-- adverb; currently only positive degree -->
                            <!--
                                relevant morphology field is:
                                8: degree (p, c, s)
                            -->
                            <xsl:variable name="desinence"
                                select="$paradigm/form[@degree eq $morphology[8]]" as="xs:string"/>
                            <xsl:sequence select="concat($stem, $desinence)"/>
                        </xsl:when>
                        <xsl:when test="@part-of-speech eq 'V-'">
                            <!-- verb; currently only certain types -->
                            <!--
                                relevant morphology fields are:
                                1: person (1, 2, 3)
                                2: number (s, d, p)
                                3: tense (p, i, r, a, u, f)
                                4: mood (i, m, n, p, d, u)
                                5: voice (a, p)
                                6: gender (m, f, n)
                                7: case (n, a, g, d, i, l)
                                8: degree (p only; no c or s of participles)
                                9: strength (w, s)
                            -->
                            <xsl:variable name="desinence"
                                select="
                                    $paradigm/form[
                                    (@person eq $morphology[1] or not(@person)) and
                                    (@number eq $morphology[2] or not(@number)) and
                                    (@tense eq $morphology[3] or not(@tense)) and
                                    (@mood eq $morphology[4] or not(@mood)) and
                                    (@voice eq $morphology[5] or not(@voice)) and
                                    (@gender eq $morphology[6] or not(@gender)) and
                                    (@case eq $morphology[7] or not(@case)) and
                                    (@degree eq $morphology[8] or not(@degree)) and
                                    (@strength eq $morphology[9] or not(@strength))
                                    ]"
                                as="xs:string"/>
                            <xsl:sequence select="concat($stem, $desinence)"/>
                        </xsl:when>
                        <xsl:when test="@part-of-speech eq 'Mo'">
                            <!-- compound ordinal numerals -->
                            <!--
                               relevant morphology fields are:
                               2. number (s, d, p)
                               6. gender (m, f, n)
                               7. case (n, a, g, d, i, l, v)
                            -->
                            <xsl:variable name="desinence"
                                select="
                                    $paradigm/form[@number eq $morphology[2] and @gender = $morphology[6] and @case = $morphology[7]]"
                                as="xs:string"/>
                            <xsl:sequence
                                select="concat($stem, $desinence, ' ', substring-after($lemma, ' '))"
                            />
                        </xsl:when>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:if test="$output_token">
            <!-- While under development, output only pos for which rules have been created -->
            <td>
                <xsl:sequence
                    select="
                        if (not(preceding-sibling::token)) then
                            djb:title_case($output_token)
                        else
                            if (not(following-sibling::token)) then
                                concat($output_token, '.')
                            else
                                $output_token"
                />
            </td>
        </xsl:if>
    </xsl:template>
    <xsl:template
        match="token[@part-of-speech = 'V-' and not(key('lemmaByLemma', @lemma, $lemmata))]">
        <td style="color: blue;">V-</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Ma']">
        <!-- cardinal number -->
        <td style="color: blue;">Ma</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pd']">
        <!-- demonstrative pronoun -->
        <td style="color: blue;">Pd</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pp']">
        <!-- personal pronoun -->
        <td style="color: blue;">Pp</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pt']">
        <!-- possessive reflexive pronoun -->
        <td style="color: blue;">Pt</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pk']">
        <!-- personal reflexive pronnoun -->
        <td style="color: blue;">Pk</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Px']">
        <!-- indefinite pronoun -->
        <td style="color: blue;">Px</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pr']">
        <!-- relative pronoun -->
        <td style="color: blue;">Pr</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Ps']">
        <!-- possessive pronoun -->
        <td style="color: blue;">Ps</td>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pi']">
        <!-- interrogative -->
        <td style="color: blue;">Pi</td>
    </xsl:template>

</xsl:stylesheet>
