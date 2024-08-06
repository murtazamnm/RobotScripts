*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
#robot -d results .\tests\Crm.robot

*** Variables ***


*** Test Cases ***
should be able to open a browser
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts
    #Initialize Selenium

    log                     Starting the test case!
    open browser            https://automationplayground.com/crm/       ff

#    set window position    x=341 y=169
#    set window size        width=1920 height=1080
should be able to load the login page
    wait until page contains     Customers Are Priority One!
    click link              xpath=//*[@id="SignIn"]
    wait until page contains     Login

should be able to load the customer page
    input text              id=email-id       admin@nokia.com
    input text              id=password       qwerty

    click button            id=submit-id
    wait until page contains     Our Happy Customers

should be able to add a new customer
    click link              id=new-customer
    wait until page contains     Add Customer

    input text              id=EmailAddress         linku@gmail.com
    input text              id=FirstName            Firstname
    input text              id=LastName             Lastname
    input text              id=City                 New York
    select from list by value    id=StateOrRegion   TX
    Wait Until Element Is Visible    gender
    Wait Until Element Is Enabled    gender
    select radio button     gender      female
#    Click Element    xpath=//input[@name='gender' and @value='female']
    select checkbox    name=promos-name

    click button    Submit
    wait until page contains    Success! New customer added


    sleep                   5s
    close browser

*** Keywords ***
