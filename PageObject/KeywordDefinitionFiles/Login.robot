*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/Locators.py

*** Keywords ***
Login
    [Arguments]    ${url}    ${username}    ${password}
    Go To    ${url}
    Wait Until Element Is Visible    ${login_username}
    Wait Until Element Is Visible    ${login_password}
    Input Text    ${login_username}    ${username}
    Input Text    ${login_password}    ${password}
    Wait Until Element Is Enabled    ${login_submit}
    Click Element    ${login_submit}
