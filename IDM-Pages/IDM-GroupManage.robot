*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.



*** Variables ***
#page Group manage
${GroupManage_ddlOrganization}                  xpath=//select[@id="organisation"]
${GroupManage_ddlOrganization_name}             xpath=//option[text()="ORG_NAME"]
${GroupManage_btnCreateNewGroup}                xpath=//span[text()="Create new group"]
${GroupManage_txtGroupName}                    xpath=//input[@id="new-group-name"]
${GroupManage_txtGroupDescription}             xpath=//input[@id="new-group-description"]
${GroupManage_txtGroupRolesSt2}                 xpath=//div[@id="s2id_new-group-roles"]/ul/li/input
${GroupManage_btnCreateGroup}                   xpath=//button[@id="new-group-form-create-new-group-button"]
${GroupManage_listGroups}                       xpath=//select[@id="groupslist"]
${GroupManage_ddlGroup_name}                    xpath=//option[text()="GROUP_NAME"]
${GroupManage_btnAddParticipant}                xpath=//a[text()="Add participants"]
${GroupManage_txtUserName_addParticipantTab}    xpath=//input[@id="username"]
${GroupManage_btnParticipantSearch}             xpath=//span[text()="Search"]

*** Keywords ***

GroupManage_Click on Search
    Wait Until Page Contains Element         ${GroupManage_btnParticipantSearch}       20 s
	click element   ${GroupManage_btnParticipantSearch}
    Wait Until Page Contains     Results

GroupManage_Search for usename
    [Arguments]     ${usename}
    Wait Until Page Contains Element         ${GroupManage_txtUserName_addParticipantTab}       20 s
    input text      ${GroupManage_txtUserName_addParticipantTab}       ${usename}
    
GroupManage_Click on Add Participants
    Wait Until Page Contains Element         ${GroupManage_btnAddParticipant}       20 s
    click element     ${GroupManage_btnAddParticipant} 

GroupManage_Select desired group
    [Arguments]     ${group_name}
    Wait Until Page Contains Element         ${GroupManage_listGroups}       20 s
    click element     ${GroupManage_listGroups} 
    sleep    3s
    ${GroupManage_ddlGroup_name} =       Replace String    ${GroupManage_ddlGroup_name}    GROUP_NAME    ${group_name}
    Wait Until Page Contains Element         ${GroupManage_ddlGroup_name}       20 s
    click element     ${GroupManage_ddlGroup_name} 
    sleep    3s

    # Wait Until Keyword Succeeds     1 min   1 sec   Select From List by label    ${GroupManage_listGroups}       ${group_name}

GroupManage_Click create new group button
    click element    ${GroupManage_btnCreateGroup}
    sleep    5s
    # Wait Until Page Contains    Success! New group was created      20s

GroupManage_Select Role FXDMS Read Only
    click element       ${GroupManage_txtGroupRolesSt2}
    input text    ${GroupManage_txtGroupRolesSt2}    FXDMS Read Only
    Press Keycode       66  
    # Hide Keyboard

GroupManage_Fill-out Group name and Group description fields
    ${Random_Group_Name} =  Generate Random String  6  [UPPER]
    Wait Until Page Contains Element         ${GroupManage_txtGroupName}       20 s
    input text    ${GroupManage_txtGroupName}    ${Random_Group_Name}
    input text    ${GroupManage_txtGroupDescription}    usl group description
    [Return]    ${Random_Group_Name}

GroupManage_Click on Create new group
    Wait Until Page Contains Element         ${GroupManage_btnCreateNewGroup}       20 s
	click element    ${GroupManage_btnCreateNewGroup}

GroupManage_select organization ${org}
    sleep    3s
    Wait Until Page Contains Element         ${GroupManage_ddlOrganization}       20 s
    click element     ${GroupManage_ddlOrganization} 
    sleep    3s
    ${GroupManage_ddlOrganization_name} =       Replace String    ${GroupManage_ddlOrganization_name}    ORG_NAME    ${org}
    Wait Until Page Contains Element         ${GroupManage_ddlOrganization_name}       20 s
    click element     ${GroupManage_ddlOrganization_name} 
    sleep    3s





































#--------------------------------------------------------







#page Group Manage https://envl.portal.fxdms.net/up/admin/groups-manage.html
GroupManage_Enter group name description
    Wait Until Keyword Succeeds     1 min   1 sec   Wait Until Element Is Visible    ${GroupManage_btnCreateGroup}
    ${Random_Group_Name} =  Generate Random String  6  [UPPER]
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${GroupManage_txtGroupName}    ${Random_Group_Name}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${GroupManage_txtGroupDescription}    usl group description
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${GroupManage_btnCreateGroup}
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain    ${Random_Group_Name}
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain      Success! New group was created

#GroupManage_click Create new group button
#    Wait Until Keyword Succeeds     1 min   1 sec   Wait Until Element Is Visible    ${GroupManage_btnCreateGroup}





