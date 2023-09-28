*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Resource    ../Resources/AddCustomer_Resources.robot
Suite Setup    BrowserOpen

*** Variables ***
${eml}  admin@yourstore.com
${pas}  admin
${mail}    random.com
${password}    1234
${f_name}    Pandu
${l_name}    Kadam
${dob}    01-02-2003
${company}    Food Lover
${val}    Test store 2
${vendor}    1
${comment}    Testing Fun

*** Test Cases ***
Test_AddCustomer
    Log    Test Add Customer Start
    Login_Info      ${eml}      ${pas}
    Sleep    1
    Click_Customer
    Log     Providing Valid Information
    Data_Input    ${mail}    ${password}    ${f_name}    ${l_name}    ${dob}    ${company}    ${val}    ${vendor}    ${comment}
    Save_Data
    Message