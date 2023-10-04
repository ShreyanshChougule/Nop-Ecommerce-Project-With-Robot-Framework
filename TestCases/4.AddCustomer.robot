*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Browser_Resources.robot
Resource    ../Resources/Login_Resources.robot
Resource    ../Resources/AddCustomer_Resources.robot
Suite Setup    BrowserOpen

*** Variables ***
${eml}  admin@yourstore.com
${Pas}  admin

${mail}  random.com
${pwd}  1234
${f_name}  Pandu
${l_name}  Kadam
${gen}  F
${dob}  5/15/2022
${company}  Food Lover
${val}  1
${val1}  0
${vendor}  2
${comment}  Automation Testing Fun

*** Test Cases ***
Test_AddCustomer
    Log    Test Add Customer Start
    Login_Info    ${eml}    ${pas}
    Click_Customer
    Log    Providing Valid Information
    Data_Input    ${mail}    ${pwd}    ${f_name}    ${l_name}    ${gen}    ${dob}    ${company}    ${val}    ${val1}    ${vendor}    ${comment}
#    Save_Data
    Sleep    1
    Message
    log    Data Save Successful
    log    Test Add Customer Completed