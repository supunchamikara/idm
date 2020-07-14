*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.



*** Variables ***
${User_btnSearchUsrs}     			            xpath=//button[@id="search-users-submit"]/span[text()="Search"]
${User_btnFirstUserOnTable}                     xpath=//table[@id="results"]/tbody/tr[1]/td[1]
${User_btnUserDetailsTabOnPopup}                xpath=//div[@id="edit-user-modal"]/div[2]/div/ul/li[1]/a[text()="User details"]
${User_btnUserPermissionTabOnPopup}             xpath=//div[@id="edit-user-modal"]/div[2]/div/ul/li[2]/a[text()="Permissions"]
${User_btnUserContactInfoTabOnPopup}            xpath=//div[@id="edit-user-modal"]/div[2]/div/ul/li[3]/a[text()="Contact info"]

${User_tabPermission_treeOrganization}          xpath=//div[@id="edit-user-organisation-tree"]/ul
${User_tabPermission_txtGroups}                 xpath=//div[@id="s2id_edit-user-groups"]/ul

${User_tabContactInfo_txtPhone}                 xpath=//input[@id="edit-user-phone"]
${User_tabContactInfo_txtMobilePhone}           xpath=//input[@id="edit-user-mobile"]

${User_tabUserDetails_lblcurrentStstus}         xpath=//div[@id="user-details-modal-tab"]//child::label[text()="Current status"]
${User_tabUserDetails_lblChangeStstus}          xpath=//div[@id="user-details-modal-tab"]//child::label[text()="Change status"]
${User_tabUserDetails_lblUserName}              xpath=//div[@id="user-details-modal-tab"]//child::label[text()="User name"]
${User_tabUserDetails_lblEmailAddress}          xpath=//div[@id="user-details-modal-tab"]//child::label[text()="Email address"]
${User_tabUserDetails_lblFirstName}             xpath=//div[@id="user-details-modal-tab"]//child::label[text()="First name"]
${User_tabUserDetails_lblLastName}              xpath=//div[@id="user-details-modal-tab"]//child::label[text()="Last name"]
${User_tabUserDetails_lblPrefLang}              xpath=//div[@id="user-details-modal-tab"]//child::label[text()="Preferred language"]

${User_menuGroups}                              xpath=//ul[@id="app-submenu"]//child::a[text()="Groups"]
${User_menuOrganisations}                              xpath=//ul[@id="app-submenu"]//child::span[text()="Organisations"]
${User_menuModifyOrganisations}                              xpath=//ul[@id="app-submenu"]//child::a[text()="Modify organisations"]
${User_menuOrgPasswordPolicy}                   xpath=//ul[@id="app-submenu"]//child::a[text()="Password policies"]
${User_menuRoles}                               xpath=//ul[@id="app-submenu"]//child::a[text()="Roles"]
${User_menuApplication}                         xpath=//ul[@id="app-submenu"]//child::a[text()="Applications"]

${User_menuGroups_ddlOrg}                       xpath=//select[@id="organisation"]
${User_menuGroups_cbListGroup}                  xpath=//select[@id="groupslist"]

${User_menuGroups_tabGroupPropaties}                xpath=//li[@id="tab1title"]/a[text()="Group properties"]
${User_menuGroups_tabParticipatingUsers}            xpath=//li[@id="tab2title"]/a[text()="Participating users"]
${User_menuGroups_tabAddParticipating}              xpath=//li[@id="tab3title"]/a[text()="Add participants"]

${User_menuGroups_tabParticipatingUsers_txtFilter}              xpath=//div[@id="participants_filter"]/label/input
${User_menuGroups_tabParticipatingUsers_tableParticipant}       xpath=//table[@id="participants"]

${User_menuGroups_tabAddParticipating_txtusername}              xpath=//input[@id="username"]
${User_menuGroups_tabAddParticipating_txtfirstname}             xpath=//input[@id="firstname"]
${User_menuGroups_tabAddParticipating_txtsurname}               xpath=//input[@id="surname"]

${User_menuGroups_tabGroupPropaties_txtgroupName}               xpath=//input[@id="group-name"]
${User_menuGroups_tabGroupPropaties_txtgroupDescription}        xpath=//input[@id="group-description"]
${User_menuGroups_tabGroupPropaties_txtgroupRoles}              xpath=//div[@id="s2id_group-roles"]

${User_btnGroupParticipatingUsers}          xpath=//li[@id="tab2title"]/a[text()="Participating users"]

