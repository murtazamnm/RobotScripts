*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  smoke
    Common.Begin Web Test
    Amazon.Search For Products
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
    Common.End Web Test
