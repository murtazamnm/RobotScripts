*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =       css=#team > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1)

*** Keywords ***
Verify "Teams" Page Loaded
    wait until page contains element        ${TEAM_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =    get text    ${TEAM_HEADER_LABEL}
    should be equal as strings      ${ElementText}      Our Amazing Team     ignore_case=True
#    element text should be      ${TEAM_HEADER_LABEL}        Our Amazing Team