${User_menuRoles_participatingUsersTab_table_col1}      xpath=//table[@id="participants"]//child::th[text()="User name"]
${User_menuRoles_participatingUsersTab_table_col2}      xpath=//table[@id="participants"]//child::th[text()="First name"]
${User_menuRoles_participatingUsersTab_table_col3}      xpath=//table[@id="participants"]//child::th[text()="Last name"]
${User_menuRoles_participatingUsersTab_table_col4}      xpath=//table[@id="participants"]//child::th[text()="Org"]

${User_btnGroupAddParticipating}                    xpath=//li[@id="tab3title"]/a[text()="Add participants"]
${User_menuRoles_addParticipant_txtUsername}        xpath=//input[@id="username"]
${User_menuRoles_addParticipant_txtFirstname}        xpath=//input[@id="firstname"]
${User_menuRoles_addParticipant_txtSurname}        xpath=//input[@id="surname"]

${User_btnGroupPropatiesTab}                    xpath=//li[@id="tab1title"]/a[text()="Role properties"]

${User_group_groupList}                                        xpath=//select[@id="groupslist"]
${User_group_name}                                        xpath=//option[text()="GROUP_NAME"]

${User_organization_select_groupList}                              xpath=//select[@id="organisation-list"]
${User_organization_select_option_groupList}                              //select[@id="organisation-list"]/option[text()="ORG_NAME"]

${User_organization_passwordPolicy_txtPasswordLengthMin}            xpath=//*[@id="password-length-min"]
${User_organization_passwordPolicy_txtPasswordExpiryDays}           xpath=//*[@id="password-expiry-days"]

${User_organization_modifyOrganization_txtOrgCode}                  xpath=//*[@id="organisation-code"]
${User_organization_modifyOrganization_txtOrgName}                  xpath=//*[@id="organisation-name"] 
${User_organization_modifyOrganization_txtOrgDescription}           xpath=//*[@id="organisation-description"]
${User_organization_modifyOrganization_txtOrgTimeOut}               xpath=//*[@id="org-timeout"]

${User_groups_txtGroupName}                                         xpath=//*[@id="group-name"]

${User_btnCreateUserUrl}     	        xpath=//span[text()="Create new user"]
${User_ddlCreateNewUser_OrganisationTree}               xpath=//select[@id="create-user-organisation"]
${User_ddlCreateNewUser_OrganisationTree_name}          xpath=//select[@id="create-user-organisation"]/option[text()="USERS_ORG_NAME"]

${User_txtNewUser_userName}                 xpath=//*[@id="create-user-username"]
${User_txtUserEmail}    		            jquery=input[id='create-user-email']:visible  
${User_txtUserFirstName}    	            jquery=input[id='create-user-firstname']:visible
${User_txtUserSurName}    		            jquery=input[id='create-user-surname']:visible
${User_txtUserMobile}    		            jquery=input[id='create-user-mobile']:visible
${User_txtUserPhone}    		            jquery=input[id='create-user-phone']:visible

${User_btnCreateNewUserConfirm}             xpath=//span[text()="Create"]  
${User_txtSearchUsername}                   jquery=input[id="username"]:visible

*** Keywords ***


User_Verify newly created user existence
    [Arguments]     ${user_name}
    Wait Until Page Contains     ${user_name}       20s
    Wait Until Page Contains     UNCONFIRMED
    Wait Until Page Contains     test        #added this line
    Wait Until Page Contains     testsur     #added this line
    Wait Until Page Contains     FXAUTO      #added this line

User_new user Enter the username of the new USER in the user names text field
    [Arguments]   ${user_name}
    wait until element is visible         ${User_txtSearchUsername}       20 s
    input text    ${User_txtSearchUsername}         ${user_name}

User_new user Press create button
    wait until element is visible         ${User_btnCreateNewUserConfirm}       20 s
    click element     ${User_btnCreateNewUserConfirm}
    click element     ${User_btnCreateNewUserConfirm}
    Wait Until Page Contains           Success!       20s

