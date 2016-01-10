<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="paradigms" select="doc('full_paradigms.xml')" as="document-node()"/>
    <xsl:template match="/">
        <output>
            <xsl:apply-templates select="//sentence"/>
        </output>
    </xsl:template>
    <xsl:template match="sentence">
        <xsl:apply-templates select="token"/>
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Nb']">
        <!-- common noun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'R-']">
        <!-- preposition -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Ma']">
        <!-- cardinal number -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Ne']"> 
        <!-- proper noun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'A-']">
        <!-- adjective -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'V-']"> 
        <!-- verb -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'C-']">
        <!-- conjunction -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Df']"> 
        <!-- adverb -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pd']"> 
        <!-- demonstrative pronoun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pp']">
        <!-- personal pronoun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Dq']">
        <!-- relative adverb -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pt']"> 
        <!-- possessive reflexive pronoun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'G-']"> 
        <!-- subjunction -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pk']"> 
        <!-- personal reflexive pronnoun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Px']"> 
        <!-- indefinite pronoun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Du']"> 
        <!-- interrogative adverb -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pr']"> 
        <!-- relative pronoun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Ps']"> 
        <!-- possessive pronoun -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Mo']"> 
        <!-- ordinal numeral -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'I-']"> 
        <!-- interjection -->
    </xsl:template>
    <xsl:template match="token[@part-of-speech = 'Pi']"> 
        <!-- interrogative -->
    </xsl:template>
</xsl:stylesheet>
