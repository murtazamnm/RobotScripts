*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text    id=twotabsearchtextbox  Ferrari 458

Submit Search
    click button    xpath=//*[@id="nav-search-submit-button"]
