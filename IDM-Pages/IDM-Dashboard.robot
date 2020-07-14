*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.



*** Variables ***
${Dashbord_adminMenu}           		xpath=//a[@id="idm"]
${Dashbord_btnMenuSignOut}          xpath=//div[@id="sc-header"]/div/div/div/a[1]
${Dashbord_btnMenuSignOutConf}      xpath=//div[@id="sc-header"]//child::span[text()="Sign out"]
${Dashbord_btnMenuSignOutPopUp_confirm}      xpath=//*[@id="sign-out-link"]

${Dashbord_btnMenuDashbord}           		xpath=//a[@id="dashboard"] 


*** Keywords ***

Dashbord_Validate dashbord page
    Wait Until Page Contains Element        ${Dashbord_btnMenuDashbord}       20 s

Dashbord_Confirm signout
    wait until element is visible       ${Dashbord_btnMenuSignOutPopUp_confirm}       20 s 
    AppiumLibrary.click element      ${Dashbord_btnMenuSignOutPopUp_confirm}
    Wait Until Page Contains         Sign in

Dashbord_click signout in sub menu
    wait until element is visible       ${Dashbord_btnMenuSignOutConf}       20 s 
    AppiumLibrary.click element      ${Dashbord_btnMenuSignOutConf}
    

Dashbord_menu signout
    wait until element is visible       ${Dashbord_btnMenuSignOut}       20 s 
    AppiumLibrary.click element      ${Dashbord_btnMenuSignOut}

Dashbord_go to admin page
	wait until element is visible       ${Dashbord_adminMenu}       20 s
    AppiumLibrary.click element      ${Dashbord_adminMenu}




#---------------------------------------------------

Dashboard_Go to [${menu}] page
    ${Dashboard_tabMenuName}=    Replace String    ${Dashboard_tabMenuName}    TAB_MENU_NAME    ${menu}
    Wait until element is visible    ${Dashboard_tabMenuName}    1min
    Wait Until Keyword Succeeds     1 min   1 sec   Click element    ${Dashboard_tabMenuName}

Dashboard_Validate menu not present
    [Arguments]    ${menu}
    Wait until element is visible    ${Dashboard_mainMenu}    1min
    Wait Until Keyword Succeeds     1 min   1 sec   Element should not contain    ${Dashboard_mainMenu}    ${menu}

Dashboard_Validate menu present
    [Arguments]    ${menu}
    Wait until element is visible    ${Dashboard_mainMenu}    1min
    Wait Until Keyword Succeeds     1 min   1 sec   Element should contain    ${Dashboard_mainMenu}    ${menu}










