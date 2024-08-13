*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK} =       xpath=//a[@class='page-scroll' and @href='#team']

*** Keywords ***

Click "Teams" Link
    click element    ${TOPNAV_TEAM_LINK}