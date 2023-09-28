*** Settings ***
Library    SeleniumLibrary
Resource    ..//Resources//Login_Resources.robot
Library    DataDriver    ../TestData/LoginData.xlsx     sheet_name=Sheet1
Suite Setup    BrowserOpen
Suite Teardown    BrowserClose
#Test Template    Invalid_Data

*** Variables ***
${eml}    admin@yourstore.com
${pas}    admin

*** Test Cases ***
Test_Login
    log    Test Login Page is Started
    Login_Info    ${eml}    ${pas}
    Dashboard_Title
    log    Verified Login Page Title
    Logout
    Log    Test Login Page is Completd

Test_Login_DDT_Frame    ${Email}    ${Passpword}
    log    Test Login with DDT Frame is Started

*** Keywords ***
Invalid_Data
    [Arguments]     ${Email}    ${Passpword}
    Log    Providing invalid details as :: ${Email} and ${Passpword}
    Login_Info    ${Email}    ${Passpword}
    Error_Message
    Log    Verified Page Title
    log    Test Login with DDT Frame is Completd

