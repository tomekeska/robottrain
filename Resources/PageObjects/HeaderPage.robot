*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  mobile
#@{search_text}  mobile  travel  robot  phone
&{search_text}  wojtek=books    beata=travel    andrzej=games
*** Keywords ***
Input Search Text and Click Search
    Input Text  //*[@id="gh-ac"]  ${search_text.beata}  true
    Click Element  //*[@id="gh-btn"]

Click on Avdanced Search Link
    Click Element   css:a#gh-as-a