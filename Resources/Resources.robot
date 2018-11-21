*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/ExternalKeywords.py

*** Variables ***
${Browser}  Chrome
${URL}  http://192.168.89.216/Account/Profile

*** Keywords ***

#GENERAL TEST CASES
Start Browser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
Close Browser Window
    ${Title}=   Get Title
    Log  ${Title}
    Close Browser
User Selects Timezone
    SeleniumLibrary.Click Element  xpath://*[@id="root"]/div/header/ul/h6[1]/div/div[2]/select

#LOGIN
Login with Username and Password
    [Arguments]  ${InputUsername}  ${InputPassword}
    SeleniumLibrary.Input Text  xpath://*[@id="root"]/div/div/div/div/div/div/div/form/div[1]/input  ${InputUsername}
    sleep  2
    SeleniumLibrary.Input Text  xpath://*[@id="root"]/div/div/div/div/div/div/div/form/div[2]/input  ${InputPassword}
    sleep  2
    SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/div/div/div/div/div/form/div[3]/div[1]/button
Enter One Time Pin
    [Arguments]  ${InputPin}
     wait until page contains element  xpath://*[@id="securityCode"][@placeholder="Enter security code"]
     SeleniumLibrary.Input Text  xpath://*[@id="securityCode"][@placeholder="Enter security code"]  ${InputPin}
     sleep  2
     SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/div/div/div/div/div/form/div[2]/div/button

#CREATE AGENT OR MEMBER - All keywords for Create Agent or Member will go here. Feel free to add or edit keywords.
Navigate to Create Agent
    wait until page contains element  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/a
    Click Link  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/a
    sleep  2
    Click Link  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/ul/li[1]/a
    sleep  2
Navigate to Create Member
    wait until page contains element  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/a
    Click Link  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/a
    sleep  2
    Click Link  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/ul/li[2]/a
    sleep  2
Create Desired Username
    [Arguments]  ${CreateUsername}
    SeleniumLibrary.Input Text  xpath://*[@id="validationServerUsername"][@placeholder="Username"]  ${CreateUsername}
    sleep  2
Create Desired Password
    [Arguments]  ${CreatePassword}
    SeleniumLibrary.Input Text  xpath://*[@id="validationServerUsername"][@placeholder="Password"]  ${CreatePassword}
    sleep  2
Create Credit
    [Arguments]  ${CreateCredit}
    SeleniumLibrary.Input Text  xpath://*[@id="validationServerUsername"][@placeholder="Credit"]  ${CreateCredit}
    sleep  2
Click All Max Button
    sleep  2
    SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/main/div[2]/div/div[1]/div/div/div/form/div[1]/div/div[2]/button[2]
    sleep  3
Click Save Button
    sleep  2
    SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/main/div[2]/div/div[1]/div/div/div/form/div[1]/div/div[2]/button[3]
    sleep  3
Click Reset Button
    sleep  2
    SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/main/div[2]/div/div[1]/div/div/div/form/div[1]/div/div[2]/button[4]
    sleep  2
Click Payment Settings Button
    sleep  2
    SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/main/div[2]/div/div[1]/div/div/div/form/div[1]/div/div[2]/a/button
    sleep  2

#COPY AGENT - All keywords for Copy Agent will go here. Feel free to add or edit keywords.
Click Copy Button for Agent/Member
    SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/main/div[2]/div/div[1]/div/div/div/form/div[1]/div/div[2]/button[1]
    sleep  2
Close Button for Copy Agent/Member
    SeleniumLibrary.Click Button  xpath://html/body/div[2]/div/div[1]/div/div/div[3]/button[1]
    sleep  3
Save Button for Copy Agent/Member
    SeleniumLibrary.Click Button  xpath://html/body/div[2]/div/div[1]/div/div/div[3]/button[2]
Reset Button for Copy Agent/Member
    SeleniumLibrary.Click Button  xpath://*[@id="root"]/div/div/main/div[2]/div/div[1]/div/div/div/form/div[1]/div/div[2]/button[4]
    sleep  2

#USER LIST - All keywords for Create Member will go here. Feel free to add or edit keywords.
Navigate to User List
    wait until page contains element  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/a
    Click Link  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/a
    sleep  2
    Click Link  xpath://*[@id="root"]/div/div/div/div/ul/li[4]/ul/li[3]/a
    sleep  2
Select Normal User List Status
  Click Element  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[3]/select
  sleep  2
  Select from List by Value  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[3]/select  Normal
  sleep  2
Select Locked User List Status
  Click Element  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[3]/select
  sleep  2
  Select from List by Value  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[3]/select  Locked
  sleep  2
Select No Bet User List Status
  Click Element  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[3]/select
  sleep  2
  Select from List by Value  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[3]/select  No bet
  sleep  2
Increase Credit
  sleep  2
  Click Element  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[4]/div/div/span[1]/i
  SeleniumLibrary.Click Button  xpath://html/body/div[2]/div/div[1]/div/div/div[3]/button[1]
  sleep  1
Decrease Credit
  sleep  2
  Click Element  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div/div[3]/div/div/div/form/table/tbody/tr[2]/td[4]/div/div/span[2]/i
  SeleniumLibrary.Click Button  xpath://html/body/div[2]/div/div[1]/div/div/div[3]/button[1]
  sleep  2

Account Password Page
  [Arguments]  ${OldPassword}  ${NewPassword}  ${ConfirmPassword}
  Click Element  xpath://*[@id="root"]/div/div/div/div/ul/li[2]
  sleep  2
  Click Element  //*[@id="root"]/div/div/div/div/ul/li[2]/ul/li[2]/a
  sleep  2
  Click Element  xpath://*[@id="oldPasswordEye"]
  sleep  2
  Input Text  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div[2]/div[2]/div/input  ${OldPassword}
  Click Element  xpath://*[@id="newPasswordEye"]
  sleep  2
  Input Text  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div[2]/div[3]/div/input  ${NewPassword}
  sleep  2
  Click Element  xpath://*[@id="confirmPasswordEye"]
  sleep  2
  Input Text  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div[2]/div[4]/div/input  ${ConfirmPassword}
  sleep  2
  Click Element  xpath://*[@id="root"]/div/div/main/div[2]/div/div/div/div/div[2]/button

#ASSERTIONS



#OTHER KEYWORDS sample
Create Folder at Runtime
    create_folder

Get Captcha Security Code
    captcha_resolver
4