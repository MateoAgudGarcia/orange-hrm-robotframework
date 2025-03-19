*** Settings ***
Documentation       This resource file contains keywords for the login functionality.

Library             SeleniumLibrary
Variables           ../Locators/Locators.py


*** Keywords ***
Login
    [Documentation]    Logs in to the application using the provided URL, username, and password.
    [Arguments]    ${url}    ${username}    ${password}
    Go To    ${url}
    Wait Until Element Is Visible    ${login_username}
    Wait Until Element Is Visible    ${login_password}
    Input Text    ${login_username}    ${username}
    Input Text    ${login_password}    ${password}
    Wait Until Element Is Enabled    ${login_submit}
    Click Element    ${login_submit}
