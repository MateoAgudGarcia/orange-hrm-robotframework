*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/Locators.py
Variables       ../TestData/Testdata.py


*** Keywords ***
Verify page title is correct
    [Arguments]    ${expected_title}    ${locator}
    ${actual_title}=    Get Text    ${locator}
    Should Be Equal    ${actual_title}    ${expected_title}

Logout
    Wait Until Element Is Enabled    ${user_dropdown}    timeout=5s
    Click Element    ${user_dropdown}
    Wait Until Element Is Visible    ${logout_button}    timeout=5s
    Wait Until Element Is Enabled    ${logout_button}    timeout=5s
    Click Element    ${user_dropdown}
    Element Should Be Visible    ${login_title}

*** Keywords ***
Opening Browser
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
