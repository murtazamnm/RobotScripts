*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_EMAIL} =     id=ap_email

*** Keywords ***

Verify Added to Card
    wait until page contains    Added to Cart
    Wait Until Page Contains  Cart Subtotal

Proceed to Checkout
    Click Button  name=proceedToRetailCheckout
Verify Page Loaded
    Wait Until Page Contains Element  ${SIGNIN_MAIN_EMAIL}