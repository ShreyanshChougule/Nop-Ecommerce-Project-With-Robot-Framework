*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/SearchCustomer_Objects.py

*** Keywords ***
set_email
    [Arguments]    ${mail_id}
    input text    ${Email}    ${mail_id}

set_firstname
    [Arguments]    ${Fname}
    Input Text    ${Firs_Name}    ${Fname}

set_lastname
    [Arguments]    ${Lname}
    Input Text    ${Last_Name}    ${Lname}

click_angle_Down
    Click Element    ${Angle_Downn}

click_search
    Click Element    ${Search}
    Sleep   1

click_sub_search
    Click Element    ${Sub_Search}
    Sleep   1

Find_Data_in_Table
    [Arguments]   ${mail_id}
    Table Column Should Contain    ${Table}    2    ${mail_id}