*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start Web Test
    log     beginning web test
    open browser    auto:blank      ${BROWSER}
    maximize browser window
End Web Test
    log    ending web test
    close browser