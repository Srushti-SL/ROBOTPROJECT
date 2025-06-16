*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}    https://www.automationexercise.com/login

*** Test Cases ***
SignUpTest
    open browser    ${url}    ${browser}
    signuptoapplication
    Close Browser

*** Keywords ***
signuptoapplication
    Input Text    xpath://input[@data-qa='signup-name']    Srushti   
    Input Text    xpath://input[@data-qa="signup-email"]    xyz123@gmail.com
    Click Button    xpath://button[@data-qa='signup-button']
