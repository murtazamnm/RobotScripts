*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Begin Web Test
    Open Browser  about:blank  ff

End Web Test
    Close Browser

Initialize Some Data
    log     starting testing....

Cleanup Some Data
    log     end testing