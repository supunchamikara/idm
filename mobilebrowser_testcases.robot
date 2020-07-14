*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          IDM-library_test.robot
Suite Setup 	  Set Library Search Order 		 AppiumLibrary 		 SeleniumLibrary
Test Teardown     Config_Close all Application
Suite Teardown    Config_Finalize the Executed Result

*** Test Cases ***

#-------------------------- smoke test start --------------------------------------

IDM-SMK 001
    [Documentation]     Verify successful log-in to portal [Email address as username]
    [Tags]      SMOKE       REGTC		s001
    Login_Access portal
	Config_Save Screenshot    IDM-SMK 001      Access portal
	Login_Click on the sign button
	Config_Save Screenshot    IDM-SMK 001      Click on the sign button
	Login_Input Username        fujitest007+Emailformat@gmail.com
	Config_Save Screenshot    IDM-SMK 001       Input Username
	Login_Input Password        Pa$$w0rd
	Config_Save Screenshot    IDM-SMK 001       Input Password
	Login_Click on Sign-In button
	Config_Save Screenshot    IDM-SMK 001       Click on Sign-In button
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 001      Validate dashbord page

IDM-SMK 002
    [Documentation]     Verify successful log-in to portal [Plaintext as username]
    [Tags]      SMOKE      REGTC		s002
    Login_Access portal
	Config_Save Screenshot    IDM-SMK 002      Access portal
	Login_Click on the sign button
	Config_Save Screenshot    IDM-SMK 002      Click on the sign button
	Login_Input Username        USERPLAINTEXT
	Config_Save Screenshot    IDM-SMK 002       Input Username
	Login_Input Password        Pa$$w0rd
	Config_Save Screenshot    IDM-SMK 002       Input Password
	Login_Click on Sign-In button
	Config_Save Screenshot    IDM-SMK 002       Click on Sign-In button
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 002      Validate dashbord page

IDM-SMK 003
    [Documentation]     Verify successful log-out to portal
    [Tags]      SMOKE         REGTC     s003
    Login_Access portal
	Config_Save Screenshot    IDM-SMK 003      Access portal
	Login_Click on the sign button
	Config_Save Screenshot    IDM-SMK 003      Click on the sign button
	Login_Input Username        fujitest007+Emailformat@gmail.com
	Config_Save Screenshot    IDM-SMK 003       Input Username
	Login_Input Password        Pa$$w0rd
	Config_Save Screenshot    IDM-SMK 003       Input Password
	Login_Click on Sign-In button
	Config_Save Screenshot    IDM-SMK 003       Click on Sign-In button
	Dashbord_menu signout
	Config_Save Screenshot    IDM-SMK-003      menu signout
	Dashbord_click signout in sub menu
	Config_Save Screenshot    IDM-SMK-003     click signout in sub menu 
    Dashbord_Confirm signout
    Config_Save Screenshot    IDM-SMK-003      Confirm signout

IDM-SMK 004
    [Documentation]     Verify language selection - Chinese (Simplified) - 中文(简体)
    [Tags]      SMOKE       s004      REGTC
    Login_Access portal
	Config_Save Screenshot    IDM-SMK 004      Access portal
	Login_Click the -en- at the upper left corner of the page
	Config_Save Screenshot    IDM-SMK 004     Click the -en- at the upper left corner of the page
	Login_Lang change popup validation
	Config_Save Screenshot    IDM-SMK 004     Lang change popup validation
	Login_Select Chinese (Simplified) - 中文(简体)
	Config_Save Screenshot    IDM-SMK 004     Select Chinese (Simplified) - 中文(简体)
	Login_Click change button
	Config_Save Screenshot    IDM-SMK 004     Click change button
	Login_language should be change to Chinese (Simplified)
	Config_Save Screenshot    IDM-SMK 004     language should be change

