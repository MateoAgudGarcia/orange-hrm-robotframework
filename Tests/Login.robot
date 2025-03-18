*** Settings ***
Documentation       Page Object in Robot Framework

Library             SeleniumLibrary
Variables           ../PageObject/TestData/Testdata.py
Resource            ../PageObject/KeywordDefinitionFiles/Common.robot
Resource            ../PageObject/KeywordDefinitionFiles/Dashboard.robot
Resource            ../PageObject/KeywordDefinitionFiles/Login.robot


*** Variables ***
${site_url}     https://opensource-demo.orangehrmlive.com/
${homepage}     https://orangehrmlive.com/
${browser}      Chrome


*** Test Cases ***
Verify Successful Login to OrangeHRM
    [Documentation]    This test case verifies that the user is able to successfully Login and Logout to OrangeHRM using Page Object
    [Tags]    smoke
    Opening Browser    ${homepage}    ${browser}
    Login    ${site_url}    ${user_name}    ${password}
    Verify dashboard is displayed
    Close Browser
