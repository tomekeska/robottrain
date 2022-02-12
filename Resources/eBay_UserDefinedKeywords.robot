*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  //*[@id="gh-ac"]  mobile  true
    Click Element  //*[@id="gh-btn"]
    Page Should Contain  results for mobile

#Filter results by condition
#    Click Element   //*[@id="nid-90R-4"]
#    Sleep   3s
#    Click Element   //*[@id="s0-14-11-5-3[1]-56[1]-11-content-menu"]/li[2]/a/svg/use
#
#Verify filter results
#    Element Should Contain  //*[@id="s0-14-11-6-3-query_answer1-answer-2-1-0-list"]/li[1]/div/a  New
