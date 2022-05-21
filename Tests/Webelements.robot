*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://github.com/login
${browser}  chrome

*** Test Cases ***
Autenticate in gitlab
    [Documentation]  Autenticate in gitlab with the use of id and name locators
    Start TestCase
    Provide Credentials
#    Finish TestCase

*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Provide Credentials
    Input Text  id:login_field  tomasz.skawinski@gmail.com
    Input Password  name:password  Maksiu220
    Click Element   identifier:commit
    Click Element   css::a[href="/tomekeska/robottrain"]

Finish TestCase
    Close Browser