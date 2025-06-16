# robot_s3a1_visible_enable_status
# Enhanced Login Test Case: With Visibility & Enablement Checks
# Validate that email and password input fields are visible and enabled before typing
# Validate that the Login button is visible and clickable
# Fail early if the UI is broken
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.automationexercise.com/login
${email}        testemail123@gmail.com
${password}     Test@123
${email_xpath}  //input[@data-qa='login-email']
${pass_xpath}   //input[@data-qa='login-password']
${login_xpath}  //button[@data-qa='login-button']

*** Test Cases ***
VisibleAndEnable
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Automation Exercise - Signup / Login
    Element Should Be Visible        ${email_xpath}
    Element Should Be Enabled        ${email_xpath}
    Input Text    ${email_xpath}    testemail123@gmail.com
    Element Should Be Visible        ${pass_xpath}
    Element Should Be Enabled        ${pass_xpath}
    Input Text    ${pass_xpath}    Test@123
    Element Should Be Visible        ${login_xpath}
    Element Should Be Enabled        ${login_xpath}
    Click Button                     ${login_xpath}
    Sleep    2s
    Close Browser