*** Settings ***
Library    SeleniumLibrary
Library    XML
Variables    ../PageObjects/AddCustomer_Objects.py
*** Variables ***

*** Keywords ***
Click_Customer
    click element    ${Customers}
    click element    ${Sub_Customers}
    Sleep    1

Data_Input
    [Arguments]    ${mail}    ${password}    ${f_name}    ${l_name}    ${dob}    ${company}    ${val}    ${vendor}    ${comment}

    click element    ${Add_Customers}
    sleep    1

    input text    ${Email}      ${mail}
    input text    ${Password}      ${password}
    input text    ${First_Name}      ${f_name}
    input text    ${Last_Name}      ${l_name}
    Select Radio Button     ${Gender}   Female
    input text    ${DOB}      ${dob}
    input text    ${Company}      ${company}
    Select Checkbox   ${IsTaxExempt}

    input text    ${News_Letter}      ${val}

#    input text    ${VendorID}      ${vendor}
    select from list by index   ${VendorID}    ${vendor}
    Select Checkbox     ${Active}
    input text    ${Admin_Comment}      ${comment}

Save_Data
    click element    ${Save}
Message
    page should contain    customer has been added successfully.