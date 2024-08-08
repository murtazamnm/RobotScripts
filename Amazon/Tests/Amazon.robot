*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
# suite setup will run before and after all the test *** test cases ***
# test setup will run before and after each test case
#Suite Setup    Initialize some data
#Test Setup    Begin Web Test
#Test Teardown    End Web Test
#Suite Teardown    Cleanup some data

*** Variables ***
${BROWSER} =    firefox
${MAIN_URL} =   https://www.amazon.com
${SEARCH_TERM} =    Asus Gaming Laptop
@{MY_LIST_VARIABLE}     create list   Item 1    Item 2    Item 3
*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  smoke
    Amazon.Go To Website

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  smoke
    Go To Website
    Amazon.Search For Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout

Set List Variables
    [Documentation]  This is some basic setting of list variables
    [Tags]  testing_list
    @{my_list_variable_two}     create list    Hello    Word    !
    log    ${MY_LIST_VARIABLE[0]}
    log    ${MY_LIST_VARIABLE[1]}

    log    ${my_list_variable_two[0]}
    log    ${my_list_variable_two[1]}
    log    ${my_list_variable_two[2]}

Pass Variables
    [Documentation]  This is a test to see how to pass the variables
    [Tags]  testing_passing
    @{url_and_browser} =    set variable    https://amazon.com    ff
#    Begin Web Test      ${MAIN_URL}    edge
    Begin Web Test      @{url_and_browser}

*** Keywords ***

Begin Web Test

    [Arguments]    @{args}
#    [Arguments]    ${url}    ${browser}
    open browser    ${args[0]}    ${args[1]}