IDM-SMK 005
    [Documentation]     Verify language selection (Chinese (Traditional) - ‪中文(繁體) )
    [Tags]      SMOKE      REGTC    s005
    Login_Access portal
	Config_Save Screenshot    IDM-SMK 005      Access portal
	Login_Click the -en- at the upper left corner of the page
	Config_Save Screenshot    IDM-SMK 005     Click the -en- at the upper left corner of the page
	Login_Lang change popup validation
	Config_Save Screenshot    IDM-SMK 005     Lang change popup validation
	Login_Select Chinese (Traditional) - ‪中文(繁體)
	Config_Save Screenshot    IDM-SMK 005     Select Chinese (Traditional) - ‪中文(繁體)
	Login_Click change button
	Config_Save Screenshot    IDM-SMK 005     Click change button
	Login_language should be change to Chinese (Traditional)
	Config_Save Screenshot    IDM-SMK 005     language should be change to Chinese (Traditional)

IDM-SMK 006
    [Documentation]     Verify language selection (English)
    [Tags]      SMOKE      REGTC	s006
    Login_Access portal
	Config_Save Screenshot    IDM-SMK 006      Access portal
	Login_Click the -en- at the upper left corner of the page
	Config_Save Screenshot    IDM-SMK 006     Click the -en- at the upper left corner of the page
	Login_Lang change popup validation
	Config_Save Screenshot    IDM-SMK 006     Lang change popup validation
	Login_Select English
	Config_Save Screenshot    IDM-SMK 006     Select English
	Login_Click change button
	Config_Save Screenshot    IDM-SMK 006     Click change button
	Login_language should be change to Eng
	Config_Save Screenshot    IDM-SMK 006     language should be change to Eng

IDM-SMK 007
    [Documentation]     Verify successful navigation to groups tab
    [Tags]      SMOKE   s007      REGTC
    Login_Access to portal successfully
    Config_Save Screenshot    IDM-SMK 007       Access to portal successfully
    Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 007      Validate dashbord page
    Dashbord_go to admin page
    Config_Save Screenshot    IDM-SMK 007      go to admin page
    User_Click on Groups
    Config_Save Screenshot    IDM-SMK 007      Click on Groups
    GroupManage_select organization FXAUTO
    Config_Save Screenshot    IDM-SMK 007      select org FXAUTO
    User_Validate Groups page propaties
    Config_Save Screenshot    IDM-SMK 007      Validate Groups page propaties
    User_The details of the first group listed on textbox are displayed on the group properties AutomationTestGroup     #edited
    Config_Save Screenshot    IDM-SMK 007      The details of the first group listed on textbox are displayed on the group properties

IDM-SMK 008
    [Documentation]     Verify successful navigation to organisation tab (modify organisation)
    [Tags]      SMOKE       s008      REGTC
    Login_Access to portal successfully
	Config_Save Screenshot    IDM-SMK 008      Access to portal successfully
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 008      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-SMK 008      go to admin page
	User_Click on Organisation
	Config_Save Screenshot    IDM-SMK 008      Click on Organisation
	User_Click on Modify Organisation
	Config_Save Screenshot    IDM-SMK 008      Click on Modify Organisation
	User_Validate manage organisation
	Config_Save Screenshot    IDM-SMK 008      Validate manage organisation
	User_Select organisation on organisation text box		FXAUTO
	Config_Save Screenshot    IDM-SMK 008      organisation on organisation text box
	User_Org details should be displayed on orgnaization propaties
	Config_Save Screenshot    IDM-SMK 008      Org details should be displayed on orgnaization propaties

