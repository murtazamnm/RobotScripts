*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify Product Selected
    wait until page contains    Back to results
Add Product to Cart
    Click Button  id=add-to-cart-button
