# -Verify Double-Click on 'Copy Text' Copies Text
# Navigate to https://testautomationpractice.blogspot.com/.
# Locate the first textbox and enter any text (e.g., "Hello World").
# Locate the Copy Text button.
# Double-click the Copy Text button.
# Expected Result: The second textbox should be automatically filled with the same text 
# from the first textbox (e.g., "Hello World").

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://testautomationpractice.blogspot.com/
${BROWSER}      chrome
${INPUT_BOX}    xpath://*[@id="field1"]
${COPY_BTN}     xpath://*[@id="HTML10"]/div[1]/button
${TEXT}         Hello World

*** Test Cases ***
VerifyDoubleClickCopiesText
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      ${INPUT_BOX}    ${TEXT}
    Double Click Element    ${COPY_BTN}
    Close Browser
