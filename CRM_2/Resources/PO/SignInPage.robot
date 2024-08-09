*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify SignIn Loaded
    wait until page contains    Login
Enter Email Address
    input text                  ${SIGNINEMAIL}      anything@anything.com
Enter Password
    input password              ${SIGNINPASSWORD}   anything
Click Remember
    select checkbox             ${SIGNINREMEMBER}
Click Submit
    click Button                ${SIGNINSUBMIT}