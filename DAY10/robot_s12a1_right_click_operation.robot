# robot_s12a1_right_click_operation
# -Verify Right-Click Triggers Context Menu
# Preconditions: Browser is open and user is on the target page.
# Steps:
# Navigate to https://practice.expandtesting.com/context-menu.
# Locate the box with the text "Right-click in the box".
# Right-click inside the box.
# Expected Result:
# A browser alert (popup) should appear with the message: “You selected a context menu”.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://practice.expandtesting.com/context-menu
${BROWSER}    chrome
${BOX}        id=hot-spot

*** Test Cases ***
RightClickTriggersContextMenu
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Open Context Menu    ${BOX}
    Alert Should Be Present    You selected a context menu
    Handle Alert

    Close Browser
