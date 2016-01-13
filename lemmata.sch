<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:let name="paradigm_entries" value="doc('paradigms.xml')//paradigm/@type"/>
    <sch:let name="indeclinables" value="('акꙑ', 'а', 'аминъ', 'како', 'без', 'ѥгда', 'аще')"/>
    <sch:pattern>
        <sch:rule context="pos/@xml:id">
            <sch:report test="count(//pos/@xml:id[. eq current()]) ne 1">The @xml:id associated with
                a pos element must be unique within the document</sch:report>
        </sch:rule>
        <sch:rule context="@type">
            <sch:report test="count(ancestor::pos/class/@type[. eq current()]) ne 1">A @type value
                on a class should not repeat within a pos</sch:report>
            <sch:assert test=". = ($paradigm_entries, $indeclinables)">A @type value should
                correspond to a @type value of a paradigm in paradigms.xml or to an indeclinable
                type.</sch:assert>
        </sch:rule>
        <sch:rule context="lemma">
            <sch:report test="string-length(normalize-space(.)) eq 0">A lemma element cannot be
                empty</sch:report>
            <sch:report test="count(ancestor::class//lemma[. eq current()]) ne 1">A lemma cannot
                occur more than once in a class</sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>
