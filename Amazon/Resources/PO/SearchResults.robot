*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify Seach Completed
    wait until page contains     results for "Ferrari 458"

Click Product Link
    [Documentation]     Clicks on the first products in the search results
    click link          xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a

