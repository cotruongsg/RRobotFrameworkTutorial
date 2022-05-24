*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
${Login URL}    https://admin-demo.nopcommerce.com
${Browsers}     chrome

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Open My Browser
    open browser  ${Login URL}  ${Browsers}
    maximize browser window

Close Browsers
    close all browser

Open Login Page
    go to  ${Login URL}

Input username
    [Arguments]     ${username}
    input text  id:Email  ${username}

Input password
    [Arguments]     ${password}
    input text  id:Password  ${password}

Click login button
    click element  xpath://input[@class='button-1 login-button']

Click logout button
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard



