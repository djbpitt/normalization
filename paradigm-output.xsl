<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/1999/xhtml" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Sample paradigms</title>
                <link rel="stylesheet" type="text/css" href="http://www.obdurodon.org/css/style.css"/>
                <link rel="stylesheet" type="text/css" href="sample_paradigms.css"/>
                <script type="text/javascript" src="sample_paradigms.js">/**/</script>
            </head>
            <body>
                <h1>Sample paradigms</h1>
                <section>
                    <section>
                        <h2>Verbs</h2>
                        <h3>Diels I.1, stem in -<span class="ocs">д</span>- (<span class="ocs"
                                >вести</span>)</h3>
                        <section class="tables">
                            <xsl:apply-templates select="//paradigm[@type eq 'вести']"/>
                        </section>
                    </section>
                </section>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="paradigm">
        <xsl:variable name="stem"
            select="substring(@type, 1, string-length(@type) - number(@truncate))" as="xs:string"/>
        <section>
            <h3>Present</h3>
            <table>
                <tr>
                    <th>&#xa0;</th>
                    <th>Singular</th>
                    <th>Dual</th>
                    <th>Plural</th>
                </tr>
                <tr class="odd">
                    <th class="label">1st person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 's' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'd' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'p' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
                <tr>
                    <th class="label">2nd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 's' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'd' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'p' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
                <tr class="odd">
                    <th class="label">3rd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 's' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 'd' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 'p' and @tense eq 'p' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
            </table>
        </section>
        <section>
            <h3>Aorist</h3>
            <table>
                <tr>
                    <th>&#xa0;</th>
                    <th>Singular</th>
                    <th>Dual</th>
                    <th>Plural</th>
                </tr>
                <tr class="odd">
                    <th class="label">1st person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 's' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'd' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'p' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
                <tr>
                    <th class="label">2nd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 's' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'd' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'p' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
                <tr class="odd">
                    <th class="label">3rd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 's' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 'd' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 'p' and @tense eq 'a' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
            </table>
        </section>
        <section>
            <h3>Imperfect</h3>
            <table>
                <tr>
                    <th>&#xa0;</th>
                    <th>Singular</th>
                    <th>Dual</th>
                    <th>Plural</th>
                </tr>
                <tr class="odd">
                    <th class="label">1st person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 's' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'd' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'p' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
                <tr>
                    <th class="label">2nd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 's' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'd' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'p' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
                <tr class="odd">
                    <th class="label">3rd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 's' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 'd' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 'p' and @tense eq 'i' and @mood eq 'i'])"
                        />
                    </td>
                </tr>
            </table>
        </section>
        <section>
            <h3>Imperative</h3>
            <table>
                <tr>
                    <th>&#xa0;</th>
                    <th>Singular</th>
                    <th>Dual</th>
                    <th>Plural</th>
                </tr>
                <tr class="odd">
                    <th class="label">1st person</th>
                    <td>&#xa0;</td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'd' and @mood eq 'm'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '1' and @number eq 'p' and @mood eq 'm'])"
                        />
                    </td>
                </tr>
                <tr>
                    <th class="label">2nd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 's' and @mood eq 'm'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'd' and @mood eq 'm'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '2' and @number eq 'p' and @mood eq 'm'])"
                        />
                    </td>
                </tr>
                <tr class="odd">
                    <th class="label">3rd person</th>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 's' and @mood eq 'm'])"
                        />
                    </td>
                    <td>
                        <xsl:value-of
                            select="concat($stem, form[@person eq '3' and @number eq 'd' and @mood eq 'm'])"
                        />
                    </td>
                    <td>&#xa0;</td>
                </tr>
            </table>
        </section>
        <section>
            <h3>Infinitive and supine</h3>
            <table>
                <tr>
                    <th class="label">Infinitive</th>
                    <td>
                        <xsl:value-of select="concat($stem, form[@mood eq 'n'])"/>
                    </td>
                </tr>
                <tr>
                    <th class="label">Supine</th>
                    <td>
                        <xsl:value-of select="concat($stem, form[@mood eq 'u'])"/>
                    </td>
                </tr>
            </table>
        </section>
        <section>
            <h3>Participles</h3>
            <section>
                <h4>Present active</h4>
                <xsl:variable name="forms"
                    select="form[@mood eq 'p' and @voice eq 'a' and @tense eq 'p']"
                    as="element(form)+"/>
                <table>
                    <tr>
                        <th rowspan="2" colspan="2">&#xa0;</th>
                        <th colspan="3">Short form (strong</th>
                        <th colspan="3">Long form (weak)</th>
                        <th rowspan="2" colspan="2"/>
                    </tr>
                    <tr>
                        <th>Masculine</th>
                        <th>Neuter</th>
                        <th>Feminine</th>
                        <th>Masculine</th>
                        <th>Neuter</th>
                        <th>Feminine</th>
                    </tr>
                    <!-- singular -->
                    <tr>
                        <th rowspan="6" class="number">Sing</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Sing</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                    <!-- dual -->
                    <tr>
                        <th rowspan="6" class="number">Dual</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Dual</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                    <!-- plural -->
                    <tr>
                        <th rowspan="6" class="number">Plural</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Plural</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                </table>
            </section>
            <section>
                <h4>Past active</h4>
                <xsl:variable name="forms"
                    select="form[@mood eq 'p' and @voice eq 'a' and @tense eq 'u']"
                    as="element(form)+"/>
                <table>
                    <tr>
                        <th rowspan="2" colspan="2">&#xa0;</th>
                        <th colspan="3">Short form (strong</th>
                        <th colspan="3">Long form (weak)</th>
                        <th rowspan="2" colspan="2"/>
                    </tr>
                    <tr>
                        <th>Masculine</th>
                        <th>Neuter</th>
                        <th>Feminine</th>
                        <th>Masculine</th>
                        <th>Neuter</th>
                        <th>Feminine</th>
                    </tr>
                    <!-- singular -->
                    <tr>
                        <th rowspan="6" class="number">Sing</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Sing</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                    <!-- dual -->
                    <tr>
                        <th rowspan="6" class="number">Dual</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Dual</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                    <!-- plural -->
                    <tr>
                        <th rowspan="6" class="number">Plural</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Plural</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                </table>
            </section>
            <section>
                <h4>Present passive</h4>
                <xsl:variable name="forms"
                    select="form[@mood eq 'p' and @voice eq 'p' and @tense eq 'p']"
                    as="element(form)+"/>
                <table>
                    <tr>
                        <th rowspan="2" colspan="2">&#xa0;</th>
                        <th colspan="3">Short form (strong</th>
                        <th colspan="3">Long form (weak)</th>
                        <th rowspan="2" colspan="2"/>
                    </tr>
                    <tr>
                        <th>Masculine</th>
                        <th>Neuter</th>
                        <th>Feminine</th>
                        <th>Masculine</th>
                        <th>Neuter</th>
                        <th>Feminine</th>
                    </tr>
                    <!-- singular -->
                    <tr>
                        <th rowspan="6" class="number">Sing</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Sing</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 's' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                    <!-- dual -->
                    <tr>
                        <th rowspan="6" class="number">Dual</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Dual</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'd' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                    <!-- plural -->
                    <tr>
                        <th rowspan="6" class="number">Plural</th>
                        <th class="odd">N</th>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'n' and @strength eq 's'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <td class="odd">
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'n' and @strength eq 'w'])"
                            />
                        </td>
                        <th class="odd">N</th>
                        <th rowspan="6" class="number">Plural</th>
                    </tr>
                    <tr>
                        <th>A</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'a' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'a' and @strength eq 'w'])"
                            />
                        </td>
                        <th>A</th>
                    </tr>
                    <tr class="odd">
                        <th>G</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'g' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'g' and @strength eq 'w'])"
                            />
                        </td>
                        <th>G</th>
                    </tr>
                    <tr>
                        <th>L</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'l' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'l' and @strength eq 'w'])"
                            />
                        </td>
                        <th>L</th>
                    </tr>
                    <tr class="odd">
                        <th>D</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'd' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'd' and @strength eq 'w'])"
                            />
                        </td>
                        <th>D</th>
                    </tr>
                    <tr>
                        <th>I</th>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'i' and @strength eq 's'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'm' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'n' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <td>
                            <xsl:value-of
                                select="concat($stem, $forms[@gender eq 'f' and @number eq 'p' and @case eq 'i' and @strength eq 'w'])"
                            />
                        </td>
                        <th>I</th>
                    </tr>
                </table>
            </section>
        </section>
    </xsl:template>
</xsl:stylesheet>