IDM-SMK 009
    [Documentation]     Verify successful navigation to organisation tab (Password policies)
    [Tags]      SMOKE       s009      REGTC
    Login_Access to portal successfully
	Config_Save Screenshot    IDM-SMK 009       Access to portal successfully
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 009      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-SMK 009      go to admin page
	User_Click on Organisation
	Config_Save Screenshot    IDM-SMK 009      Click on Organisation
    User_Click on Organisation password policy
    Config_Save Screenshot    IDM-SMK 009      Click on Organisation password policy
    User_Validate password policy
    Config_Save Screenshot    IDM-SMK 009      Validate password policy
    User_Select organisation on organisation text box		FXAUTO
    Config_Save Screenshot    IDM-SMK 009      Select organisation on organisation text box in password policy FXAUTO
	User_Password Policy setting details should be displayed on Policy settings section
	Config_Save Screenshot    IDM-SMK 009      Password Policy setting details should be displayed on Policy settings section

IDM-SMK 010
    [Documentation]     Verify successful navigation to Roles tab
    [Tags]      SMOKE       s010      REGTC
    Login_Access to portal successfully
    Config_Save Screenshot    IDM-SMK 010       Access to portal successfully
    Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 010      Validate dashbord page
    Dashbord_go to admin page
    Config_Save Screenshot    IDM-SMK 010      go to admin page
    User_Click on roles
    Config_Save Screenshot    IDM-SMK 010     Click on roles
    User_Validate roles
    Config_Save Screenshot    IDM-SMK 010     Validate roles
    Role_select role organization       FXAUTO
    Config_Save Screenshot    IDM-SMK 010       select role organization FXAUTO
    Role_validate role propaties
    Config_Save Screenshot    IDM-SMK 010     validate role propaties
    Role_validate role propaties text boxes values      FXDMS Read Only    #edited
    Config_Save Screenshot    IDM-SMK 010     validate role propaties text boxes values

IDM-SMK 011
    [Documentation]     Verify successful navigation to applications tab
    [Tags]      SMOKE   s011       REGTC
    Login_Access to portal successfully
    Config_Save Screenshot    IDM-SMK 011       Access to portal successfully
    Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 011      Validate dashbord page
    Dashbord_go to admin page
    Config_Save Screenshot    IDM-SMK 011      go to admin page
    User_Click on application
    Config_Save Screenshot    IDM-SMK 011      Click on application
    User_Validate application
    Config_Save Screenshot    IDM-SMK 011     Validate application
    AppManage_select org        FXAUTO
    Config_Save Screenshot    IDM-SMK 011     Select Organisation FXAUTO
    AppManage_validate application propaties
    Config_Save Screenshot    IDM-SMK 011     validate application propaties
    AppManage_Application details for the first app listed on the textbox should reflect on Application Properties section      app     #edited 
    Config_Save Screenshot    IDM-SMK 011     Application details for the first app listed on the textbox should reflect on Application Properties section 

IDM-SMK 012
    [Documentation]     Verify successful creation of user
    [Tags]      SMOKE       s012      REGTC
    Login_Access to portal successfully
    Config_Save Screenshot    IDM-SMK 012      Access to portal successfully
    Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 012      Validate dashbord page
    Dashbord_go to admin page
    Config_Save Screenshot    IDM-SMK 012      go to admin page
    User_goto user page
    Config_Save Screenshot    IDM-SMK 012      goto user page
    User_new user Select organisation       FXAUTO
    Config_Save Screenshot    IDM-SMK 012      new user Select organisation FXAUTO
    ${user_name} =    User_new user Fill out Email firstname and lastname fields    
    Config_Save Screenshot    IDM-SMK 012      new user Fill out Email firstname and lastname fields
    User_new user Press create button
    Config_Save Screenshot    IDM-SMK 012      new user Press create button
    User_new user Enter the username of the new USER in the user names text field   ${user_name}
    Config_Save Screenshot    IDM-SMK 012      new user Enter the username of the new USER in the user names text field
    User_Verify user search transaction     
    Config_Save Screenshot    IDM-SMK 012      Verify user search transaction
    User_Verify newly created user existence    ${user_name}
    Config_Save Screenshot    IDM-SMK 012     Verify newly created user existence    #changes

