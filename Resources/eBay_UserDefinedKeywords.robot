*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  //*[@id="gh-ac"]  mobile  true
    Click Element  //*[@id="gh-btn"]
    Page Should Contain  results for mobile

Filter results by condition
    Click Element  xpath://button[contains(@data-marko,'11-button')]//parent::span[contains(@id,"-4")]
    Sleep   3s
    Click Element   xpath://button[contains(@data-marko,'11-button')]//parent::span[contains(@id,"-4")]//ancestor::span[@class='checkbox']/input[contains(@data-marko,'content-5[1]-15[1]')]

Verify filter results
    Element Should Contain  //ul[contains(@id,'answer-2-1-0-list')]  New
