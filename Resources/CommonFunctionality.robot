*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  prod
${browser}  chrome
&{url}  st=https://www.st11.ebay.com    sit=https://www.sit.ebay.com    prod=https://www.ebay.com

*** Keywords ***
Start TestCase
    Open Browser  ${url.${env}}  ${browser}
    Maximize Browser Window
    Log     Env: ${env}, Browser: ${browser}, Url: ${url.${env}}
Finish TestCase
    Close Browser