User_new user Fill out Email firstname and lastname fields
    ${Random_PostFix} =  Generate Random String  5  [NUMBERS]
    Wait Until Page Contains Element         ${User_txtNewUser_userName}         20 s
    input text    ${User_txtNewUser_userName}       fujitest007+Automation${Random_PostFix}
    click element    ${User_txtUserEmail}
    Wait Until Page Contains Element         ${User_txtUserEmail}         20 s
	input text    ${User_txtUserEmail}    fujitest007+Automation${Random_PostFix}@gmail.com
    click element    ${User_txtUserFirstName}
    Wait Until Page Contains Element         ${User_txtUserFirstName}         20 s
	input text    ${User_txtUserFirstName}    test
    click element    ${User_txtUserSurName}
    Wait Until Page Contains Element         ${User_txtUserSurName}         20 s
	input text    ${User_txtUserSurName}    testsur
    click element    ${User_txtUserMobile}
    Wait Until Page Contains Element         ${User_txtUserMobile}         20 s
	input text    ${User_txtUserMobile}    0122336598
    click element    ${User_txtUserPhone}
    Wait Until Page Contains Element         ${User_txtUserPhone}         20 s
	input text    ${User_txtUserPhone}    0552365998
    click element           jquery=label[for="create-user-groups"]:visible
	[Return]    fujitest007+Automation${Random_PostFix}@gmail.com

User_new user Select organisation
    [Arguments]     ${org}
    Wait Until Page Contains Element         ${User_ddlCreateNewUser_OrganisationTree}       20 s
    click element     ${User_ddlCreateNewUser_OrganisationTree} 
    ${User_ddlCreateNewUser_OrganisationTree_name} =       Replace String    ${User_ddlCreateNewUser_OrganisationTree_name}    USERS_ORG_NAME    ${org}
    Wait Until Page Contains Element         ${User_ddlCreateNewUser_OrganisationTree_name}       20 s
    click element     ${User_ddlCreateNewUser_OrganisationTree_name} 
    sleep    5s

User_goto user page
	Wait Until Page Contains Element             ${User_btnCreateUserUrl}        20 s
	click element    ${User_btnCreateUserUrl}

User_Password Policy setting details should be displayed on Policy settings section
    Wait Until Page Contains           FXAUTO       20s
    ${org_pass_strength}=       Get Element Attribute       ${User_organization_passwordPolicy_txtPasswordLengthMin}       value
    Should Be Equal     ${org_pass_strength}       6
    ${org_exp_date}=        Get Element Attribute    ${User_organization_passwordPolicy_txtPasswordExpiryDays}     value
    Should Be Equal     ${org_exp_date}        60    

User_Org details should be displayed on orgnaization propaties
    Wait Until Page Contains         FXAUTO     20s
    ${org_code}=      Get Element Attribute    ${User_organization_modifyOrganization_txtOrgCode}       value
    Should Be Equal     ${org_code}       org261
    ${org_name}=        Get Element Attribute     ${User_organization_modifyOrganization_txtOrgName}        value
    Should Be Equal     ${org_name}        FXAUTO
    ${org_des}=        Get Element Attribute     ${User_organization_modifyOrganization_txtOrgDescription}      value
    Should Be Equal     ${org_des}        for automation testing
    ${org_timeout}=        Get Element Attribute     ${User_organization_modifyOrganization_txtOrgTimeOut}       value
    Should Be Equal     ${org_timeout}        30
    Wait Until Page Contains         Plain text

User_Select organisation on organisation text box
    [Arguments]     ${org_name}
    wait until element is visible             ${User_organization_select_groupList}        20 s
    click element      ${User_organization_select_groupList}
    ${User_organization_select_option_groupList} =       Replace String    ${User_organization_select_option_groupList}    ORG_NAME    ${org_name}
    wait until element is visible             ${User_organization_select_option_groupList}         20 s
    click element     ${User_organization_select_option_groupList} 

User_The details of the first group listed on textbox are displayed on the group properties ${group}
    Wait Until Page Contains Element             ${User_group_groupList}        20 s
    click element      ${User_group_groupList}
    ${User_group_name} =       Replace String    ${User_group_name}    GROUP_NAME    ${group}
    Wait Until Page Contains Element             ${User_group_name}         20 s
    click element     ${User_group_name} 
    Wait Until Page Contains     ${group}
    sleep   3s
    Wait Until Page Contains Element             ${User_groups_txtGroupName}        20 s
    ${group_name_textbox_value} =       Get Element Attribute       ${User_groups_txtGroupName}       value
    Should Be Equal     ${group_name_textbox_value}       ${group}

User_Validate application
    Wait Until Page Contains     Manage applications
    Wait Until Page Contains     Organisation
    Wait Until Page Contains     Applications
    Wait Until Page Contains     Application properties
    Wait Until Page Contains     Application name
    Wait Until Page Contains     Application description
    Wait Until Page Contains     Roles

