*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  //*[@id="gh-ac"]  mobile  true
    Click Element  //*[@id="gh-btn"]
    Page Should Contain  results for mobile

Filter results by condition
    Click Element  xpath://button[contains(@data-marko,'s0-14-11-5-3[1]-56[1]-11-button')]
    Sleep   3s
    Click Element   xpath://input[contains(@data-marko,'s0-14-11-5-3[1]-56[1]-11-content-5[1]-15[1]')]

Verify filter results
    Element Should Contain  //ul[@id='s0-14-11-6-3-query_answer1-answer-2-1-0-list']  New
