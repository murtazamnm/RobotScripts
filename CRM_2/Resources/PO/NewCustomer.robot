*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Verify Page Loaded
    wait until page contains                        Add Customer
Enter EmailAddress
    input text    ${NEWCUSTEMAIL}                   anythin@anything.com
Enter FirstName
    input text    ${NEWCUSTFNAME}                   John
Enter LastName
    input text    ${NEWCUSTLNAME}                   Doe
Enter City
    input text    ${NEWCUSTCITY}                    Alabama
Choose State
    select from list by value    ${NEWCUSTSTATE}    AL
Select Gender
    select radio button    ${NEWCUSTGENDER[0]}    ${NEWCUSTGENDER[1]}
Check Add to Promotion
    click element    ${NEWCUSTPROMO}
Click Submit
    click button    ${NEWCUSTSUBMIT}
Click Cancel
    click button    ${NEWCUSTCANCEL}
Verify Customer Added
    wait until page contains    Success! New customer added