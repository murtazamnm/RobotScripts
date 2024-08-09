*** Settings ***
Resource            ../Resources/Common.robot
Resource            ../Resources/CRMApp.robot
Suite Setup         Common.Begin Web Test
#Test Setup          Common.Begin Web Test
#Test Teardown       Common.End Web Test
Suite Teardown      Common.End Web Test
*** Variables ***
${BROWSER} =            ff
${URL} =                https://www.automationplayground.com/crm/
${SIGNINBTN} =          xpath=//*[@id="SignIn"]
${SIGNINEMAIL} =        xpath=//*[@id="email-id"]
${SIGNINPASSWORD} =     xpath=//*[@id="password"]
${SIGNINSUBMIT} =       id=submit-id
${SIGNINREMEMBER} =     id=remember
${NEWCUSTBTN} =         xpath=//*[@id="new-customer"]
${NEWCUSTEMAIL} =       xpath=//*[@id="EmailAddress"]
${NEWCUSTFNAME} =       xpath=//*[@id="FirstName"]
${NEWCUSTLNAME} =       xpath=//*[@id="LastName"]
${NEWCUSTCITY} =        xpath=//*[@id="City"]
${NEWCUSTSTATE} =       xpath=//*[@id="StateOrRegion"]
@{NEWCUSTGENDER} =      gender    female
${NEWCUSTPROMO} =       name=promos-name
${NEWCUSTSUBMIT} =      Submit
${NEWCUSTCANCEL} =      Cancel
${SIGNOUTBTN} =         Sign Out
*** Test Cases ***
Should Be Able To Load The Login Page
    [Documentation]     Some basic main page opening test
    [Tags]              testone
    CRMApp.Go To Main Page
Should Be Able To Sign In
    [Tags]              testone
    CRMApp.Load SignIn Page
Shouble Be Able To Add a New Customer
    [Tags]              testone
    CRMApp.Add New Customer
Should Be Able to Sign Out
    [Tags]              testone
    CRMApp.Sign out