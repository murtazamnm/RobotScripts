*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Initialize Some Data
    log     starting testing....

Cleanup Some Data
    log     end testing