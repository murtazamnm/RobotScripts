*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify Added to Card
    wait until page contains    Added to Cart
    Wait Until Page Contains  Cart Subtotal

Proceed to Checkout
    Click Button  name=proceedToRetailCheckout
Verify Page Loaded
    Wait Until Page Contains Element  id=ap_email