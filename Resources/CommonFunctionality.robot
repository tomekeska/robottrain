*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  prod
&{url}  st=https://www.st11.ebay.com    sit=https://www.sit.ebay.com    prod=https://www.ebay.com

*** Keywords ***
Start TestCase
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window

Finish TestCase
    Close Browser