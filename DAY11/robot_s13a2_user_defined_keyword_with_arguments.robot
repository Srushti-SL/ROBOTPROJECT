# Open Website and Login using User-Defined Keywords
# Test Cases -
# Define a Open Browser keyword that opens a browser and navigates 
# to a https://www.automationexercise.com/
# Define another user-defined keyword with arguments(User Login) to log in with 
# specific credentials (username and password).
# Use these keywords in the test case to automate the login process.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.automationexercise.com/
${BROWSER}      chrome
${USERNAME}     testemail123@gmail.com
${PASSWORD}     Test@123

*** Test Cases ***
OpenWebsiteAndLogin
    Open Browser To AutomationExercise
    User Login    ${USERNAME}    ${PASSWORD}
    Close Browser

*** Keywords ***
Open Browser To AutomationExercise
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

User Login
    [Arguments]    ${email}    ${password}
    Click Element     xpath=//a[@href='/login']
    Input Text        xpath=//input[@data-qa='login-email']       ${email}
    Input Text        xpath=//input[@data-qa='login-password']    ${password}
    Click Element     xpath=//button[@data-qa='login-button']
    # Wait Until Page Contains Element    xpath=//a[text()=' Logged in as ']