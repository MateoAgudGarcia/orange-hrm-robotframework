def build_selector(selector_type: str, locator: str, parent: str = None) -> str:
    """
    Build a selector string based on the given selector type and locator.
    Args:
        selector_type (str): The type of the selector.
        locator (str): The locator for the element.
        parent (str): The parent element selector.
    Returns:
        str: The built selector string.
    """
    valid_selector_types = [
        "css",
        "xpath",
        "id",
        "name",
        "identifier",
        "class",
        "tag",
        "dom",
        "link",
        "partial link",
    ]

    if selector_type not in valid_selector_types:
        raise ValueError(
            f"Invalid selector type. Supported types are: {', '.join(valid_selector_types)}."
        )

    selector: str = None

    if parent is not None:
        selector = f"{parent} >> {selector_type}:{locator}"
    else:
        selector = f"{selector_type}:{locator}"

    return selector


# Login page selector
login_title = build_selector("css", "h5.orangehrm-login-title")
login_username = build_selector("css", "input[name='username']")
login_password = build_selector("css", "input[name='password']")
login_submit = build_selector("css", "button.orangehrm-login-button")

# Top header selector
title = build_selector("css", "div.oxd-topbar-header-title h6")
user_dropdown = build_selector("css", "li.oxd-userdropdown")
logout_button = build_selector("css", "a[role='menuitem'][href$='logout']")

# Side panel selector
side_panel_header = build_selector("css", "div.oxd-sidepanel-header")
side_panel_body = build_selector("css", "div.oxd-sidepanel-body")
view_pim_module = build_selector("css", "a[href$='viewPimModule']", side_panel_body)
view_admin_module = build_selector("css", "a[href$='viewAdminModule']", side_panel_body)

# Layout context
hrm_layout_context = build_selector("css", "div.oxd-layout-context")
table_filter = build_selector("css", "div.oxd-table-filter", hrm_layout_context)
header_container = build_selector(
    "css", "div.orangehrm-header-container", hrm_layout_context
)
content_container = build_selector("css", "div.orangehrm-container", hrm_layout_context)
table_loader = build_selector("css", "div.oxd-table-loader", content_container)
delete_first_user = build_selector(
    "css", "div.oxd-table-card button:nth-of-type(2)", content_container
)
bottom_container = build_selector(
    "css", "div.orangehrm-bottom-container", hrm_layout_context
)
hrm_footer = build_selector("css", "div.oxd-layout-footer")
form_loader = build_selector("css", "div.oxd-form-loader", hrm_layout_context)

# PIM module
add_user_button = build_selector("css", "button.oxd-button", header_container)
employee_name_search = build_selector(
    "css",
    ".oxd-grid-item:nth-of-type(1) input[placeholder='Type for hints...']",
    table_filter,
)
employee_table_search_button = build_selector(
    "css", "button[type='submit']", table_filter
)
employee_container = build_selector(
    "css", "div.orangehrm-employee-container", hrm_layout_context
)
first_name_input = build_selector("name", "firstName", employee_container)
middle_name_input = build_selector("name", "middleName", employee_container)
last_name_input = build_selector("name", "lastName", employee_container)
submit_button = build_selector("css", "button[type='submit']", hrm_layout_context)
employee_edit_name = build_selector("css", "div.orangehrm-edit-employee-name > h6")

# Alerts
success_message = build_selector("css", "div.oxd-toast--success")

# Delete user popup
popup_container = build_selector("css", "div.orangehrm-dialog-popup")
cancel_popup_button = build_selector("css", "button.oxd-button--ghost", popup_container)
delete_popup_button = build_selector(
    "css", "button.oxd-button--label-danger", popup_container
)
