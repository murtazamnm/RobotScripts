*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Begin Web Test
    Open Browser  about:blank  ff

End Web Test
    Close Browser