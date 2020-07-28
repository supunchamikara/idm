*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.


*** Variables ***


*** Keywords ***

open browser     [Arguments]        ${server_url}       ${browser} 
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=R9WMA0XBRXJ      platformName=Android         platformVersion=9      browserName=${browser}      
    #${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Pixel2      platformName=Android         platformVersion=9      browserName=${browser}        
    #${status}=      Run keyword and return status       open application	http://127.0.0.1:4723/wd/hub	xcodeOrgId=FX DMS PMO Test Team		wdaConnectionTimeout=600000    automationName=XCUITest       xcodeSigningId=iPhone Developer		deviceName=FX DMS PMO ’s iPhone		platformName=iOS	udid=0dc1d871a25ffcffe62eb09ea7e7649f83747968        platformVersion=13.3   	browserName=Chrome	    startIWDP=true		newCommandTimeout=600
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Nexus10      platformName=Android         platformVersion=10      browserName=${browser}        
    ${status}=      Run keyword and return status       open application	http://127.0.0.1:4723/wd/hub    browserName=safari	    platformName=iOS	deviceName=FX DMS PMO ’s iPhone		platformVersion=13.3		udid=0dc1d871a25ffcffe62eb09ea7e7649f83747968 	    xcodeOrgId=SZRB8P2RU8		newCommandTimeout=360		#launchTimeout=30000		autoAcceptAlerts=true		webviewConnectRetries=12	webkitResponseTimeout=15000		xcodeSigningId=iPhone Developer 	bundleId=com.google.chrome.ios
    Run Keyword If  '${status}'=='False'     open browser       ${server_url}       ${browser}
    go to url        ${server_url}

#open browser     [Arguments]        ${server_url}       ${browser} 
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=R9WMA0XBRXJ      platformName=Android         platformVersion=9      browserName=${browser}      
 #   ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Pixel2      platformName=Android         platformVersion=9      browserName=${browser}        
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Nexus10      platformName=Android         platformVersion=10      browserName=${browser}        
  #  Run Keyword If  '${status}'=='False'     open browser       ${server_url}       ${browser}
  #  go to url        ${server_url}

