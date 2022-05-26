*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Suite Setup         log to console      Open Browser
Suite Teardown      log to console      Close Browser

*** Test Cases ***
TC1 Create User
    [Tags]      regression
    log to console      Creating a new user
    log to console      User is created
TC2 Login by new user
    [Tags]       sanity
    log to console      Start login by new user
    log to console      New user is already login
TC3 Change user settings
    [Tags]      regression
    log to console      Login to change user settings
    log to console      Changing user settings
    log to console      User settings are changed
TC4 Log out
    [Tags]       sanity
    log to console      Log out from application

*** Keywords ***
Provided precondition
    Setup system under test

# robot -i sanity -i regression TestCases/Tagging.robot (include multi tags)
# robot --include=regression TestCases/Tagging.robot (include only 1 tag)
# robot -e sanity -i regression TestCases/Tagging.robot (exclude sanity tag but include regresstion tag)
