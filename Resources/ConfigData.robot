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
