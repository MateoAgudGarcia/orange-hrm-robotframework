*** Settings ***
Documentation       This resource file contains keywords for verifying the Dashboard page.

Library             SeleniumLibrary
Variables           ../Locators/Locators.py
Variables           ../TestData/Testdata.py
Resource            ../KeywordDefinitionFiles/Common.resource


*** Keywords ***
VerifyDashboardIsDisplayed
    [Documentation]    Verifies that the dashboard page is displayed correctly.
    Wait Until Element Is Visible    ${title}
    VerifyPageTitleIsCorrect    Dashboard    ${title}
    Element Should Not Be Visible    ${login_title}

OpenPimModule
    [Documentation]    Opens the PIM module by clicking on the corresponding element.
    Wait Until Element Is Enabled    ${view_pim_module}
    Click Element    ${view_pim_module}
