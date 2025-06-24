# - Scenario: Fill Account and Address Information to Create Account
# Title:
# New user fills in account and address information and successfully creates an account.
# Preconditions:
# User has entered name and email and clicked "Sign Up" on the signup page.
# User is redirected to the "Enter Account Information" page.
# Steps:
# Choose a title (Mr. or Mrs.).
# Enter a password and date of birth.
# (Optional) Subscribe to newsletters or special offers.
# Fill in your personal and contact details: name, company, address, country, state, city, zip code, and mobile number.
# Click the "Create Account" button.
# Expected Result:
# Account is successfully created.
# A confirmation message (e.g., "Account Created Successfully") is displayed.
# User may be redirected to a welcome or dashboard page.

# ALSO
 
# DAY4 assignment: robot_s6a1_sleep_speed_timeout
# Please include the steps for setting Selenium speed, timeout, and adding sleep within the test flow of 
# the above scenario.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${URL}              https://www.automationexercise.com/login
${NAME}             Srushti
${EMAIL}            srushtilokhande@gmail.com
${PASSWORD}         Test@1234
${DAY}              12
${MONTH}            6
${YEAR}             2002
${FIRST_NAME}       Srushti
${LAST_NAME}        Lokhande
${COMPANY}          Pivotree
${ADDRESS1}         WeWork
${ADDRESS2}         Vaishanvi Signature 
${COUNTRY}          India
${STATE}            Karnataka
${CITY}             Bangalore
${ZIPCODE}          560001
${MOBILE}           123456789

*** Test Cases ***
FillInformation
    Set Selenium Speed    0.4s        #DAY4
    Set Selenium Timeout  10s        #DAY4
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    signuptoapplication
    Wait Until Element Is Visible    xpath://b[contains(text(),'Enter Account Information')]    
    Sleep    1s            #DAY4
    Click Element    id:id_gender1
    Input Text       id:password    ${PASSWORD}
    Select From List By Value    id:days    ${DAY}
    Select From List By Value    id:months    ${MONTH}
    Select From List By Value    id:years    ${YEAR}
    Click Element    id:newsletter
    Click Element    id:optin
    Wait Until Element Is Visible    xpath://b[contains(text(),'Address Information')]    timeout=10s
    Input Text    id:first_name    ${FIRST_NAME}
    Input Text    id:last_name    ${LAST_NAME}
    Input Text    id:company    ${COMPANY}
    Input Text    id:address1    ${ADDRESS1}
    Input Text    id:address2    ${ADDRESS2}
    Select From List By Value    id:country    ${COUNTRY}
    Input Text    id:state    ${STATE}
    Input Text    id:city    ${CITY}
    Input Text    id:zipcode    ${ZIPCODE}
    Input Text    id:mobile_number    ${MOBILE}
    Sleep    1s        #DAY4
    Click Button  xpath://button[@data-qa='create-account']
    Wait Until Page Contains    ACCOUNT CREATED!    timeout=10s
    Page Should Contain    ACCOUNT CREATED!
    Sleep    1s        #DAY4
    Close Browser

*** Keywords ***
signuptoapplication
    Input Text    xpath://input[@data-qa='signup-name']    ${NAME}   
    Input Text    xpath://input[@data-qa="signup-email"]    ${EMAIL}
    Click Button    xpath://button[@data-qa='signup-button']


    

