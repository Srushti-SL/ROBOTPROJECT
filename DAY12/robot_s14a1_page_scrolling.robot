# Scenario: Login and Scroll to Element Using JavaScript
# Title: Open login page, enter credentials, and scroll to element using JavaScript
# Open https://www.automationexercise.com/login in Chrome.
# Enter your username and password in the login form.
# Use JavaScript Executor to scroll down to the bottom of the page to view the last product or section.
# Wait for a couple of seconds.
# Close the browser.
# Expected Result
# The login form is filled out correctly.
# The page scrolls smoothly to the bottom using JavaScript, revealing the last product or section.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.automationexercise.com/login
${BROWSER}     chrome
${USERNAME}     testemail123@gmail.com
${PASSWORD}     Test@123

*** Test Cases ***
LoginAndScrollWithJavaScript
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      xpath://input[@data-qa='login-email']       ${USERNAME}
    Input Text      xpath://input[@data-qa='login-password']    ${PASSWORD}
    Click Button    xpath://button[@data-qa='login-button']
    Sleep           2s    # Optional: allow login to complete
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
    Sleep           3s    # Wait to view the scrolled section
    Close Browser
