*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  this testcase verify the basic search
    [Tags]  Functional

    Start TestCase

    Verify Search Results

    Stop TestCase

*** Keywords ***

Start TestCase
    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  //*[@id="gh-ac"]  mobile  true
    Click Element  //*[@id="gh-btn"]
    Page Should Contain  results for mobile

Stop TestCase
    Close Browser