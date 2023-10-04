*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Browser_Resources.robot
Resource    ../Resources/Login_Resources.robot
Suite Setup    BrowserOpen
Suite Teardown    BrowserClose

*** Test Cases ***
Test_HomePage
    log    Test Home Page is Started
    HomePage_Title
    Log    Home Page Title is Verifyed
    Log    Test Home Page is Completd
