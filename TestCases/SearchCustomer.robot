*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Resource    ../Resources/AddCustomer_Resources.robot
Resource    ../Resources/SearchCustomer_Resources.robot
Suite Setup    BrowserOpen

*** Variables ***
${eml}  admin@yourstore.com
${pas}  admin
${Verify_mail}  james_pan@nopCommerce.com

*** Test Cases ***
Test_SearchCustomer_By-Email

    Log    Test Search Customer Start
    Login_Info      ${eml}      ${pas}
    Sleep    1

    Click_Customer
    set_email    ${Verify_mail}
    Log     Searching Records Through Eamil as :: ${Verify_mail}
    Table Row Should Contain    locator    1    ${Verify_mail}