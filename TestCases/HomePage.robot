*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Suite Setup    BrowserOpen
Suite Teardown    BrowserClose
*** Variables ***

*** Test Cases ***
Test_HomePage
    log    Test Home Page is Started
    HomePage_Title
    log    Verified Home Page Title
    Log    Test Home Page is Completd
