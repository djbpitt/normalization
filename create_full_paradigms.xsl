<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <!-- saxon -s:gregory_lemmata.xml -xsl:create_full_paradigms.xsl -o:full_paradigms.xml -->
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="paradigms" select="doc('paradigms.xml')" as="document-node()"/>
    <xsl:key name="paradigm_by_type" match="paradigm" use="@type"/>
    <xsl:template match="/">
        <lexemes>
            <xsl:for-each select="//lemma">
                <xsl:choose>
                    <xsl:when
                        test="ancestor::pos/@xml:id = ('adverb', 'conjunction', 'interjection', 'interrogative_adverb', 'preposition', 'relative_adverb', 'subjunction')">
                        <lexeme>
                            <form>
                                <xsl:apply-templates select="."/>
                            </form>
                        </lexeme>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:variable name="paradigm"
                            select="key('paradigm_by_type', ../@type, $paradigms)"
                            as="element(paradigm)"/>
                        <xsl:variable name="stem"
                            select="substring(., 1, (string-length(.) - number($paradigm/@truncate)))"/>
                        <lexeme>
                            <xsl:for-each select="$paradigm/form">
                                <form>
                                    <xsl:copy-of select="@*"/>
                                    <xsl:sequence select="concat($stem, .)"/>
                                </form>
                            </xsl:for-each>
                        </lexeme>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </lexemes>
    </xsl:template>
</xsl:stylesheet>
