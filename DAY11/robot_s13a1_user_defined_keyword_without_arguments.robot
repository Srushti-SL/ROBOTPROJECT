# Create a Test Case for Launching the Browser using User-Defined Keyword (No Arguments)
# Test case - 
# Define a Open Browser keyword that opens a browser and navigates 
# to a https://www.automationexercise.com/
# This keyword will not require any arguments.
# Use this keyword in a test case to launch the browser.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.automationexercise.com/
${BROWSER}    chrome

*** Test Cases ***
LaunchBrowserUsingCustomKeyword
    Open Browser To AutomationExercise
    Sleep    2s
    Close Browser

*** Keywords ***
Open Browser To AutomationExercise
    Open Browser    ${URL}    ${BROWSER}        
    Maximize Browser Window