*** Settings ***
Resource    ./PO/MainPage.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Team.robot

*** Keywords ***
Go to LandingPage
    MainPage.Go to MainPage
    MainPage.Verify Page Loaded
Go To "Team" Page
    TopNav.Click "Teams" Link
    Team.Verify "Teams" Page Loaded
Validate "Team" Page
    Team.Validate Page Contents