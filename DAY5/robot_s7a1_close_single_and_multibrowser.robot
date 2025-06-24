# Open Link in Multiple Browsers and Close All
# Steps:
# Open Chrome browser and go to https://www.automationexercise.com/login.
# Open the same link in a second Chrome browser.
# Wait for a few seconds.
# Close all open browsers.
# Expected Result:
# The link opens successfully in both browsers.
# All browser windows are closed at the end.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.automationexercise.com/login
${BROWSER}  chrome

*** Test Cases ***
MultipleBrowsers
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Speed    0.5s
    Sleep    2s

    Open Browser    ${URL}    ${BROWSER}
    Sleep    3s

    Close All Browsers
