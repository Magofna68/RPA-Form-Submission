*** Settings ***
Documentation       Template robot main suite.
Library     RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
# single value variables --> $
${name}    Joan
# lists --> @
@{customer1}    Deltek    ${name}    123 Street    97303    Keizer    US    5032692999    Brandon@gmail.com
@{customer2}    Best Buy    Tim    3253 River Rd    97101    Salem    USA    5039909191    Test@yahoo.com
@{customers}    @{customer1}    @{customer2}    ${customer3}    ${customer4}

# Dictionary --> &
&{customer3}    company=Yes! It Finally...    name=WORKED    address=123 Yes rd    zipcode=90192    city=Portland    country=Italy    phone=5032203350    email=ItWorked@test.com

&{customer4}    company=It happened...    name=AGAIN    address=3238 Walnut rd    zipcode=90192    city=Eugene    country=Spain    phone=5032203350    email=ItsWorking@gmail.com
*** Tasks ***
Open the website of the CRM application
    Open website
Add numerous customers to CRM system
    Add John to CRM system
Add numerous customers to CRM system
    Add Customers List to CRM system


Add numerous customers to CRM system
    Add Customers List to CRM system
    Add John to CRM system
    Add Customer3 via List
    Add Customer4 via List
    Add Customer2 to CRM system
    Add Customer1 to CRM system
    Add Tiffany to CRM system
    Add Brandon to CRM system

# Add numerous customers to CRM system
#     Add Customer2 to CRM system

# Add numerous customers to CRM system
#     Add Customer1 to CRM system

# Add numerous customers to CRM system
#     Add Brandon to CRM system
    

# Add numerous customers to CRM system
#     Add Tiffany to CRM system

# Add numerous customers to CRM system
#     Add John to CRM system

*** Keywords *** 
# functions

Open website
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

Add Customer1 to CRM system
    Input Text    company-name    ${customer1[0]}
    Input Text    company-contact    ${customer1[1]}
    Input Text    address    ${customer1[2]}
    Input Text    zipcode    ${customer1[3]}
    Input Text    city    ${customer1[4]}
    Input Text    country    ${customer1[5]}
    Input Text    telephone    ${customer1[6]}
    Input Text    email    ${customer1[7]}
    Submit Form

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

Add Customer4 via List
    @{customers}=    Create List   ${customer1}    ${customer2}    ${customer3}    ${customer4}
    Input Text    company-name    ${customers[3]['company']}
    Input Text    company-contact    ${customers[3]['name']}
    Input Text    address    ${customers[3]['address']}
    Input Text    zipcode    ${customers[3]['zipcode']}
    Input Text    city    ${customers[3]['city']}
    Input Text    country    ${customers[3]['country']}
    Input Text    telephone    ${customers[3]['phone']}
    Input Text    email    ${customers[3]['email']}
    Submit Form

Add Brandon to CRM system
    Input Text    company-name    Toms Tech Academy
    Input Text    company-contact    Brandon Magofna
    Input Text    address    4195 Filbert Available
    Input Text    zipcode    97303
    Input Text    city    Salem
    Input Text    country    USA
    Input Text    telephone    12345678
    Input Text    email    Magofna68@gmail.company
    Submit Form

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

Add Tiffany to CRM system
    Input Text    company-name    Salem Hospital
    Input Text    company-contact    Tiffany Snyder
    Input Text    address    321 Richard st.
    Input Text    zipcode    97003
    Input Text    city    Portland
    Input Text    country    USA
    Input Text    telephone    5038889100
    Input Text    email    Tiffany@gmail.company
    Submit Form
