*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Browser_Resources.robot
Resource    ../Resources/Login_Resources.robot
Library    DataDriver    ../TestData/LoginData.xlsx     sheet_name=Sheet1
Suite Setup    BrowserOpen
Suite Teardown    BrowserClose
Test Setup    Start
Test Teardown    End
Test Template    Invalid_Data_Test

*** Test Cases ***
Test_Login_DDT_Frame    ${Email}   ${Password}

*** Keywords ***
Invalid_Data_Test
    [Arguments]     ${Email}    ${Password}
    Log    Providing invalid details as :: ${Email} and ${Password}
    Login_Info    ${Email}    ${Password}
    Error_Message
    Log    Verified Error Message

Start
    log    Test Login with DDT Frame is Started

End
    log    Test Login with DDT Frame is Completd