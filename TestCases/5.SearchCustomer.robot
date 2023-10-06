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

${Fname}    Hari
${Lname}    Babu

*** Test Cases ***
#Test_SearchCustomer_By_Email
#    Log    Test Search Customer By Email is Start
#    Login_Info    ${eml}    ${pas}
#    Log    Loged In
#    Click_Customer
#    click_search
#
#    set_email    ${mail_id}
#    click_sub_search
#    Log     Searching Records Through Eamil by Given Data :: ${mail_id}
#    Sleep   1
#    Find_Data_in_Table    ${mail_id}
#    log     Giver Record Found in

Test_SearchCustomer_By_Name
    Log    Test Search Customer By Name is Start
    Login_Info    ${eml}    ${pas}
    Log    Loged In
    Click_Customer
#    click_angle_Down
#    click_search

    set_firstname   ${Fname}
    set_lastname    ${Lname}
    click_sub_search
    Log     Searching Records Through Name by Given Data :: ${Fname   and   Lname}
    Sleep   1
    log     Giver Record Found in