*** Settings ***
Documentation    Suite description
Resource  ../Resources/common.robot
Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase
Test Template  Invalid Login Scenarios

*** Test Cases ***                                       USERNAME            PASSWORD            ERROR MESSAGE
Verify Login Fails - Wrong Username                      standard_us         secret_sauce        Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Password                      standard_user       secret_sa           Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Blank Username and Password         ${EMPTY}            ${EMPTY}            Epic sadface: Username is required
Verify Login Fails - Wrong Username and Password         standard_us         secret_sa           Epic sadface: Username and password do not match any user in this service

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    input text  ${txt_username}  ${username}
    input text  ${txt_password}  ${password}
    click button  ${btn_login}
    sleep  2s
    element should contain  ${txt_error}  ${error_msg}

