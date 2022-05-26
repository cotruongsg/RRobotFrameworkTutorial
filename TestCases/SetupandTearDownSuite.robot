*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

Suite Setup         log to console      Open Browser
Suite Teardown      log to console      Close Browser
Test Setup          log to console      Login to application
Test Teardown       log to console      Logout from application

*** Test Cases ***
TC1 Repaid Recharge
    log to console      This is repaid test case
TC2 Postpaid Recharge
    log to console      This is post-paid test case
TC3 Search
    log to console      This is search test case
TC4 Advanced Search
    log to console      This is advanced search

*** Keywords ***
Provided precondition
    Setup system under test