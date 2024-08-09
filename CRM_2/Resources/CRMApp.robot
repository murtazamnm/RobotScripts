*** Settings ***
Library    SeleniumLibrary
Resource   ./PO/TopNav.robot
Resource   ./PO/MainPage.robot
Resource   ./PO/SignInPage.robot
Resource   ./PO/CustomerPage.robot
Resource   ./PO/NewCustomer.robot

*** Keywords ***
Go To Main Page
    MainPage.Load Main Page
    MainPage.Verify Page Loaded

Load SignIn Page
    Topnav.Click SignIn
    SignInPage.Verify SignIn Loaded
    SignInPage.Enter Email Address
    SignInPage.Enter Password
    SignInPage.Click Remember
    SignInPage.Click Submit
    CustomerPage.Verify Page Loaded
Add New Customer
    CustomerPage.Click New Customer
    NewCustomer.Enter EmailAddress
    NewCustomer.Enter FirstName
    NewCustomer.Enter LastName
    NewCustomer.Enter City
    NewCustomer.Choose State
    NewCustomer.Select Gender
    NewCustomer.Check Add to Promotion
    NewCustomer.Click Submit
    NewCustomer.Verify Customer Added
Sign out
    TopNav.Click SignOut
    MainPage.Verify Signed Out
