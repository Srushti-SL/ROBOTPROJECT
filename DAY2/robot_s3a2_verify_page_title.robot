#Ensure that the login page title is correct and the page is fully loaded
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.automationexercise.com/login

*** Test Cases ***
VerifyLoginLoad
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    # Wait Until Page Contains Element    xpath://input[@data-qa='login-email']    timeout=10s
    Title Should Be    Automation Exercise - Signup / Login
    Page Should Contain Element    xpath://input[@data-qa='login-email']
    Page Should Contain Element    xpath://input[@data-qa='login-password']
    Page Should Contain Element    xpath://button[@data-qa='login-button']
    Close Browser
