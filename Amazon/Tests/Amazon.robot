*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
# suite setup will run before and after all the test *** test cases ***
# test setup will run before and after each test case
Suite Setup    Initialize some data
Test Setup    Begin Web Test
Test Teardown    End Web Test
Suite Teardown    Cleanup some data

*** Variables ***

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
