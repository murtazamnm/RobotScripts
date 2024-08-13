*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${MAINPAGE_NAV_ELEMENT} =   id=mainNav

*** Keywords ***
Go to MainPage
    go to    ${URL}
Verify Page Loaded
    wait until page contains element        ${MAINPAGE_NAV_ELEMENT}
