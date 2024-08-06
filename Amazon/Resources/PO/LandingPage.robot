*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    go to       https://www.amazon.com
Verfiy Page Loaded
    wait until page contains        Your Account