User_Click on application
    wait until element is visible             ${User_menuApplication}         20 s
    AppiumLibrary.click element       ${User_menuApplication}

User_Validate role group propaties tab
    wait until element is visible             ${User_btnGroupPropatiesTab}         20 s
    AppiumLibrary.click element       ${User_btnGroupPropatiesTab}
    Wait Until Page Contains     Role name
    Wait Until Page Contains     Role description
    Wait Until Page Contains     Groups
    Wait Until Page Contains     Application

User_Validate role add participats propaties
    wait until element is visible             ${User_btnGroupAddParticipating}         20 s
    AppiumLibrary.click element       ${User_btnGroupAddParticipating}
    wait until element is visible        ${User_menuRoles_addParticipant_txtUsername}
    wait until element is visible        ${User_menuRoles_addParticipant_txtFirstname}
    wait until element is visible        ${User_menuRoles_addParticipant_txtSurname}

User_Validate role participating users tab propaties
    wait until element is visible             ${User_btnGroupParticipatingUsers}         20 s
    AppiumLibrary.click element       ${User_btnGroupParticipatingUsers}
    wait until element is visible         ${User_menuRoles_participatingUsersTab_table_col1}    
    wait until element is visible         ${User_menuRoles_participatingUsersTab_table_col2}    
    wait until element is visible         ${User_menuRoles_participatingUsersTab_table_col3}    
    wait until element is visible         ${User_menuRoles_participatingUsersTab_table_col4}    
    

User_Validate roles
    Wait Until Page Contains     Manage roles
    Wait Until Page Contains     Manage roles
    Wait Until Page Contains     Organisation
    Wait Until Page Contains     Roles

User_Click on roles
    wait until element is visible             ${User_menuRoles}         20 s
    AppiumLibrary.click element       ${User_menuRoles}

User_Validate password policy
    Wait Until Page Contains     Custom policy
    Wait Until Page Contains     Password expiry
    Wait Until Page Contains     Password length
    Wait Until Page Contains     Expiry period (days)
    Wait Until Page Contains     Must contain lowercase
    Wait Until Page Contains     Account lock-up
    Wait Until Page Contains     Must contain uppercase
    Wait Until Page Contains     Maximum failed attempts
    Wait Until Page Contains     Must contain numeric
    Wait Until Page Contains     Require unique passwords
    Wait Until Page Contains     Must contain special
    Wait Until Page Contains     Password history depth

User_Click on Organisation password policy
	wait until element is visible             ${User_menuOrgPasswordPolicy}         20 s
    AppiumLibrary.click element       ${User_menuOrgPasswordPolicy}


User_Validate manage organisation
    Wait Until Page Contains     Manage organisations       20s
    Wait Until Page Contains     Organisations
    Wait Until Page Contains     Organisation properties
    Wait Until Page Contains     Organisation code
    Wait Until Page Contains     Organisation name
    Wait Until Page Contains     Organisation description
    Wait Until Page Contains     Username format
    Wait Until Page Contains     Session time-out
    Wait Until Page Contains     Organisation tree
    Wait Until Page Contains     New organisational unit

User_Click on Organisation
    wait until element is visible       ${User_menuOrganisations}    20 s
	AppiumLibrary.click element       ${User_menuOrganisations}

User_Click on Modify Organisation
    AppiumLibrary.click element       ${User_menuModifyOrganisations}

User_Validate group propaties tab
    AppiumLibrary.click element       ${User_menuGroups_tabGroupPropaties}
    wait until element is visible       ${User_menuGroups_tabGroupPropaties_txtgroupName}    20 s
    wait until element is visible       ${User_menuGroups_tabGroupPropaties_txtgroupDescription}    20 s
    wait until element is visible       ${User_menuGroups_tabGroupPropaties_txtgroupRoles}    20 s
    Wait Until Page Contains         Group name     20 s
    Wait Until Page Contains         Group description      20 s
    Wait Until Page Contains         Roles      20 s

User_Validate add participats propaties
    AppiumLibrary.click element       ${User_menuGroups_tabAddParticipating}
    wait until element is visible       ${User_menuGroups_tabAddParticipating_txtusername}    20 s
    wait until element is visible       ${User_menuGroups_tabAddParticipating_txtfirstname}    20 s
    wait until element is visible       ${User_menuGroups_tabAddParticipating_txtsurname}    20 s
    Wait Until Page Contains    User name       20 s
    Wait Until Page Contains    First name      20 s
    Wait Until Page Contains    Last name       20 s

