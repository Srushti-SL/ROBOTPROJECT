# Automate the handling of three types of alerts and validate behavior after interacting with them.
# Scenario 1: Alert with OK
# Steps:
# Open the URL.
# Click the "Alert with OK" tab.
# Click the button: "click the button to display an alert box:"
# Accept the alert.
# Validate alert is closed successfully.
# Expected Result:
# Alert is accepted and page remains as is (no error or exception).
# Scenario 2: Alert with OK & Cancel
# Steps:
# Similar to the first scenario: Click the "Alert with OK & Cancel" tab and trigger the alert.
# Instead of accepting it, click Cancel.
# Verify the page displays:
# "You Pressed Cancel"
# Expected Result:
# Cancel is handled properly and the confirmation message appears.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/
${BROWSER}  chrome

*** Test Cases ***

Handle Alert With OK
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[text()='Alert']    timeout=10s
    Scroll Element Into View            xpath://button[text()='Alert']
    Click Button                        xpath://button[text()='Alert']
    Alert Should Be Present
    Handle Alert                        accept
    Sleep                               1s
    Log                                 Alert with OK handled
    Close Browser

Handle Alert With OK And Cancel
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[text()='Confirm Box']    timeout=10s
    Scroll Element Into View            xpath://button[text()='Confirm Box']
    Click Button                        xpath://button[text()='Confirm Box']
    Alert Should Be Present
    Handle Alert                        dismiss
    Sleep                               1s
    Log                                 Confirm alert dismissed successfully
    Close Browser
