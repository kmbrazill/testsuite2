*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/ExternalKeywords.py

*** Variables ***
${Browser}  Chrome
${URL}  https://agent.928club.com

*** Keywords ***
Start Browser and Maximize
    Open Browser  https://agent.928club.com  Chrome
    Maximize Browser Window
Close Browser Window
    ${Title}=   Get Title
    Log  ${Title}
    Close Browser
Login as Agent
    [Arguments]  ${AgentUsername}  ${AgentPassword}  ${SecurityCode}
    SeleniumLibrary.Input Text  xpath://*[@id="usr"]  ${AgentUsername}
    sleep  2
    SeleniumLibrary.Input Text  xpath://*[@id="pwd"]  ${AgentPassword}
    sleep  5
    SeleniumLibrary.Click Button  xpath://*[@id="flogin"]/div[3]/div[3]/button
    sleep  3
    SeleniumLibrary.Input Text  xpath://*[@id="sccode"]  ${SecurityCode}
    sleep  1
    SeleniumLibrary.Click Button  xpath://*[@id="fsecure"]/div[2]/div/button
    sleep  4

Create Folder at Runtime
    create_folder

Get Captcha Security Code
    captcha_resolver
4