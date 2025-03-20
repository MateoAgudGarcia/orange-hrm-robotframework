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

AddUser
    [Documentation]    Adds a new user to the system.
    OpenAddUserForm
    FillUserDetails
    SubmitUserForm

OpenAddUserForm
    [Documentation]    Opens the Add User form.
    Wait Until Element Is Visible    ${header_container}
    Wait Until Element Is Enabled    ${add_user_button}
    Click Element    ${add_user_button}
    Wait Until Element Is Visible    ${form_loader}
    Element Should Be Visible    ${form_loader}
    Wait Until Element Is Not Visible    ${form_loader}
    Wait Until Element Is Visible    ${employee_container}

FillUserDetails
    [Documentation]    Fills in the user details in the form.
    Input Text    ${first_name_input}    ${first_name}
    Input Text    ${middle_name_input}    ${middle_name}
    Input Text    ${last_name_input}    ${last_name}

SubmitUserForm
    [Documentation]    Submits the Add User form.
    Wait Until Element Is Enabled    ${submit_button}
    Click Element    ${submit_button}
    Wait Until Element Is Visible    ${success_message}
    Wait Until Element Is Visible    ${form_loader}
    Element Should Be Visible    ${success_message}
    Wait Until Element Is Not Visible    ${success_message}
    Wait Until Element Is Not Visible    ${form_loader}
    Wait Until Element Is Visible    ${employee_edit_name}
    Element Text Should Be    ${employee_edit_name}    ${first_name} ${last_name}

DeleteUser
    [Documentation]    Deletes a user from the system.
    OpenPimModule
    OpenDeleteUserForm

OpenDeleteUserForm
    [Documentation]    Opens the Delete User form.
    SearchForUser
    ConfirmAndDeleteUser

SearchForUser
    [Documentation]    Searches for the user in the table.
    Wait Until Element Is Visible    ${table_filter}
    Wait Until Element Is Visible    ${employee_name_search}
    Input Text    ${employee_name_search}    ${first_name} ${middle_name} ${last_name}
    Wait Until Element Is Enabled    ${employee_table_search_button}
    Click Element    ${employee_table_search_button}
    Wait Until Element Is Visible    ${table_loader}
    Element Should Be Visible    ${table_loader}
    Wait Until Element Is Not Visible    ${table_loader}

ConfirmAndDeleteUser
    [Documentation]    Confirms and deletes the user.
    Wait Until Element Is Enabled    ${delete_first_user}
    Click Element    ${delete_first_user}
    Wait Until Element Is Visible    ${popup_container}
    Wait Until Element Is Enabled    ${delete_popup_button}
    Click Element    ${delete_popup_button}
    Wait Until Element Is Visible    ${success_message}
    Element Should Be Visible    ${success_message}
    Wait Until Element Is Not Visible    ${success_message}
