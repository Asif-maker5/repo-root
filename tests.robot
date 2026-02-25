*** Settings ***
Documentation       This is basic info about the user creation test case
Library             SeleniumLibrary
Library     SSHLibrary



#run the script
#robot -d results tests/crm_create_user.robot


*** Variables ***

*** Test Cases ***
Should be able to create new Customer

    [Documentation]     User should be able to create new customer
    [Tags]               1007    Smoke   Contacts

     #Initialize Selenium
    Set selenium speed      .2s
    Set selenium timeout    10s

    log                 Starting the test cass!!!!

    Open Browser        https://automationplayground.com/crm    firefox
    Maximize Browser Window
    Sleep    3s
    Wait Until Page Contains    Sign In
    #Click Button    //a[@id='SignIn']
    Click Link    //a[@href='login.html']
    Sleep    3s
    #Wait Until Page Contains    Enter email
    Input Text    //input[@id='email-id']    asif@gmail.com
    Input Password    //input[@id='password']  password
    Click Button    //button[@id='submit-id']
    Sleep    2s
    Wait Until Page Contains    Our Happy Customers
    #Click Button    //a[@id='new-customer']
    Click Link    //a[@href='add-customer.html']
    Wait Until Page Contains    Add Customer
    Sleep    2s
    Input Text    //input[@id='EmailAddress']    asif@tutorial.com
    Input Text    //input[@id='FirstName']    asif
    Input Text    //input[@id='LastName']    ahamed
    Input Text    //input[@id='City']   Kolkata
    Click Element    //select[@id='StateOrRegion']//option[contains(text(),'California')]
    #Select From List By Value    id=StateOrRegion       TX
    Sleep    2s
    #Click Element    (//input[@type='radio'])[1]
    Select Radio Button    gender    male
    Click Element    //input[@type='checkbox']
    Sleep    3s
    Click Button    //button[@type='submit']
    Sleep    2s
    Wait Until Page Contains    Our Happy Customers
    Sleep    2s
    Close All Browsers








*** Keywords ***






