*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.


*** Variables ***

${Login_btnSignIn} 	    				xpath=//span[@data-i18n="button.signin"]
${Login_btnSignIn_onForm}               xpath=//button[@type="submit"]
${Login_txtUserName}                    xpath=//input[@id="username"]
${Login_txtPassword}                    xpath=//input[@id="password"]
${Login_btnLang}                        xpath=//div[@id="sc-header"]//child::a[@data-target=".nav-collapse"]
${Login_btnLang_linkEN_selected_lang}                 xpath=//div[@id="sc-header"]//child::span[text()="en"]
${Login_btnLang_linkCh_Simplified_selected_lang}                 xpath=//div[@id="sc-header"]//child::span[text()="中文(简体)"]
${Login_btnLang_linkCh_Trad_selected_lang}                 xpath=//div[@id="sc-header"]//child::span[text()="中文(繁體)"]


${Login_poup_rbEnglish}                 xpath=//div[@id="l18n-modal" and contains(@style,"display: block;")]//child::input[@id="en"]
${Login_popup_rbChinese_Traditional}    xpath=//div[@id="l18n-modal" and contains(@style,"display: block;")]//child::input[@value="zh-TW"]
${Login_popup_rbChinese_simplified}                xpath=//div[@id="l18n-modal" and contains(@style,"display: block;")]//child::input[@value="zh-CN"]

${Login_popup_btnChange}               //button[@id="changeLang"]


*** Keywords ***

Login_Select English
    Wait Until Page Contains Element         ${Login_poup_rbEnglish}       20 s
    click element     ${Login_poup_rbEnglish}

Login_Select Chinese (Traditional) - ‪中文(繁體)
    Wait Until Page Contains Element         ${Login_popup_rbChinese_Traditional}       20 s
    click element     ${Login_popup_rbChinese_Traditional}

Login_language should be change to Eng
    Wait Until Page Contains Element         ${Login_btnLang_linkEN_selected_lang}       20 s

Login_language should be change to Chinese (Traditional)
    Wait Until Page Contains Element         ${Login_btnLang_linkCh_Trad_selected_lang}       20 s

Login_language should be change to Chinese (Simplified)
    Wait Until Page Contains Element         ${Login_btnLang_linkCh_Simplified_selected_lang}       20 s

Login_Click change button
    Wait Until Page Contains Element         ${Login_popup_btnChange}       20 s
    click element     ${Login_popup_btnChange}

Login_Select Chinese (Simplified) - 中文(简体)
    Wait Until Page Contains Element         ${Login_popup_rbChinese_simplified}       20 s
    click element     ${Login_popup_rbChinese_simplified}

Login_Lang change popup validation
    Wait Until Page Contains     English
    Wait Until Page Contains     Chinese (Simplified) - 中文(简体)
    Wait Until Page Contains     Chinese (Traditional) - ‪中文(繁體)
    Wait Until Page Contains Element         ${Login_poup_rbEnglish}       20 s
    Wait Until Page Contains Element         ${Login_popup_rbChinese_Traditional}       20 s
    Wait Until Page Contains Element         ${Login_popup_rbChinese_simplified}       20 s


Login_Click the -en- at the upper left corner of the page
    Wait Until Page Contains Element         ${Login_btnLang}       20 s
    Click Element       ${Login_btnLang}
    Click Element       ${Login_btnLang_linkEN_selected_lang}


Login_Click on Sign-In button
	Wait Until Page Contains Element         ${Login_btnSignIn_onForm}       20 s
    Click Element       ${Login_btnSignIn_onForm}
	Wait Until Page Does Not Contain     The credentials you provided cannot be determined to be authentic.     

Login_Click on the Sign button 
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Login_btnSignIn}

Login_Input Password
    [Arguments]    ${password}
    AppiumLibrary.input password            ${Login_txtPassword}        ${password}
    Hide Keyboard

Login_Input Username
    [Arguments]    ${username}
    AppiumLibrary.Wait Until Page Contains Element         ${Login_txtUserName}         20 s
    AppiumLibrary.Input Text    ${Login_txtUserName}    ${username}
    Hide Keyboard

Login_Login Page Open Browser
    Set Selenium Speed    ${delay}
	${server_url} =       Config_get XML element value    server-url
    Open Browser    ${server_url}    ${browser}
    Wait Until Page Contains Element         ${Login_btnSignIn}       20 s
    Click Element       ${Login_btnSignIn}
    

Login_System Login
	Login_Login Page Open Browser
	${user_name} =       Config_get XML element value    username
	Login_Input Username    ${user_name}
	Set Log Level   NONE
	${password} =       Config_get XML element value    password
    Login_Input Password    ${password}
    Set Log Level   INFO   
    Wait Until Page Contains Element         ${Login_btnSignIn_onForm}       20 s
    # ${location} =       Get Element Location         ${Login_btnSignIn_onForm}
    # log to console      location ${location}
    # ${element}	    Get Webelement	    ${Login_btnSignIn_onForm}
    # log to console      element ${element}
    Click Element       ${Login_btnSignIn_onForm}
    # ${element_SIZE}	   Get Element Size    ${Login_btnSignIn_onForm}
    # log to console      element_SIZE ${element_SIZE}
	# AppiumLibrary.Click Element     ${Login_btnSignIn_onForm}    
























