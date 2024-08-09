*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Click SignIn
    click link      ${SIGNINBTN}
Click SignOut
    click link      ${SIGNOUTBTN}
