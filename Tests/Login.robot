*** Settings ***
Documentation       This suite contains tests for verifying login functionality in OrangeHRM.

Library             SeleniumLibrary
Variables           ../PageObject/TestData/Testdata.py
Resource            ../PageObject/KeywordDefinitionFiles/Common.resource
Resource            ../PageObject/KeywordDefinitionFiles/Dashboard.resource
Resource            ../PageObject/KeywordDefinitionFiles/Login.resource


*** Variables ***
${SITE_URL}     https://opensource-demo.orangehrmlive.com/
${HOMEPAGE}     https://orangehrmlive.com/
${BROWSER}      Chrome


*** Test Cases ***
Verify Successful Login to OrangeHRM
    [Documentation]    This test case verifies that the user is able to successfully Login and Logout to OrangeHRM
    ...    using Page Object
    [Tags]    smoke
    OpeningBrowser    ${HOMEPAGE}    ${BROWSER}
    Login    ${SITE_URL}    ${user_name}    ${password}
    VerifyDashboardIsDisplayed
    Close Browser

Open PIM Module
    [Documentation]    This test case verifies that the user is able to open PIM module
    [Tags]    smoke
    OpeningBrowser    ${HOMEPAGE}    ${BROWSER}
    Login    ${SITE_URL}    ${user_name}    ${password}
    VerifyDashboardIsDisplayed
    OpenPIMModule
    Close Browser
