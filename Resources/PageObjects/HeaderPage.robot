*** Settings ***
Library  SeleniumLibrary
Variables   ../Webelements.py

*** Variables ***


*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text    ${HomePageSearchTextBox}  ${search_text}  true
    Click Element  ${HomePageSearchTextButton}

Click on Avdanced Search Link
    Click Element   ${HomePageAdvancedSearchLink}