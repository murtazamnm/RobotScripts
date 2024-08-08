*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    go to       ${MAIN_URL}
Verfiy Page Loaded
    wait until page contains        Your Account