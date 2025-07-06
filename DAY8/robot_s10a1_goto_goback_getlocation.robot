# Open homepage, get current location, go to product page, and go back
# Open https://www.automationexercise.com/ in Chrome.
# Use the Get Location keyword to retrieve the current URL.
# Use the Go To keyword to navigate to the Products page.
# Wait for the Products page to load.
# Use the Go Back keyword to return to the homepage.
# Verify that you are back on the homepage.
# Close the browser.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.automationexercise.com/
${BROWSER}       chrome
${PRODUCT_URL}   https://www.automationexercise.com/products

*** Test Cases ***
NavigateToProductsAndGoBack
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${home_url}=    Get Location
    Go To           ${PRODUCT_URL}
    Wait Until Page Contains Element    xpath=//h2[text()='All Products']
    Go Back
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${home_url}
    [Teardown]    Close Browser