User_Validate participating users tab propaties
    AppiumLibrary.click element       ${User_menuGroups_tabParticipatingUsers}
    wait until element is visible       ${User_menuGroups_tabParticipatingUsers_txtFilter}    20 s
    wait until element is visible       ${User_menuGroups_tabParticipatingUsers_tableParticipant}    20 s
    Wait Until Page Contains    records per page       20 s

User_Validate Groups page propaties
    wait until element is visible       ${User_menuGroups_ddlOrg}    20 s
    wait until element is visible       ${User_menuGroups_cbListGroup}    20 s
    Wait Until Page Contains    Manage groups       20 s
    Wait Until Page Contains    Organisation       20 s
    Wait Until Page Contains    Groups       20 s

User_Click on Groups
	wait until element is visible       ${User_menuGroups}       20 s
    click element       ${User_menuGroups}

User_Validate user details tab propaties availability
    AppiumLibrary.click element         ${User_btnUserDetailsTabOnPopup}   
    wait until element is visible       ${User_tabUserDetails_lblcurrentStstus}    20 s
    wait until element is visible       ${User_tabUserDetails_lblChangeStstus}    20 s
    wait until element is visible       ${User_tabUserDetails_lblUserName}    20 s
    wait until element is visible       ${User_tabUserDetails_lblEmailAddress}    20 s
    wait until element is visible       ${User_tabUserDetails_lblFirstName}    20 s
    wait until element is visible       ${User_tabUserDetails_lblLastName}    20 s
    wait until element is visible       ${User_tabUserDetails_lblPrefLang}    20 s
    
User_Validate contact info tab propaties availability
    AppiumLibrary.click element       ${User_btnUserContactInfoTabOnPopup}   
    wait until element is visible    ${User_tabContactInfo_txtPhone}    20 s
    wait until element is visible    ${User_tabContactInfo_txtMobilePhone}    20 s
    Wait Until Page Contains    Phone      20 s
    Wait Until Page Contains    Mobile phone      20 s


User_Validate user permission tab propaties availability
    AppiumLibrary.click element       ${User_btnUserPermissionTabOnPopup}   
    wait until element is visible    ${User_tabPermission_treeOrganization}    20 s
    wait until element is visible    ${User_tabPermission_txtGroups}    20 s
    Wait Until Page Contains    Organisation tree       20 s
    Wait Until Page Contains    Groups      20 s
    Wait Until Page Contains    Roles       20 s

User_Validate popup tabs availability
    wait until element is visible     ${User_btnUserDetailsTabOnPopup}      20 s
    wait until element is visible     ${User_btnUserPermissionTabOnPopup}
    wait until element is visible     ${User_btnUserContactInfoTabOnPopup}

User_Click user from the search list
    wait until element is visible     ${User_btnFirstUserOnTable}       20 s
    click element       ${User_btnFirstUserOnTable}

User_Verify user search transaction
    wait until element is visible       ${User_btnSearchUsrs}       20 s
    click element       ${User_btnSearchUsrs}
    click element       ${User_btnSearchUsrs}
    Wait Until Page Contains     Results
    Wait Until Page Does Not Contain     NO Results





















#-------------------------------



User_Validate updated contact info
    [Arguments]     ${phone}     ${mobile}
    ${actualphone} =   Get Value   ${User_txtEditPhone}
    Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal    ${actualphone}    ${phone}
    ${actualmobile} =   Get Value   ${User_txtEditMobile}
    Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal    ${actualmobile}    ${mobile}

User_Update User Contact Info Details
    [Arguments]     ${phone}     ${mobile}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtEditPhone}    ${phone}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtEditMobile}    ${mobile}

User_Click Update User Details
    Wait Until Keyword Succeeds     1 min   1 sec   click element     ${User_btnUpdateEditUser}

User_Validate surname validation
    Wait Until Element is Visible     ${User_surnameError}   10s
    Wait Until Keyword Succeeds     1 min   1 sec   element should contain     ${User_surnameError}     You must enter a last name

User_Validate first name validation
    Wait Until Element is Visible     ${User_firstnameError}   10s
    Wait Until Keyword Succeeds     1 min   1 sec   element should contain     ${User_firstnameError}     You must enter a first name

