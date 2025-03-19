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
