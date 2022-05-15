*** Settings ***
Documentation   Basic Search Functionality
Resource    ../../Resources/CommonFunctionality.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot


Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***


*** Test Cases ***
Verify basic search functionality books
    [Documentation]  this testcase verify the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   books
    SearchResultsPage.Verify Search Results     books

Verify basic search functionality travel
    [Documentation]  this testcase verify the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   travel
    SearchResultsPage.Verify Search Results     travel

Verify basic search functionality robot
    [Documentation]  this testcase verify the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   robot
    SearchResultsPage.Verify Search Results     robot

Verify advanced search functionality
    [Documentation]  this testcase verify the advanced search
    [Tags]  Functional

    HeaderPage.Click on Avdanced Search Link

