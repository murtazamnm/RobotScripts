*** Settings ***
Documentation       Talk about what this suite does
Resource            ../Resources/Common.robot
Resource            ../Resources/FrontOfficeApp.robot
Test Setup          Common.Start Web Test
Test Teardown       Common.End Web Test

*** Variables ***
${BROWSER} =        edge
${URL} =            https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" Page
    [Documentation]     This is some documentation
    [Tags]              test1
    log                 executing test1
    FrontOfficeApp.Go to LandingPage
    FrontOfficeApp.Go To "Team" Page
    sleep               2s

"Team" page should match requirements
    [Documentation]     This is some documentation
    [Tags]              test1
    FrontOfficeApp.Go to LandingPage
    FrontOfficeApp.Go To "Team" Page
    FrontOfficeApp.Validate "Team" Page