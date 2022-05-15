*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  mobile
#@{search_text}  mobile  travel  robot  phone
#&{search_text}  wojtek=books    beata=travel    andrzej=games

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  //*[@id="gh-ac"]  ${search_text}  true
    Click Element  //*[@id="gh-btn"]

Click on Avdanced Search Link
    Click Element   css:a#gh-as-a