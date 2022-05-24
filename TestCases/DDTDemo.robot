*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com
${browser}  firefox
${txt_username}  id:user-name
${txt_password}  id:password
${btn_login}  xpath://*[@id="login-button"]
${txt_error}  xpath://h3[@data-test="error"]


*** Test Cases ***
Verify Login Fails - Wrong Username
    open browser  ${url}  ${browser}
    maximize browser window
    input text  ${txt_username}  standard_us
    input text  ${txt_password}  secret_sauce
    click button  ${btn_login}
    Sleep  2s
    element should contain  ${txt_error}    Epic sadface: Username and password do not match any user in this service
    close browser

Verify Login Fails - Wrong Password
    open browser  ${url}  ${browser}
    maximize browser window
    input text  ${txt_username}  standard_user
    input text  ${txt_password}  secret_sa
    click button  ${btn_login}
    Sleep  2s
    element should contain  ${txt_error}    Epic sadface: Username and password do not match any user in this service
    close browser