IDM-SMK 013
	[Documentation]    Verify successful creation of group
    [Tags]      SMOKE   s013      REGTC		
	Login_System Login
	Config_Save Screenshot    IDM-SMK 013  System-Login
	Dashbord_go to admin page
	Config_Save Screenshot    IDM-SMK 013  go to admin page
	User_Click on Groups
	Config_Save Screenshot    IDM-SMK 013  Click on Groups
    GroupManage_select organization FXAUTO
	Config_Save Screenshot    IDM-SMK 013   select org FXAUTO
	GroupManage_Click on Create new group
	Config_Save Screenshot    IDM-SMK 013  Click on Create new group
	${Random_Group_Name} =      GroupManage_Fill-out Group name and Group description fields
	Config_Save Screenshot    IDM-SMK 013   Fill-out Group name and Group description fields
	GroupManage_Select Role FXDMS Read Only
	Config_Save Screenshot    IDM-SMK 013   Select Role FXDMS Read Only
	GroupManage_Click create new group button
	Config_Save Screenshot    IDM-SMK 013   Click create new group button
	GroupManage_Select desired group        ${Random_Group_Name}
	Config_Save Screenshot    IDM-SMK 013   Select desired group ${Random_Group_Name}

IDM-SMK 015
	[Documentation]     Verify successful creation of role
    [Tags]      SMOKE       s015      REGTC
	Login_Access to portal successfully
	Config_Save Screenshot    IDM-SMK 015       Access to portal successfully
	Dashbord_go to admin page
	Config_Save Screenshot    IDM-SMK 015         go to admin page
	Role_Click on roles
	Config_Save Screenshot    IDM-SMK 015         Click_on roles
	AppManage_select org    FXAUTO
	Config_Save Screenshot    IDM-SMK 015         Select Organisation FXAUTO
	Role_Click on Create new Role
	Config_Save Screenshot    IDM-SMK 015         Click on Create new Role
    ${Random_Role_Name} =   Role_Fill-out text fields
    Config_Save Screenshot    IDM-SMK 015         Fill-out text fields
    Role_Click create buton     ${Random_Role_Name}
    Config_Save Screenshot    IDM-SMK 015         Click create buton
    Role_On roles list Select role      ${Random_Role_Name}
    Config_Save Screenshot    IDM-SMK 015      On roles list Select role ${Random_Role_Name}

IDM-SMK 016
	[Documentation]     Verify successful creation of app
    [Tags]      SMOKE       s016      REGTC
	Login_Access to portal successfully
	Config_Save Screenshot    IDM-SMK 016       Access to portal successfully
	Dashbord_go to admin page
	Config_Save Screenshot    IDM-SMK 016       go to admin page
	AppManage_Click on Applications
	Config_Save Screenshot    IDM-SMK 016       Click on Applications
	AppManage_select org    FXAUTO
	Config_Save Screenshot    IDM-SMK 016       select org FXAUTO
	AppManage_Click on Create new application
	Config_Save Screenshot    IDM-SMK 016       Click on Create new application
    ${Random_App_Name} =    AppManage_Fill out text fields
    Config_Save Screenshot    IDM-SMK 016       Fill out text fields
    AppManage_Click on create button        ${Random_App_Name}
    Config_Save Screenshot    IDM-SMK 016       Click on create button
    AppManage_select organization from main list        ${Random_App_Name}
    Config_Save Screenshot    IDM-SMK 016       select organization from main list ${Random_App_Name}

# same as testcase No : IDM-SMK 011
IDM-SGN 017
    [Documentation]     Verify successful user activation
    [Tags]      SMOKE      REGTC	s017
    Login_Access to portal successfully
    Config_Save Screenshot    IDM-SMK 017       Access to portal successfully
    Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-SMK 017      Validate dashbord page
    Dashbord_go to admin page
    Config_Save Screenshot    IDM-SMK 017      go to admin page
    User_Click on application
    Config_Save Screenshot    IDM-SMK 017      Click on application
    User_Validate application
    Config_Save Screenshot    IDM-SMK 017     Validate application
    AppManage_select org        FXAUTO
    Config_Save Screenshot    IDM-SMK 017     Select Organisation FXAUTO
    AppManage_validate application propaties
    Config_Save Screenshot    IDM-SMK 017     validate application propaties
    AppManage_Application details for the first app listed on the textbox should reflect on Application Properties section      app     #edited 
    Config_Save Screenshot    IDM-SMK 017     Application details for the first app listed on the textbox should reflect on Application Properties section 

