*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/LoginPage_Objects.py

*** Keywords ***
Login_Info
    [Arguments]   ${eml}    ${pas}
    Clear Element Text    ${Email}
    Input Text    ${Email}    ${eml}
    Clear Element Text    ${Password}
    Input Text    ${Password}    ${pas}
    Click Element    ${Login}
    Sleep    1

HomePage_Title
    page should contain    Your store. Login

Dashboard_Title
    Page Should Contain    Dashboard / nopCommerce administration

Error_Message
    page should contain    Login was unsuccessful

Logout
    Click Element    ${Logout}