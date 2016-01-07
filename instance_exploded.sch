<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:let name="lemmata" value="doc('gregory_lemmata.xml')//lemma"/>
    <sch:pattern>
        <sch:rule context="token/@lemma">
            <sch:assert test=". = $lemmata">All @lemma attributes in the document must be in the
                dictionary</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