User_Validate updated surname details
    [Arguments]     ${surname}
    ${actualsurname} =   Get Value   ${User_txtEditSurname}
    Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal    ${actualsurname}    ${surname}

User_Validate updated first name details
    [Arguments]     ${firstname}
    ${actualfirstname} =   Get Value   ${User_txtEditUsername}
    Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal    ${actualfirstname}    ${firstname}

User_Update Surname details
    [Arguments]     ${random_surname}
    Wait Until Keyword Succeeds     1 min   1 sec   input text     ${User_txtEditSurname}     ${random_surname}
    [Return]     ${random_surname}

User_Update First Name details
    [Arguments]     ${random_firstname}
    Wait Until Keyword Succeeds     1 min   1 sec   input text     ${User_txtEditUsername}     ${random_firstname}
    [Return]     ${random_firstname}

User_Add user role
    [Arguments]    ${oldUserRole}
    ${roleNotExists}    ${value}=    Run keyword and ignore error    Wait Until Element Does Not Contain     ${User_listRoles}     ${oldUserRole}     10s
    ${User_txtInputRoleOrGroup}=    Replace String    ${User_txtInputRoleOrGroup}    INPUT_ROLEorGROUP    ${oldUserRole}
    Run Keyword if    '${roleNotExists}' == 'FAIL'    click element    ${User_txtInputRoleOrGroup}
    Wait Until Element Is Visible    ${User_txtRoles}     10s
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtRoles}    ${oldUserRole}
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_listFirstUserRoleValue}

User_Delete User Role
    [Arguments]    ${role}
    ${roleExists}     ${value}=    Run keyword and ignore error    Wait Until Element Contains    ${User_listRoles}    ${role}    10s
    Run Keyword if    '${roleExists}' == 'FAIL'    User_Add user role    ${role}
    ${User_txtInputRoleOrGroup}=    Replace String    ${User_txtInputRoleOrGroup}    INPUT_ROLEorGROUP    ${role}
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_txtInputRoleOrGroup}

User_Validate Deleted User Role Is Not Present
    [Arguments]     ${deletedRole}
    Wait Until Element Does Not Contain     ${User_listRoles}     ${deletedRole}     10s    The "${deletedRole}" role still exists

User_Validate New User Role Is Present
    [Arguments]     ${newuserRole}
    Wait Until Element Contains     ${User_listRoles}     ${newuserRole}    10s    The "${newuserRole}" role does not exists

User_Verify if the removed group is no longer displayed
    [Arguments]    ${removedGroup}
    Wait Until Element Does Not Contain    ${User_listGroups}     ${removedGroup}     10s    The "${removedGroup}" group still exists

User_Remove selected group
    [Arguments]    ${group}
    ${groupExists}    ${value}=    Run keyword and ignore error    Wait Until Element Contains     ${User_listGroups}     ${group}     10s
    Run Keyword if    '${groupExists}' == 'FAIL'    User_Select a group from the Groups dropdown list field    ${group}
    ${User_txtInputRoleOrGroup}=    Replace String    ${User_txtInputRoleOrGroup}    INPUT_ROLEorGROUP    ${group}
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_txtInputRoleOrGroup}

User_Verify if the selected group is displayed in the Groups field
    [Arguments]         ${newGroup}
    Wait Until Element Contains     ${User_listGroups}     ${newGroup}    10s    The "${newGroup}" group does not exists

User_Select a group from the Groups dropdown list field
    [Arguments]         ${group}
    ${groupNotExists}    ${value}=    Run keyword and ignore error    Wait Until Element Does Not Contain     ${User_listGroups}     ${group}     10s
    ${User_txtInputRoleOrGroup}=    Replace String    ${User_txtInputRoleOrGroup}    INPUT_ROLEorGROUP    ${group}
    Run Keyword if    '${groupNotExists}' == 'FAIL'    click element    ${User_txtInputRoleOrGroup}
    Wait Until Element Is Visible    ${User_txtGroupsPermissions}    10s
    Wait Until Keyword Succeeds     1 min   1 sec   Input Text     ${User_txtGroupsPermissions}          ${group}
    Press Keys       NONE      RETURN

User_Verify preferred language is successfully revert back to English
    User_Choose [English] on User details tab with list value [en]
    User_Click Update on Edit User pop up
    User_Click user from the search list      
    User_Verify successful update of language to [English] with list value [en]

