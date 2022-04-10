*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  mobile

*** Keywords ***
Input Search Text and Click Search
    Input Text  //*[@id="gh-ac"]  ${search_text}  true
    Click Element  //*[@id="gh-btn"]

Click on Avdanced Search Link
    Click Element   css:a#gh-as-a