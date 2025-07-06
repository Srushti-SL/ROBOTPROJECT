# Verify Element Can Be Dragged and Dropped Successfully
# Navigate to https://testautomationpractice.blogspot.com/.
# Locate the draggable box labeled "Drag me to my Target".
# Click and hold the draggable box.
# Drag it over the drop target area.
# Release the mouse to drop.
# Expected Result: The box should be dropped inside the target area, and a success message 
# should be displayed or visual confirmation 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://testautomationpractice.blogspot.com/
${BROWSER}      chrome
${DRAG}    xpath://*[@id="draggable"]/p
${DROP}    xpath://*[@id="droppable"]

*** Test Cases ***
DragAndDrop
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Drag And Drop    ${DRAG}    ${DROP}        
    Sleep    3s
    Close Browser
