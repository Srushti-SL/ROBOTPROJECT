# robot_s11a1_capture_screenshot
# Scenario: Login and Capture Screenshots
# Title: Open login page, enter credentials, and capture screenshots of element and page
# Open the login page: https://www.automationexercise.com/login.
# Enter username and password in the login form.
# Capture a screenshot of the login button element.
# Capture a full-page screenshot.
# Close the browser.
# Expected Result:
# The user inputs are filled correctly.
# Screenshots are successfully saved.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.automationexercise.com/login
${BROWSER}       chrome
${EMAIL}         testemail123@gmail.com 
${PASSWORD}      Test@123

*** Test Cases ***
LoginAndCaptureScreenshots
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    xpath://input[@data-qa='login-email']    ${EMAIL}  
    Input Text    xpath://input[@data-qa="login-password"]    ${PASSWORD}
    Capture Element Screenshot    xpath://*[@id="form"]/div/div/div[1]/div/form/button    C:/Users/srushti.lokhande/PycharmProjects/RobotProject/day8_element.png
    Capture Page Screenshot    C:/Users/srushti.lokhande/PycharmProjects/RobotProject/day8_page.png
    Close Browser
