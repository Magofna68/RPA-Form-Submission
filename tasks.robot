*** Settings ***
Documentation       Template robot main suite.
Library     RPA.Browser.Selenium    auto_close=${FALSE}

*** Tasks ***
Open the website of the CRM application
    Open website

Add numerous customers to CRM system
    Add Brandon to CRM system
    
Add numerous customers to CRM system
    Add John to CRM system

Add numerous customers to CRM system
    Add Tiffany to CRM system
Add numerous customers to CRM system
    Add John to CRM system

*** Keywords *** 
# functions

Open website
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

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
    Input Text    id=company-name    Deltek
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