IDM-SMK 019
	[Documentation]     Verify successful addition of user to a group
    [Tags]      SMOKE       s019      REGTC
	Login_Access to portal successfully
	Config_Save Screenshot    IDM-SMK 019       Access to portal successfully
	Dashbord_go to admin page
	Config_Save Screenshot    IDM-SMK 019     DASHBOARD-go to admin page
	User_Click on Groups
	Config_Save Screenshot    IDM-SMK 019     Click on Groups
	GroupManage_select organization FXAUTO
    Config_Save Screenshot    IDM-SMK 019      select org FXAUTO
	GroupManage_Click on Add Participants
	Config_Save Screenshot    IDM-SMK 019     Click on Add Participants
	GroupManage_Select desired group        AutomationTestGroup
	Config_Save Screenshot    IDM-SMK 019     Select desired group AutomationTestGroup
	GroupManage_Search for usename      FXAUTOUSER1
	Config_Save Screenshot    IDM-SMK 019       Search for usename FXAUTOUSER1
	GroupManage_Click on Search
	Config_Save Screenshot    IDM-SMK 019     Click on Search
	# GroupManage_click user to be added
	# Config_Save Screenshot    IDM-SMK 019     click user to be added
	# GroupManage_click add user button
	# Config_Save Screenshot    IDM-SMK 019     click add user button
	# GroupManage_Click on Participating users
	# Config_Save Screenshot    IDM-SMK 019     Click on Participating users
	# GroupManage_Select desired group        AutomationTestGroup
	# Config_Save Screenshot    IDM-SMK 019     Select desired group2 AutomationTestGroup
	# GroupManage_user should be listed      FXAUTOUSER1
	# Config_Save Screenshot    IDM-SMK 019     user should be listed FXAUTOUSER1

#-------------------------- smoke test end ----------------------------------------

#-------------------------- demo test start ---------------------------------------

IDM-Demo-001
    [Documentation]     Verify successful log in to IDM portal
    [Tags]          DEMO	001
    Login_System Login
	Config_Save Screenshot    IDM-Demo-001      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-001      Validate dashbord page

IDM-Demo-002
    [Documentation]     Verify successful user search transaction
    [Tags]          DEMO    002
    Login_System Login
	Config_Save Screenshot    IDM-Demo-002      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-002      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-Demo-002      go to admin page
	User_Verify user search transaction
	Config_Save Screenshot    IDM-Demo-002      Verify user search transaction

IDM-Demo-003
    [Documentation]     Verify successful view user of User details
    [Tags]          DEMO		003
    Login_System Login
	Config_Save Screenshot    IDM-Demo-003      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-003      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-Demo-003      go to admin page
	User_Verify user search transaction
	Config_Save Screenshot    IDM-Demo-003      Verify user search transaction
	User_Click user from the search list
	Config_Save Screenshot    IDM-Demo-003      Click user from the search list
	User_Validate popup tabs availability
	Config_Save Screenshot    IDM-Demo-003      Validate popup tabs availability
	User_Validate user permission tab propaties availability
	Config_Save Screenshot    IDM-Demo-003     Validate user permission tab propaties availability
	User_Validate contact info tab propaties availability
	Config_Save Screenshot    IDM-Demo-003     Validate contact info tab propaties availability
	User_Validate user details tab propaties availability
	Config_Save Screenshot    IDM-Demo-003     Validate user details tab propaties availability

