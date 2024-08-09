*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify Page Loaded
    wait until page contains            Our Happy Customers

Click New Customer
    click link    ${NEWCUSTBTN}