#    ${try1Status}    ${value}=   Run keyword and ignore error    Wait Until Keyword Succeeds     0 min   12 sec   wait until element is visible    ${CollaborationV2_3_txtTags}
#    Run Keyword if      '${try1Status}' == 'PASS'       input text		${CollaborationV2_3_txtTags} 	Belongs to collection
#    Run Keyword if      '${try1Status}' == 'PASS'       Press Key    ${CollaborationV2_3_txtTags}    \\13
#    ${try2Status}      ${value2} =     Run Keyword if      '${try1Status}' == 'FAIL'       Run keyword and ignore error     Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${CollaborationV2_3_txtTags_secondElement}
#    Run Keyword if      '${try2Status}' == 'PASS'       input text		${CollaborationV2_3_txtTags_secondElement} 	Belongs to collection
#    Run Keyword if      '${try2Status}' == 'PASS'       Press Key    ${CollaborationV2_3_txtTags_secondElement}    \\13




GroupManage_select ORG_USERMAILFORMAT organization
	GroupManage_select org    ORG_USEREMAILFORMAT

#page Group Manage https://envl.portal.fxdms.net/up/admin/groups-manage.html
GroupManage_select organization
	GroupManage_select org    USL





GroupManage_Click on Participating users
	${try1Status}    ${value}=   Run keyword and ignore error    Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${GroupManage_btnParticipantingUsers}
    Run Keyword if      '${try1Status}' == 'PASS'       click element    ${GroupManage_btnParticipantingUsers}
    ${try2Status}      ${value2} =     Run Keyword if      '${try1Status}' == 'FAIL'       Run keyword and ignore error     Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${GroupManage_btnParticipantingUsers_secondElement}
    Run Keyword if      '${try2Status}' == 'PASS'          click element    ${GroupManage_btnParticipantingUsers_secondElement}







GroupManage_user should be listed
    [Arguments]     ${user}
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain    ${user}
    sleep  3s


GroupManage_user should not be listed anymore
    [Arguments]     ${user}
    Wait Until Keyword Succeeds     1 min   1 sec   page should not contain    ${user}
    sleep       5s

GroupManage_Click on the confrim button
    Wait Until Keyword Succeeds     1 min   1 sec   click element      ${GroupManage_btnRemoveSelectedUsers_confirm_participatingUsers}


GroupManage_Click on the Remove selected users button
    Wait Until Keyword Succeeds     1 min   1 sec   click element       ${GroupManage_btnRemoveSelectedUsers_participatingUsers}

GroupManage_Tick on the check box of the user
	Wait Until Keyword Succeeds     1 min   1 sec   click element   ${GroupManage_cbEmail_participatingUsers}

GroupManage_click user to be added
	Wait Until Keyword Succeeds     1 min   1 sec   click element   ${GroupManage_cbEmail}

GroupManage_click add user button
	Wait Until Keyword Succeeds     1 min   1 sec   click element   ${GroupManage_btnAddParticipantSearch}
	sleep      6s


#GroupManage_Click on Search
#	Wait Until Keyword Succeeds     1 min   1 sec   click element   ${GroupManage_btnParticipantSearch}
#	Wait Until Keyword Succeeds     1 min   1 sec   click element   ${GroupManage_cbEmail}
#	Wait Until Keyword Succeeds     1 min   1 sec   click element   ${GroupManage_btnAddParticipantSearch}

#page Group Manage https://envl.portal.fxdms.net/up/admin/groups-manage.html
GroupManage_Search for the use previously added User
	Wait Until Keyword Succeeds     1 min   1 sec   click link    ${GroupManage_btnParticipatingUsers}
	#Wait Until Keyword Succeeds     1 min   1 sec   page should contain    fujitest007+Emailformat@gmail.com

#page Group Manage https://envl.portal.fxdms.net/up/admin/groups-manage.html
GroupManage_Click on Participanting users
	Wait Until Keyword Succeeds     1 min   1 sec   click link    ${GroupManage_btnParticipatingUsers}

#page Group Manage https://envl.portal.fxdms.net/up/admin/groups-manage.html
GroupManage_Select users you want to remove
	#Wait Until Keyword Succeeds     1 min   1 sec   click element    ${GroupManage_cbEmailParticipant}
	${try1Status}    ${value}=   Run keyword and ignore error    Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${GroupManage_cbEmailParticipant}
    Run Keyword if      '${try1Status}' == 'PASS'       click element    ${GroupManage_cbEmailParticipant}
    ${try2Status}      ${value2} =     Run Keyword if      '${try1Status}' == 'FAIL'       Run keyword and ignore error     log to console      \n Participated users are not in the list.
    Run Keyword if      '${try2Status}' == 'PASS'          click element    ${GroupManage_cbEmailParticipant}

#page Group Manage https://envl.portal.fxdms.net/up/admin/groups-manage.html
GroupManage_Click on Remove selected users
	Wait Until Keyword Succeeds     1 min   1 sec   click link    ${GroupManage_btnRemoveSelectedUsers}
	Wait Until Keyword Succeeds     1 min   1 sec   click element    ${GroupManage_btnRemoveSelectedUsersConf}

#page Group Manage https://envl.portal.fxdms.net/up/admin/groups-manage.html
GroupManage_Search for the use previously removed
	#Wait Until Keyword Succeeds     1 min   1 sec   page should not contain    fujitest007+Emailformat@gmail.com
	Wait Until Keyword Succeeds     1 min   1 sec   page should not contain    fujitest007+Autouser1@gmail.com



