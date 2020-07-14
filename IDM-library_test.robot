*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.

Library           AppiumLibrary          run_on_failure=Selenium2Library.Capture Page Screenshot
Library           Selenium2Library       run_on_failure=Selenium2Library.Capture Page Screenshot

Library			  Collections
Library           String
Library			  uuid
Library			  Dialogs

Resource          IDM-Common/IDM-Config.robot
Resource          IDM-Common/IDM-Appium.robot
Resource          IDM-Pages/IDM-AppManage.robot
Resource          IDM-Pages/IDM-GroupManage.robot
Resource          IDM-Pages/IDM-OrgManage.robot
Resource          IDM-Pages/IDM-RoleManage.robot
Resource          IDM-Pages/IDM-UserManage.robot
Resource          IDM-Pages/IDM-LoginPage.robot
Resource          IDM-Pages/IDM-EmailActv.robot
Resource          IDM-Pages/IDM-Dashboard.robot


*** Variables ***


*** Keywords ***


















	



