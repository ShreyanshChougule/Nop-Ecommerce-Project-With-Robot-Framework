*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Browser_Resources.robot
Resource    ../Resources/Login_Resources.robot
Suite Setup    BrowserOpen
Suite Teardown    BrowserClose

*** Variables ***
${eml}   admin@yourstore.com
${pas}   admin

*** Test Cases ***
Test_Login
    log    Test Login Page is Started
    Login_Info    ${eml}    ${pas}
    Dashboard_Title
    log    Verified Dashboard Page Title
    Logout
    Log    Test Login Page is Completd