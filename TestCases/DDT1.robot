*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open My Browser
Suite Teardown  Close Browsers
Test Template  Invalid Login

*** Test Cases ***
Login Fails - Blank username and password       ${EMPTY}        ${EMPTY}




*** Keywords ***
Invalid Login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input password  ${password}
    click login button
    Error message should be visible

