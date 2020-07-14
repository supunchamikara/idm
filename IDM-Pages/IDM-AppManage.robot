*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.


*** Variables ***
#page Application manage
# ${AppManage_btnApplication}     		                    css=a[href='../admin/applications-manage.html']
# ${AppManage_btnCreateNewApplication}                   css=a.btn.btn-success.pull-right
# ${AppManage_ddlNewAppOrganizattion}                     jquery=select[id='new-application-organisation']:visible
# ${AppManage_ddlNewAppOrganizattion_secondElement}                xpath=//*[@id="organisation"]
# ${AppManage_txtApplicationName}                         jquery=input[id='new-application-name']:visible
# ${AppManage_txtApplicationDescription}                  jquery=input[id='new-application-description']:visible
# ${AppManage_btnCreateNewApplicationConfirm}                   css=button[href='#']

# ${AppManage_ddlNewAppOrganizattionPop}              xpath=//*[@id="new-application-organisation"]
# ${AppManage_ddlNewAppOrganizattionPop_secondElement}          xpath=//html/body/div[1]/div[2]/form/div/div[2]/div[1]/div/div/select

# ${AppManage_ddlSelectOrgnizationFromList}              xpath=//*[@id="application-list"]
# ${AppManage_clickApp}           xpath=//*[@id="application-list"]/option[3]

${AppManage_ddlOrganization}          xpath=//select[@id="organisation"]
${AppManage_ddlOrganization_name}          xpath=//option[text()="ORG_NAME"]
${AppManage_ddlOrganization_name_popup}          xpath=//select[@id="new-application-organisation"]/option[text()="ORG_NAME"]

${AppManage_ddlApplicationList}          xpath=//select[@id="application-list"]
${AppManage_ddlApplicationList_name}          xpath=//option[text()="APP_NAME"]

${AppManage_txtApplicationName}             xpath=//*[@id="application-name"]
${AppManage_txtApplicationDescription}      xpath=//*[@id="application-description"]

${AppManage_txtApplicationName_popup}             xpath=//*[@id="new-application-name"]
${AppManage_txtApplicationDescription_popup}      xpath=//*[@id="new-application-description"]

${AppManage_btnApplication}                 xpath=//a[text()="Applications"]
${AppManage_btnCreateNewApplication}        xpath=//span[text()="Create new application"]

${AppManage_ddlNewAppOrganizattionPop}      xpath=//select[@id="new-application-organisation"]
${AppManage_btnCreateNewApplicationConfirm}     xpath=//button[text()="Create"]

*** Keywords ***

AppManage_select organization from main list
    [Arguments]    ${org}
    AppManage_Application details for the first app listed on the textbox should reflect on Application Properties section      ${org}

AppManage_Click on create button
    [Arguments]     ${Random_App_Name}
    click element    ${AppManage_btnCreateNewApplicationConfirm}
	Wait Until Page Contains     ${Random_App_Name}     20s

AppManage_select org in popup
    [Arguments]    ${org}
    Wait Until Page Contains Element         ${AppManage_ddlNewAppOrganizattionPop}       20 s
    click element     ${AppManage_ddlNewAppOrganizattionPop} 
    sleep   6s
    ${AppManage_ddlOrganization_name_popup} =       Replace String    ${AppManage_ddlOrganization_name_popup}    ORG_NAME    ${org}
    Wait Until Page Contains Element         ${AppManage_ddlOrganization_name_popup}       20 s
    click element     ${AppManage_ddlOrganization_name_popup} 


AppManage_Fill out text fields
    ${Random_App_Name} =  Generate Random String  6  [UPPER]
    AppManage_select org in popup       FXAUTO
	input text    ${AppManage_txtApplicationName_popup}    ${Random_App_Name}
	input text    ${AppManage_txtApplicationDescription_popup}    ${Random_App_Name}    #testapp2 description
    [Return]    ${Random_App_Name}

AppManage_Click on Create new application
	click element    ${AppManage_btnCreateNewApplication}

AppManage_Click on Applications
    Wait Until Page Contains Element         ${AppManage_btnApplication}       20 s
	click element    ${AppManage_btnApplication}

AppManage_Application details for the first app listed on the textbox should reflect on Application Properties section 
    [Arguments]     ${app}
    Wait Until Page Contains Element         ${AppManage_ddlApplicationList}       20 s
    click element     ${AppManage_ddlApplicationList} 
    ${AppManage_ddlApplicationList_name} =       Replace String    ${AppManage_ddlApplicationList_name}    APP_NAME    ${app}
    Wait Until Page Contains Element         ${AppManage_ddlApplicationList_name}       20 s
    click element     ${AppManage_ddlApplicationList_name} 
    ${app_name}=       Get Element Attribute    ${AppManage_txtApplicationName}       value
    Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${app_name}       ${app}
    ${app_des}=        Get Element Attribute     ${AppManage_txtApplicationDescription}       value
    Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${app_des}        ${app} 

AppManage_validate application propaties
    Wait Until Page Contains     Application name
    Wait Until Page Contains     Application description
    Wait Until Page Contains     Roles

AppManage_select org
    [Arguments]    ${org}
    Wait Until Page Contains Element         ${AppManage_ddlOrganization}       20 s
    click element     ${AppManage_ddlOrganization} 
    sleep    3s
    ${AppManage_ddlOrganization_name} =       Replace String    ${AppManage_ddlOrganization_name}    ORG_NAME    ${org}
    Wait Until Page Contains Element         ${AppManage_ddlOrganization_name}       20 s
    click element     ${AppManage_ddlOrganization_name} 
    sleep    3s


















# -------------------------------------------------





   


# AppManage_Application details for the first app listed on the textbox should reflect on Application Properties section 
#     Wait Until Keyword Succeeds     1 min   1 sec   page should contain     FXDMS Read Only
#     ${app_name}=       Get Value    xpath=//*[@id="application-name"]
#     Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${app_name}       app
#     ${app_des}=        Get Value     xpath=//*[@id="application-description"]
#     Wait Until Keyword Succeeds     1 min   1 sec   Should Be Equal     ${app_des}        app    





#https://envl.portal.fxdms.net/up/admin/applications-manage.html page contents
AppManage_Enter application name and description
    ${Random_App_Name} =  Generate Random String  6  [UPPER]
    AppManage_select org in popup       ORG_USEREMAILFORMAT
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${AppManage_txtApplicationName}    ${Random_App_Name}
	Wait Until Keyword Succeeds     1 min   1 sec   input text    ${AppManage_txtApplicationDescription}    testapp2 description
	Wait Until Keyword Succeeds     1 min   1 sec   click button    ${AppManage_btnCreateNewApplicationConfirm}
	Wait Until Keyword Succeeds     1 min   1 sec   page should contain    ${Random_App_Name}






#https://envl.portal.fxdms.net/up/admin/applications-manage.html page contents
AppManage_Select Organisation
	AppManage_select org    FXDMS

AppManage_Select ORG_USERMAILFORMAT Organisation
	AppManage_select org    ORG_USEREMAILFORMAT

#https://envl.portal.fxdms.net/up/admin/applications-manage.html page contents


#https://envl.portal.fxdms.net/up/admin/applications-manage.html page contents

