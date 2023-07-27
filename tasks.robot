*** Settings ***
Documentation       Template robot main suite.
Library     RPA.Browser.Selenium    auto_close=${FALSE}
Library    RPA.Desktop
Library    RPA.Excel.Files
Library    RPA.Tables

# _________________________________________________________________________________
*** Variables ***
# single value variables --> $
${name}    Joan
# lists --> @
@{customer1}    Deltek    ${name}    123 Street    97303    Keizer    US    5032692999    Brandon@gmail.com
@{customer2}    Best Buy    Tim    3253 River Rd    97101    Salem    USA    5039909191    Test@yahoo.com
@{customers}    @{customer1}    @{customer2}    ${customer3}    ${customer4}

# Dictionary --> &
&{customer3}    company=Yes!     name=WORKED    address=123 Yes rd    zipcode=90192    city=Portland    country=Italy    phone=5032203350    email=ItWorked@test.com

&{customer4}    company=It happened...    name=AGAIN    address=3238 Walnut rd    zipcode=90192    city=Eugene    country=Spain    phone=5032203350    email=ItsWorking@gmail.com

# ____________________________________________________________________________________
*** Tasks ***
# Description
#     command

Open the website of the CRM application
    Open website

Add numerous customers to CRM system
    Add John to CRM system
Add numerous customers to CRM system
    Add Customers List to CRM system

Read companies from Excel and add to website
    Fill the form using the data from Excel File

# Add numerous customers to CRM system
#     Add Customers List to CRM system
#     Add John to CRM system
#     Add Customer3 via List
#     Add Customer4 via List
#     Add Customer2 to CRM system
#     Add Customer1 to CRM system
#     Add Tiffany to CRM system
#     Add Brandon to CRM system

# Add numerous customers to CRM system
#     Add Customer2 to CRM system

# Add numerous customers to CRM system
#     Add Customer1 to CRM system

# ____________________________________________________________________________________
*** Keywords *** 
# functions

Open website
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

# Add Customer1 to CRM system
#     Input Text    company-name    ${customer1[0]}
#     Input Text    company-contact    ${customer1[1]}
#     Input Text    address    ${customer1[2]}
#     Input Text    zipcode    ${customer1[3]}
#     Input Text    city    ${customer1[4]}
#     Input Text    country    ${customer1[5]}
#     Input Text    telephone    ${customer1[6]}
#     Input Text    email    ${customer1[7]}
#     Submit Form

Add Customer2 to CRM system
    Input Text    company-name    ${customer2}[0]
    Input Text    company-contact    ${customer2}[1]
    Input Text    address    ${customer2}[2]
    Input Text    zipcode    ${customer2}[3]
    Input Text    city    ${customer2}[4]
    Input Text    country    ${customer2}[5]
    Input Text    telephone    ${customer2}[6]
    Input Text    email    ${customer2}[7]
    Submit Form

Add Customers List to CRM system
    Input Text    company-name    ${customer3}[company] 
    Input Text    company-contact    ${customer3}[name]
    Input Text    address    ${customer3}[address]
    Input Text    zipcode    ${customer3}[zipcode]
    Input Text    city    ${customer3}[city]
    Input Text    country    ${customer3}[country]
    Input Text    telephone    ${customer3}[phone]
    Input Text    email    ${customer3}[email]
    Submit Form

Add Customer3 via List
    @{customers}=    Create List   ${customer1}    ${customer2}    ${customer3}    ${customer4}
    Input Text    company-name    ${customers[2]['company']}
    Input Text    company-contact    ${customers[2]['name']}
    Input Text    address    ${customers[2]['address']}
    Input Text    zipcode    ${customers[2]['zipcode']}
    Input Text    city    ${customers[2]['city']}
    Input Text    country    ${customers[2]['country']}
    Input Text    telephone    ${customers[2]['phone']}
    Input Text    email    ${customers[2]['email']}
    Submit Form

# Add Customer4 via List
#     @{customers}=    Create List   ${customer1}    ${customer2}    ${customer3}    ${customer4}
#     Input Text    company-name    ${customers[3]['company']}
#     Input Text    company-contact    ${customers[3]['name']}
#     Input Text    address    ${customers[3]['address']}
#     Input Text    zipcode    ${customers[3]['zipcode']}
#     Input Text    city    ${customers[3]['city']}
#     Input Text    country    ${customers[3]['country']}
#     Input Text    telephone    ${customers[3]['phone']}
#     Input Text    email    ${customers[3]['email']}
#     Submit Form

Add Customers List from Spreadsheet
    [Arguments]    ${company}
    Input Text    company-name    ${company}[Company]
    Input Text    company-contact    ${company}[Contact]
    Input Text    address    ${company}[Address]
    Input Text    zipcode    ${company}[Zipcode]
    Input Text    city    ${company}[City]
    Input Text    country    ${company}[Country]
    Input Text    telephone    ${company}[Phone]
    Input Text    email    ${company}[email]
    Submit Form


Fill the form using the data from Excel File
    Open Workbook    /Users/magofna68/Desktop/RoboCorp2.xls
    ${companies}    Read Worksheet As Table    header=True
    Close Workbook

    FOR    ${company}    IN    @{companies}
        Add Customers List from Spreadsheet    ${company}
    END


Add John to CRM system
    Input Text    company-name    Deltek
    Input Text    company-contact    John Mike
    Input Text    address    123 Street ave
    Input Text    zipcode    93733
    Input Text    city    Keizer
    Input Text    country    US
    Input Text    telephone    5032294945
    Input Text    email    John@gmail.company
    Submit Form

