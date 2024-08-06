*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  smoke

    #Besgin web test(Common)
    Open Browser  about:blank  ff
    #Search for products
    go to    http://www.amazon.com
    Wait Until Page Contains  Your Account
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  xpath=/html/body/div[1]/div[1]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Back to results
    Click Button  id=add-to-cart-button
    Sleep  3
    Wait Until Page Contains    Added to Cart
    Wait Until Page Contains  Cart Subtotal
    Click Button  name=proceedToRetailCheckout
    Wait Until Page Contains Element  id=ap_email
    sleep     3
    Close Browser
*** Keywords ***
