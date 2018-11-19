*** Settings ***
Library  SeleniumLibrary
Library  SikuliLibrary
Resource  ../Resources/Resources.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window


*** Variables ***
${Browser}  Chrome
${URL}  https://agent.928club.com

*** Test Cases ***
TC_001_Successfully Login to Agent Site
    Login as Agent  1p1jpp5a  aa111111  168168
TC_002_Valid Username and Wrong Password
     Login as Agent  1p1jpp5a  aa111110  168168
TC_003_Wrong Username and Valid Password
     Login as Agent  1p1jpp5b  aa111111  168168168..fgd
























