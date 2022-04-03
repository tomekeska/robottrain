*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Input Search Text and Click Search
    Input Text  //*[@id="gh-ac"]  mobile  true
    Click Element  //*[@id="gh-btn"]

Click on Avdanced Search Link
    Click Element   css:a#gh-as-a