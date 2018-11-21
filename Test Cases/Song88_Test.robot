*** Settings ***
Library  SeleniumLibrary
Library  SikuliLibrary
Resource  ../Resources/Resources.robot
Test Setup  Start Browser and Maximize
#Test Teardown  Close Browser Window

*** Variables ***
${Browser}  Chrome
${URL}  http://192.168.89.216/Account/Profile

*** Test Cases ***
#TC_001_Create Agent
#  Login with Username and Password  AE5F2C4  password
#  Enter One Time Pin  123456
#  Navigate to Create Agent
#  Create Desired Username  karla
#  Create Desired Password  brazil
#  Create Credit  500
#  Click All Max Button
#  Click Save Button
#  Click Reset Button
#  Click Copy Button for Agent/Member
#  Close Button for Copy Agent/Member
#  Click Payment Settings Button
#TC_002_Create Member
#  Login with Username and Password  AE5F2C4  password
#  Enter One Time Pin  123456
#  Navigate to Create Member
#  Create Desired Username  karla
#  Create Desired Password  brazil
#  Create Credit  500
#  Click All Max Button
#  Click Save Button
#  Click Reset Button
#  Click Copy Button for Agent/Member
#  Close Button for Copy Agent/Member
#  Click Payment Settings Button
TC_003_Navigate User List
#   Login with Username and Password  AE5F2C4  password
#   Enter One Time Pin  123456
   Navigate to User List
#   Select Normal User List Status
#   Select Locked User List Status
#   Select No Bet User List Status
   Increase Credit
   Decrease Credit


