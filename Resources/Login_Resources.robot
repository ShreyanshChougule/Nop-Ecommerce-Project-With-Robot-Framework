*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginPage_Objects.py

*** Variables ***
${URL}  https:/admin-demo.nopcommerce.com/login
${Browser}  Edge

*** Keywords ***
BrowserOpen
    open browser    ${Browser}      ${URL}
    maximize browser window
    sleep    2

Login_Info
    [Arguments]   ${email}    ${pa}
    input text  ${Email}  ${email}
    input text  ${Password}   ${pa}
    click element  ${Login}

HomePage_Title
    page should contain    Your store. Login

Dashboard_Title
    Page Should Contain    Dashboard / nopCommerce administration

Error_Message
    page should contain    Login was unsuccessful

Logout
    click element    ${Logout}

BrowserClose
    sleep    2
    close browser
    close all browsers
