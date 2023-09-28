*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_Resources.robot

*** Test Cases ***
Home
    Open Browser    https://www.facebook.com    browser=chrome

Open Latest Chrome Browser
    [Documentation]    Open the latest version of Chrome browser
    Open Browser    about:blank    chrome   executable_path=${C:\Program Files\Python311\chromedriver.exe}   options=add_argument('--no-sandbox')   options=add_argument('--disable-dev-shm-usage')   options=add_argument('--disable-gpu')   options=add_argument('--disable-extensions')
    Maximize Browser Window
    Go To           https://www.example.com    # Replace with the URL you want to open
    [Teardown]       Close Browser