IDM-Demo-004
    [Documentation]     Verify successful navigation to Group menu
    [Tags]      DEMO	004
    Login_System Login
	Config_Save Screenshot    IDM-Demo-004      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-004      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-Demo-004      go to admin page
	User_Click on Groups
	Config_Save Screenshot    IDM-Demo-004      Click on Groups
	User_Validate Groups page propaties
	Config_Save Screenshot    IDM-Demo-004      Validate Groups page propaties
	User_Validate participating users tab propaties
	Config_Save Screenshot    IDM-Demo-004     Validate participating users tab propaties
	User_Validate add participats propaties
	Config_Save Screenshot    IDM-Demo-004     Validate add participats propaties
	User_Validate group propaties tab
	Config_Save Screenshot    IDM-Demo-004     Validate group propaties tab

IDM-Demo-005
    [Documentation]     Verify successful navigation to Modify Organisation menu
    [Tags]      DEMO		005
    Login_System Login
	Config_Save Screenshot    IDM-Demo-005      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-005      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-Demo-005      go to admin page
	User_Click on Organisation
	Config_Save Screenshot    IDM-Demo-005      Click on Organisation
	User_Click on Modify Organisation
	Config_Save Screenshot    IDM-Demo-005      Click on Modify Organisation
	User_Validate manage organisation
	Config_Save Screenshot    IDM-Demo-005      Validate manage organisation

IDM-Demo-006
    [Documentation]     Verify successful navigation to Password Policy menu
    [Tags]      DEMO	006
    Login_System Login
	Config_Save Screenshot    IDM-Demo-006      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-006      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-Demo-006      go to admin page
	User_Click on Organisation
	Config_Save Screenshot    IDM-Demo-006      Click on Organisation
    User_Click on Organisation password policy
    Config_Save Screenshot    IDM-Demo-006      Click on Organisation password policy
    User_Validate password policy
    Config_Save Screenshot    IDM-Demo-006      Validate password policy

IDM-Demo-007
    [Documentation]     Verify successful navigation to Role menu
    [Tags]      DEMO	007
    Login_System Login
	Config_Save Screenshot    IDM-Demo-007      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-007      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-Demo-007      go to admin page
	User_Click on roles
	Config_Save Screenshot    IDM-Demo-007     Click on roles
	User_Validate roles
	Config_Save Screenshot    IDM-Demo-007     Validate roles
	User_Validate role participating users tab propaties
	Config_Save Screenshot    IDM-Demo-007    Validate role participating users tab propaties
	User_Validate role add participats propaties
	Config_Save Screenshot    IDM-Demo-007    Validate role add participats propaties
	User_Validate role group propaties tab
	Config_Save Screenshot    IDM-Demo-007    Validate role group propaties tab

IDM-Demo-008
    [Documentation]     Verify successful navigation to Application menu
    [Tags]      DEMO		008
    Login_System Login
	Config_Save Screenshot    IDM-Demo-008      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-008      Validate dashbord page
    Dashbord_go to admin page
	Config_Save Screenshot    IDM-Demo-008      go to admin page
	User_Click on application
	Config_Save Screenshot    IDM-Demo-008      Click on application
	User_Validate application
	Config_Save Screenshot    IDM-Demo-008     Validate application

IDM-Demo-009
    [Documentation]     Verify successful sign out transaction
    [Tags]      DEMO		009
    Login_System Login
	Config_Save Screenshot    IDM-Demo-009      System Login
	Dashbord_Validate dashbord page
    Config_Save Screenshot    IDM-Demo-009      Validate dashbord page
    Dashbord_menu signout
	Config_Save Screenshot    IDM-Demo-009      menu signout
	Dashbord_click signout in sub menu
	Config_Save Screenshot    IDM-Demo-009     click signout in sub menu 
    Dashbord_Confirm signout
    Config_Save Screenshot    IDM-Demo-009      Confirm signout

#-------------------------- demo test end ----------------------------------------