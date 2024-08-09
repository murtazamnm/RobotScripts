*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    log             Starting web test
    open browser    about:blank  ${BROWSER}
End Web Test
    log             Ending web test
    close browser