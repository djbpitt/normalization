<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <sch:rule context="form[ancestor::pos/@type eq 'Nb']">
            <sch:assert test="@case and @number and count(@*) eq 2">Forms of common nouns must
                specify case, number, and no other morphological categories</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'A-']">
            <sch:assert test="@case and @number and @gender and @strength and count(@*) eq 4">Forms
                of adjectives must specify gender, number, case, strength, and no other
                morphological categories</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'Df']">
            <sch:assert test="@degree and count(@*) eq 1">Forms of adverbs must specify degree and
                no other morphological categories</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'Ne']">
            <sch:assert test="@case and @number and count(@*) eq 2">Forms of proper nouns must
                specify case, number, and no other morphological categories</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Verbs</sch:title>
        <sch:rule context="paradigm[ancestor::pos/@type eq 'V-']">
            <sch:assert test="count(form[@mood eq 'i' and @tense eq 'p']) eq 9">There must be nine
                present forms</sch:assert>
            <sch:assert test="count(form[@mood eq 'i' and @tense eq 'i']) eq 9">There must be nine
                imperfect forms</sch:assert>
            <sch:assert test="count(form[@mood eq 'i' and @tense eq 'a']) eq 9">There must be nine
                aorist forms</sch:assert>
            <sch:assert test="count(form[@mood eq 'm']) eq 7">There must be seven imperative
                forms</sch:assert>
            <sch:assert test="count(form[@mood eq 'p' and @tense eq 'p' and @voice eq 'a']) eq 108"
                >There must be 108 present active participle forms</sch:assert>
            <!--<sch:assert test="count(form[@mood eq 'p' and @tense eq 'u' and @voice eq 'a']) eq 108"
                >There must be 108 past active participle forms</sch:assert>-->
            <sch:assert
                test="count(form[@mood eq 'p' and @tense eq 'p' and @voice eq 'p']) = (0, 108)">If
                there are any present passive participle forms, there must be 108 of
                them</sch:assert>
            <sch:assert
                test="count(form[@mood eq 'p' and @tense eq 'u' and @voice eq 'p']) = (0, 108)">If
                there are any past passive participle forms, there must be 108 of them</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'V-' and @mood eq 'i' and @tense eq 'p']">
            <!-- Present indicative -->
            <sch:assert test="@person and @number and count(@*) eq 4">Present forms must specify
                person, number, and no other morphological categories</sch:assert>
            <sch:assert
                test="count(../form[@mood eq 'i' and @tense eq 'p' and @person eq current()/@person and @number eq current()/@number]) eq 1"
                >No two present forms can have identical category values</sch:assert>
            <sch:assert test="string-length(normalize-space(.)) gt 0">Forms cannot be
                empty</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'V-' and @mood eq 'i' and @tense eq 'a']">
            <!-- Aorist -->
            <sch:assert test="@person and @number and count(@*) eq 4">Aorist forms must specify
                person, number, and no other morphological categories</sch:assert>
            <sch:assert
                test="count(../form[@mood eq 'i' and @tense eq 'a' and @person eq current()/@person and @number eq current()/@number]) eq 1"
                >No two aorist forms can have identical category values</sch:assert>
            <sch:assert test="string-length(normalize-space(.)) gt 0">Forms cannot be
                empty</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'V-' and @mood eq 'i' and @tense eq 'i']">
            <!-- Imperfect -->
            <sch:assert test="@person and @number and count(@*) eq 4">Imperfect forms must specify
                person, number, and no other morphological categories</sch:assert>
            <sch:assert
                test="count(../form[@mood eq 'i' and @tense eq 'i' and @person eq current()/@person and @number eq current()/@number]) eq 1"
                >No two imperfect forms can have identical category values</sch:assert>
            <sch:assert test="string-length(normalize-space(.)) gt 0">Forms cannot be
                empty</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'V-' and @mood eq 'n']">
            <!-- Infinitive -->
            <sch:assert test="count(@*) eq 1">The infinitive must specify no morphological
                categories other than mood</sch:assert>
            <sch:assert test="string-length(normalize-space(.)) gt 0">Forms cannot be
                empty</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'V-' and @mood eq 'u']">
            <!-- Supine -->
            <sch:assert test="count(@*) eq 1">The supine must specify no morphological categories
                other than mood</sch:assert>
            <sch:assert test="string-length(normalize-space(.)) gt 0">Forms cannot be
                empty</sch:assert>
        </sch:rule>
        <sch:rule context="form[ancestor::pos/@type eq 'V-' and @mood eq 'p']">
            <!-- Participles -->
            <sch:assert
                test="@number and @tense and @voice and @gender and @case and @strength and count(@*) eq 7"
                >Participles must specify tense and voice; case, number, and gender; and strength;
                and no other morphological categories</sch:assert>
            <sch:assert
                test="count(../form[@mood eq 'p' and @tense eq current()/@tense and @voice eq current()/@voice and @gender eq current()/@gender and @case eq current()/@case and @number eq current()/@number and @strength eq current()/@strength]) eq 1"
                >No two participial forms can have identical category values</sch:assert>
            <sch:assert test="string-length(normalize-space(.)) gt 0">Forms cannot be
                empty</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
