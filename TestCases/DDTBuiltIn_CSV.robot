*** Settings ***
Documentation    Suite description
Resource  ../Resources/common.robot
Library  DataDriver  ../TestData/LoginData.csv
Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase
Test Template  Invalid Login Scenarios

*** Test Cases ***
VerifyLoginbyUsingCSV using ${username} and ${password} then verify error displays: ${error_msg}


*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    input text  ${txt_username}  ${username}
    input text  ${txt_password}  ${password}
    click button  ${btn_login}
    sleep  2s
    element should contain  ${txt_error}  ${error_msg}
