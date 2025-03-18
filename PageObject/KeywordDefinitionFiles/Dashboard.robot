*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/Locators.py
Variables       ../TestData/Testdata.py
Resource        ../KeywordDefinitionFiles/Common.robot


*** Keywords ***
Verify dashboard is displayed
    Wait Until Element Is Visible    ${title}
    Verify page title is correct    Dashboard    ${title}
    Element Should Not Be Visible    ${login_title}
