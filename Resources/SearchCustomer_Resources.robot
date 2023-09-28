*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/SearchCustomer_Objects.py

*** Variables ***
*** Keywords ***
set_email
    [Arguments]     ${email}
    input text    ${Email}    ${email}

set_firstname
    [Arguments]     ${fname}
    Input Text    ${Firs_Name}    ${fname}

set_lastname
    [Arguments]     ${Lname}
    Input Text    ${Last_Name}    ${Lname}

click_Search
    Click Element    ${Search}