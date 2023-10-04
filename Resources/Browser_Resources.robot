*** Settings ***
Library    SeleniumLibrary
Library    ../TestCases/conftest.py

*** Variables ***
${URL}  https:/admin-demo.nopcommerce.com/login
${Browser}  Chrome
#${Browser}  Edge

*** Keywords ***
BrowserOpen
    ${driver_path}=   conftest.get_driver
    open browser    ${URL}   ${Browser}   executable_path=${driver_path}
    maximize browser window
    sleep    2

BrowserClose
    sleep    2
    close browser
    close all browsers