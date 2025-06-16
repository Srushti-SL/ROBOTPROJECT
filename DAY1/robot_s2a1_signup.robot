*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    open browser    https://www.automationexercise.com/login    chrome
    Input Text    xpath://input[@data-qa='login-email']    testemail123@gmail.com
    Input Text    xpath://input[@data-qa="login-password"]    Test@123
    Click Button    xpath://button[@data-qa='login-button']
    Close Browser

*** Keywords ***