User_Verify successful update of language to [${preferredLanguage}] with list value [${languageListValue}]
    ${selected}=    Get Selected List Value    ${User_listPreferredLangDetails}
    Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal    ${selected}    ${languageListValue}

User_Click Update on Edit User pop up
    Wait Until Element Is Visible      ${User_btnUpdateEditUser}   30s      Update button not found
    Wait Until Keyword Succeeds     1 min   1 sec   Click Element     ${User_btnUpdateEditUser}
    Wait Until Page contains          Success!      30s
    Wait Until Element Is Not Visible       ${User_modalEditUser}         30s     Edit User Modal is still visible

User_Choose [${preferredLanguage}] on User details tab with list value [${languageListValue}]
    Wait Until Element Is Visible      ${User_listPreferredLangDetails}    30s      Language dropdown not found
    Wait Until Keyword Succeeds     1 min   1 sec   Select From List By Value     ${User_listPreferredLangDetails}          ${languageListValue}

User_Verify Search results is displayed for specific user
    [Arguments]    ${user}
    Wait Until Element Is Visible      ${User_searchResultsTable}    30s      Results table not found
    Wait Until Keyword Succeeds     1 min   1 sec   element should contain    ${User_searchResultsTable}    ${user}

User_Verify successful update of user Status
    [Arguments]    ${stat}
    ${currentstat}=    Get Text   ${User_txtCurrentStatus}
    Wait Until Keyword Succeeds     1 min   1 sec   Should be equal    ${currentstat}    ${stat}

User_Update User Status    
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_statusValue}
    User_Click Update on Edit User pop up

User_Update status to preconditioned status
    [Arguments]    ${stat}
    User_Update User Status
    User_Click Search button
    User_Click user from the search list
    User_Verify successful update of user Status    ${stat}

User_Update user status to INACTIVE
    wait until element is visible    ${User_txtCurrentStatus}    10s
    ${currentstat}=    Get Text    ${User_txtCurrentStatus}
    ${isCurrentStatEqualActive}     ${value}=   Run keyword and ignore error    Should be Equal    ${currentstat}    ACTIVE
    Run keyword if  '${isCurrentStatEqualActive}' == 'FAIL'   Run keyword    User_Update status to preconditioned status    ACTIVE
    User_Update User Status

User_Update user status to ACTIVE
    wait until element is visible    ${User_txtCurrentStatus}    10s 
    ${currentstat}=    Get Text      ${User_txtCurrentStatus}
    ${isCurrentStatEqualInactive}     ${value}=   Run keyword and ignore error    Should be Equal    ${currentstat}    INACTIVE
    Run keyword if    '${isCurrentStatEqualInactive}' == 'FAIL'    Run keyword    User_Update status to preconditioned status    INACTIVE
    User_Update User Status

User_Click Search button
    Wait Until Element Is Visible      ${User_btnSearchUsrs}    30s      Search button not found
    Wait Until Keyword Succeeds     1 min   1 sec   click element       ${User_btnSearchUsrs}

User_Search user records using username value 
    [Arguments]    ${userName}
    User_Enter the username for filter    ${userName}
    User_Click Search button
    User_Verify Search results is displayed for specific user    ${userName}

User_Cancel Creation of New User
    wait until element is visible    ${User_btnCreateUserUrl}    10s    Create New User button not visible
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_btnCreateUserUrl}
    wait until element is visible    ${User_btnCancelCreateNewUser}    10s    Cancel button on Create New User modal is not visible
    Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_btnCancelCreateNewUser}   
    wait until element is not visible   ${User_modalCreateNewUser}    10s    Create New User modal is still visible

































# User_The details of the first group listed on textbox are displayed on the group properties
#     Wait Until Keyword Succeeds     1 min   1 sec   page should contain     AutomationTestGroup
#     ${group_name}=       Get Value    xpath=//*[@id="group-name"]
#     Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${group_name}       AutomationTestGroup
#     ${group_des}=        Get Value     xpath=//*[@id="group-description"]
#     Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${group_des}        AutomationTestGroup























# User_Verify newly created user existence
#     [Arguments]     ${user_name}
#     sleep   3s
#     Wait Until Keyword Succeeds     1 min   1 sec   page should contain     ${user_name}
#     Wait Until Keyword Succeeds     1 min   1 sec   page should contain     UNCONFIRMED





