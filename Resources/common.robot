*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../Resources/ConfigData.robot

*** Keywords ***
Start TestCase
    open browser  ${url}  ${browser}
    maximize browser window
    sleep  2s

Finish TestCase
    close all browsers

