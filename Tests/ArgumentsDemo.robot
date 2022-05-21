*** Settings ***


*** Test Cases ***
Argument demo keyword husband
    Argument demo keyword   Tomasz  Skawiński

Argument demo keyword wife
    Argument demo keyword   Beata  Skawińska

*** Keywords ***
Argument demo keyword
    [arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}