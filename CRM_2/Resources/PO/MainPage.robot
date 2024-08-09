*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load Main Page
    go to                       ${URL}
Verify Page Loaded
    wait until page contains    Customers Are Priority One
Verify Signed Out
    wait until page contains    Signed Out