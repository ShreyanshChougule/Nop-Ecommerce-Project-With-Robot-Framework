*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/AddCustomer_Objects.py

*** Keywords ***
Click_Customer
    click element    ${Customers}
    click element    ${Sub_Customers}
    Sleep    1

Data_Input
    [Arguments]    ${mail}    ${pwd}    ${f_name}    ${l_name}    ${gen}    ${dob}    ${company}    ${val}    ${val1}    ${vendor}    ${comment}
    click element    ${Add_Customers}
    Sleep    1
    input text    ${Email}    ${mail}
    input text    ${Password}    ${pwd}
    input text    ${First_Name}    ${f_name}
    input text    ${Last_Name}    ${l_name}
    Select Radio Button    ${Gender}    ${gen}
    input text    ${DOB}    ${dob}
    input text    ${Company}    ${company}
    Select Checkbox   ${IsTaxExempt}
    select from list by index   ${News_Letter}    ${val}
    select from list by index   ${Customer_Roles}    ${val1}
    select from list by index   ${VendorID}    ${vendor}
    Select Checkbox    ${Active}
    input text    ${Admin_Comment}      ${comment}


Save_Data
    click element    ${Save}

Message
    page should contain    customer has been added successfully.