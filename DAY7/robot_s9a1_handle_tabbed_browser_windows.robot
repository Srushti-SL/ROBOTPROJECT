# Scenario: Handle Tabbed Browser Windows
# Steps to Automate:
# Open the website: https://demo.automationtesting.in/Windows.html
# Click the "click" button under "Open New Seperate Windows"
# Switch to the new window
# Validate that the title of the new window contains "Selenium"
# Switch back to the original window
# Validate original window title contains "Frames & windows" or "Windows"

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://demo.automationtesting.in/Windows.html
${BROWSER}  chrome

*** Test Cases ***
HandleTabbedBrowserWindow
    # Open Browser    {$URL}    {$BROWSER}
    # Maximize Browser Window
    # Click Button    xpath://button[text()=' click ']
    # Wait Until Element Is Visible    xpath://h2[text()='Getting Started']
    # Switch Window    title=Selenium logo green
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    # Click Element   xpath=//a[text()='Open New Seperate Windows']
    Click Button    xpath://button[@class='btn btn-info']
    Sleep    3s                              # Give time for new window to open
    Switch Window   index=1
    ${new_title}=   Get Title
    Should Contain  ${new_title}    Selenium
    Close Window
    Switch Window   index=0
    ${original_title}=   Get Title
    Should Contain  ${original_title}    Windows
    [Teardown]    Close All Browsers