# ----------------------------------------------------------------------

Login_Sign in Specific User
    [Arguments]    ${username}
    Login_Click on the sign button
    ${password} =    Config_get XML element value    password
    Login_Enter Username and Password    ${username}    ${password}
    Login_Click on Sign-In button

Login_Sign in admin user
    Login_Click on the sign button
    Login_Enter user login details

Login_Sign out user
    Login_Click Sign out button on the upper right corner of the page
    Login_Confirmation pop up window should show
    Login_Click sign out button

Login_User session should end
    [Arguments]         ${portal}
    Run Keyword if      '${portal}' == 'UAT'       Wait Until Keyword Succeeds     1 min   1 sec   Location Should Be    ${UAT_Portal_URL}    
    Run Keyword if      '${portal}' == 'QBE'       Wait Until Keyword Succeeds     1 min   1 sec   Location Should Be    ${QBE_Portal_URL}    
    Run Keyword if      '${portal}' == 'HK'       Wait Until Keyword Succeeds     1 min   1 sec     Location Should Be    ${HK_Portal_URL}    
    Run Keyword if      '${portal}' == 'SG'       Wait Until Keyword Succeeds     1 min   1 sec   Location Should Be    ${SG_Portal_URL}   
    Run Keyword if      '${portal}' == 'TW'       Wait Until Keyword Succeeds     1 min   1 sec   Location Should Be    ${TW_Portal_URL}    

Login_Click sign out button 
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Login_btnSignOut_confirm}

Login_Confirmation pop up window should show 
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain     Do you wish to sign out?
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain element        ${Login_btnSignOut_confirm}

Login_Click Sign out button on the upper right corner of the page
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Login_btnSignOut}

Login_User must be signed in successfully
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain     Welcome
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain     Admin
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain     Manage users

# Login_Click on Sign-In button    
# 	Wait Until Keyword Succeeds     1 min   1 sec   Click Button     ${Login_btnLogin}

Login_Enter Username and Password
    [Arguments]     ${user_name}      ${password}  
    Wait Until Keyword Succeeds     1 min   1 sec   Login_Input Username    ${user_name}
    Set Log Level   NONE
    Wait Until Keyword Succeeds     1 min   1 sec   Login_Input Password    ${password}
    Set Log Level   INFO



Login_Open browser URL and access portal
    [Arguments]         ${portal}
    Run Keyword if      '${portal}' == 'UAT'       Wait Until Keyword Succeeds     1 min   1 sec   Open Browser    ${UAT_Portal_URL}    ${browser}
    Run Keyword if      '${portal}' == 'QBE'       Wait Until Keyword Succeeds     1 min   1 sec   Open Browser    ${QBE_Portal_URL}    ${browser}
    Run Keyword if      '${portal}' == 'HK'       Wait Until Keyword Succeeds     1 min   1 sec   Open Browser    ${HK_Portal_URL}    ${browser}
    Run Keyword if      '${portal}' == 'SG'       Wait Until Keyword Succeeds     1 min   1 sec   Open Browser    ${SG_Portal_URL}    ${browser}
    Run Keyword if      '${portal}' == 'TW'       Wait Until Keyword Succeeds     1 min   1 sec   Open Browser    ${TW_Portal_URL}    ${browser}
    Wait Until Keyword Succeeds     1 min   1 sec   Maximize Browser Window
    






Login_change language
    Wait Until Keyword Succeeds     1 min   1 sec   click element     ${Login_btnLang}
    Wait Until Keyword Succeeds     1 min   1 sec   click element     ${Login_rbChinese}
    Wait Until Keyword Succeeds     1 min   1 sec   click element     ${Login_btnChangeChinese}

Login_Enter user login details
    ${user_name} =       Config_get XML element value    username
    Wait Until Keyword Succeeds     1 min   1 sec   Login_Input Username    ${user_name}
    Set Log Level   NONE
    ${password} =       Config_get XML element value    password
    Wait Until Keyword Succeeds     1 min   1 sec   Login_Input Password    ${password}
    Set Log Level   INFO
	Wait Until Keyword Succeeds     1 min   1 sec   Click Button     ${Login_btnLogin}

    




Login_Access portal
	${server_url} =       Config_get XML element value    server-url
    Wait Until Keyword Succeeds     1 min   1 sec   Open Browser    ${server_url}    ${browser}








Login_Click on Sign-In button only
	Wait Until Keyword Succeeds     1 min   1 sec   Click Button     ${Login_btnLogin}

Login_Transaction should be unsuccessful
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain     The credentials you provided cannot be determined to be authentic.

Login_Access to portal successfully
    Login_Access portal
	Login_Click on the sign button
	${user_name} =       Config_get XML element value    username
	Login_Input Username        ${user_name}
	Set Log Level   NONE
	${password} =       Config_get XML element value    password
	Login_Input Password        ${password}
	Set Log Level   INFO
	Login_Click on Sign-In button
