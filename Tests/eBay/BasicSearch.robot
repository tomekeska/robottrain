*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  this testcase verify the basic search
    [Tags]  Functional

    Open Browser  https://www.ebay.com  chrome
    Input Text  //*[@id="gh-ac"]  mobile  true
    Click Element  //*[@id="gh-btn"]
    Page Should Contain  results for mobile
    Close Browser

*** Keywords ***