#POPUP from admin/user-manage FORM Create New User
User_new user fill new user details
    ${Random_PostFix} =  Generate Random String  2  [NUMBERS]
	Wait Until Keyword Succeeds     1 min   1 sec   Select From List by label    ${User_ddlCreateNewUser_OrganisationTree}       FXDMS Automation
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtUserEmail}    fujitest007+Automation${Random_PostFix}@gmail.com
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtUserFirstName}    test
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtUserSurName}    testsur
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtUserMobile}    0122336598
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtUserPhone}    0552365998
	Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_btnCreateNewUserConfirm}
	Wait Until Keyword Succeeds     1 min   1 sec   page should contain      Success! New user was created









User_Enter the username for filter
    [Arguments]   ${user_name}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtSearchUsername}    ${user_name}

User_Enter first name for filter
    [Arguments]   ${first_name}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtSearchFirstName}    ${first_name}

User_Enter last name for filter
    [Arguments]   ${last_name}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtSearchLastName}    ${last_name}

User_Enter filter text
    [Arguments]   ${filter_text}
    Wait Until Keyword Succeeds     1 min   1 sec   input text    ${User_txtFilter}    ${filter_text}

User_validate entered filter text
    sleep       4s
    Wait Until Keyword Succeeds     1 min   1 sec       page should contain     fxdms

User_Click Cancel button
    Wait Until Keyword Succeeds     1 min   1 sec       click element       ${User_btnCancel}
    #sleep   5s
    #Wait Until Keyword Succeeds     1 min   1 sec       BuiltIn.Should Be Empty         ${User_txtSearchUsername}
    #Textfield Value Should Be

User_User name/First name/Last textfield will be cleared
    Textfield Value Should Be       ${User_txtSearchUsername}       ${EMPTY}
    Textfield Value Should Be       ${User_txtSearchFirstName}       ${EMPTY}
    Textfield Value Should Be       ${User_txtSearchLastName}       ${EMPTY}

User_Maximum 10 records will be listed on results
    Wait Until Keyword Succeeds     1 min   1 sec      List Selection Should Be        ${User_ddlUNumberOFRecordsPerPage}        10

User_validate records per page dropdown list
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain    10
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain    25
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain    50
    Wait Until Keyword Succeeds     1 min   1 sec   page should contain    100

User_Filter records listed on results
    [Arguments]         ${rec}
    Select From List by label        ${User_ddlUNumberOFRecordsPerPage}       ${rec}
    sleep   3s

User_Click page 2
    Wait Until Keyword Succeeds     1 min   1 sec       click element       ${User_btnSecondPage}

User_Click next button
    Wait Until Keyword Succeeds     1 min   1 sec       click element       ${User_btnNextPage}

User_Click Previous button
    Wait Until Keyword Succeeds     1 min   1 sec       click element       ${User_btnPreviousPage}

User_verify removed user
	Wait Until Keyword Succeeds     1 min   1 sec   page should not contain    binoy.batuwitage@fujixerox.com

User_Remove selected users
	Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_btnRemoveSelectedUsers}
	Wait Until Keyword Succeeds     1 min   1 sec   click element    ${User_btnRemoveSelectedUsers}




User_Click on Organisation button
	#Wait Until Keyword Succeeds     1 min   1 sec   click link    ${User_menuOrgnaization}
    ${try1Status}    ${value}=   Run keyword and ignore error    Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${User_menuOrgnaization}
    Run Keyword if      '${try1Status}' == 'PASS'       click element       ${User_menuOrgnaization}
    ${try2Status}      ${value2} =     Run Keyword if      '${try1Status}' == 'FAIL'       Run keyword and ignore error     Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${User_menuOrgnaization_secondElement}
    Run Keyword if      '${try2Status}' == 'PASS'          click element       ${User_menuOrgnaization_secondElement}

User_Click on Organisation child item
	#Wait Until Keyword Succeeds     1 min   1 sec   click link    ${User_menuOrgnaizationMod}
	${try1Status1}    ${value1}=   Run keyword and ignore error    Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${User_menuOrgnaizationMod}
    Run Keyword if      '${try1Status1}' == 'PASS'       click element       ${User_menuOrgnaizationMod}
    ${try2Status1}      ${value3} =     Run Keyword if      '${try1Status1}' == 'FAIL'       Run keyword and ignore error     Wait Until Keyword Succeeds     1 min   1 sec   wait until element is visible       ${User_menuOrgnaizationMod_secondElement}
    Run Keyword if      '${try2Status1}' == 'PASS'          click element       ${User_menuOrgnaizationMod_secondElement}












