*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.


*** Variables ***

#page Role manage

${Role_ddlOrganization}              xpath=//select[@id="organisation"]
${Role_ddlOrganization_options}              xpath=//option[text()="ORG_NAME"]

${Role_listRoles}                   xpath=//select[@id="roleslist"]
${Role_listRoles_options}              xpath=//option[text()="ROLE_NAME"]

${Role_txtRoleName}                xpath=//*[@id="role-name"]
${Role_txtRoleDescription}                 xpath=//*[@id="role-description"]

${Role_btnRoles}                    xpath=//a[text()="Roles"]
${Role_btnCreateRoles}              xpath=//a[@id="create-role-button"]

${Role_txtRolesName}                xpath=//input[@id="new-role-name"]
${Role_txtRolesRoleDes}             xpath=//input[@id="new-role-description"]
${Role_txtAddGroups}                xpath=//input[@id="s2id_autogen8"]
${Role_btnCreateRoleConfirm}        xpath=//button[text()="Create"]

# ${Role_listRoles}                   xpath=//option[text()="ROLE_NAME"]

*** Keywords ***

Role_On roles list Select role
    [Arguments]     ${role}
    ${Role_listRoles_options} =       Replace String    ${Role_listRoles_options}    ROLE_NAME    ${role}
    click element     ${Role_listRoles_options} 
    sleep   5s

Role_Click create buton
    [Arguments]     ${Random_Role_Name}
    click element    ${Role_btnCreateRoleConfirm}
	Wait Until Page Contains     ${Random_Role_Name}       20s

Role_Fill-out text fields
    ${Random_Role_Name} =  Generate Random String  6  [UPPER]
    input text    ${Role_txtRolesName}    uslrole ${Random_Role_Name}
	input text    ${Role_txtRolesRoleDes}    uslroledes
    input text    ${Role_txtAddGroups}    AutomationTestGroup
    Press Keycode       66 
	[Return]    uslrole ${Random_Role_Name}

Role_Click on Create new Role
    Wait Until Page Contains Element         ${Role_btnCreateRoles}       20s
	click element    ${Role_btnCreateRoles}

Role_Click on roles
	Wait Until Page Contains Element         ${Role_btnRoles}       20s
    click element       ${Role_btnRoles}

Role_validate role propaties text boxes values
    [Arguments]     ${role}
    Role_select roles from select list    ${role}   #new line and variable
    Wait Until Page Contains Element         ${Role_txtRoleName}       20 s
    ${role_name}=       Get Element Attribute    ${Role_txtRoleName}         value
    Should Be Equal     ${role_name}       ${role}
    ${role_des}=       Get Element Attribute    ${Role_txtRoleDescription}        value
    Should Be Equal     ${role_des}       ${role}

Role_select roles from select list
    [Arguments]     ${role}
    Wait Until Page Contains Element         ${Role_listRoles}       20 s
    click element     ${Role_listRoles} 
    ${Role_listRoles_options} =       Replace String    ${Role_listRoles_options}    ROLE_NAME    ${role}
    click element     ${Role_listRoles_options} 
    sleep   3s

Role_validate role propaties
    Wait Until Page Contains     Role name
    Wait Until Page Contains     Role description
    Wait Until Page Contains     Groups
    Wait Until Page Contains     Application

Role_select org
    [Arguments]    ${org}
    Wait Until Page Contains Element         ${Role_ddlOrganization}       20 s
    click element     ${Role_ddlOrganization} 
    ${Role_ddlOrganization_options} =       Replace String    ${Role_ddlOrganization_options}    ORG_NAME    ${org}
    Wait Until Page Contains Element         ${Role_ddlOrganization_options}       20 s
    click element     ${Role_ddlOrganization_options} 

Role_select role organization
    [Arguments]    ${org}
	Role_select org      ${org}














# ----------------------------------------------------------------



Role_user should not be in the list
    Wait Until Keyword Succeeds     1 min   1 sec       page should contain   No users found in role

Role_Press Remove selected users confirm
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Role_btnRemoveSelected_confirm}
    sleep       8s

Role_Press Remove selected users
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Role_btnRemoveSelected}


Role_Tick on the check box of the user in participating tab
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Role_cbUserInResult_participatingUserTab}

Role_Filter usename
    [Arguments]     ${user_name}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${Role_txtfilter_participatingUserTab}    ${user_name}
    Wait Until Keyword Succeeds     1 min   1 sec   Press Keys    ${Role_txtfilter_participatingUserTab}    RETURN

Role_Tick on the check box of the user
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Role_cbUserInResult}








# Role_validate role propaties text boxes values
#     Wait Until Keyword Succeeds     1 min   1 sec   page should contain     FXAUTO
#     ${role_name}=       Get Value    xpath=//*[@id="role-name"]
#     Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${role_name}       FXDMS Read Only
#     ${role_des}=       Get Value    xpath=//*[@id="role-description"]
#     Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${role_des}       FXDMS Read Only


#https://envl.portal.fxdms.net/up/admin/roles-manage.html
Role_Enter group name description for roles
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${Role_txtRolesName}    uslrole
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${Role_txtRolesRoleDes}    uslroledes
	Wait Until Keyword Succeeds     1 min   1 sec   click element    ${Role_btnCreateRoleConfirm}
	Wait Until Keyword Succeeds     1 min   1 sec   page should contain     uslrole

  




#https://envl.portal.fxdms.net/up/admin/roles-manage.html
Role_Click on Participating Users
	Wait Until Keyword Succeeds     1 min   1 sec   click link    ${Role_btnParticipatingUsers}





Role_select ORG_USERMAILFORMAT organization
	Role_select org    ORG_USEREMAILFORMAT




#https://envl.portal.fxdms.net/up/admin/roles-manage.html
Role_Click on Add role Participants
	Wait Until Keyword Succeeds     1 min   1 sec   click link    ${Role_btnAddRoleParticipant}

#https://envl.portal.fxdms.net/up/admin/roles-manage.html
Role_Search for usename
    [Arguments]     ${username}
    Wait Until Keyword Succeeds     1 min   1 sec   input text      ${Role_btnAddParticipat_Username}       ${username}

Role_Click on users Search
	Wait Until Keyword Succeeds     1 min   1 sec   click button   ${Role_btnParticipatingUsersSearch}

#https://envl.portal.fxdms.net/up/admin/roles-manage.html
Role_Select users you want to add
	Wait Until Keyword Succeeds     1 min   1 sec   click element   ${GroupManage_cbEmail}

#https://envl.portal.fxdms.net/up/admin/roles-manage.html
Role_Click on Add selected users
	Wait Until Keyword Succeeds     1 min   1 sec   click link   ${Role_btnAddSelectedUsers}
	sleep   5s



#https://envl.portal.fxdms.net/up/admin/roles-manage.html
Role_verify participated user
	#Wait Until Keyword Succeeds     1 min   1 sec       page should contain    fujitest007+Emailformat@gmail.com
	Wait Until Keyword Succeeds     1 min   1 sec       page should contain    fujitest007+Autouser1@gmail.com

Role_user should be listed
    [Arguments]     ${user}
    Wait Until Keyword Succeeds     1 min   1 sec       page should contain     ${user}

Role_verify participated user for smoke
    sleep   5s
	#Wait Until Keyword Succeeds     1 min   1 sec       page should contain    fujitest007+Emailformat@gmail.com
	Wait Until Keyword Succeeds     1 min   1 sec       page should contain    fujitest007+Autouser1@gmail.com