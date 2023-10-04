*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Browser_Resources.robot
Resource    ../Resources/Login_Resources.robot
Resource    ../Resources/AddCustomer_Resources.robot
Resource    ../Resources/SearchCustomer_Resources.robot
Suite Setup    BrowserOpen


*** Variables ***
${eml}  admin@yourstore.com
${Pas}  admin
${mail_id}  james_pan@nopCommerce.com

*** Test Cases ***
Test_SearchCustomer_By_Email
    Log    Test Search Customer Start
    Login_Info    ${eml}    ${pas}
    Log    Loged In
    Click_Customer

    set_email    ${mail_id}
    click_search
    Log     Searching Records Through Eamil by Given Data :: ${mail_id}
    Sleep   1
    Find_Data_in_Table    ${mail_id}
    log     Giver Record Found in Database