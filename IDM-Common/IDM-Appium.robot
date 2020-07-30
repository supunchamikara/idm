*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.


*** Variables ***


*** Keywords ***

open browser     [Arguments]        ${server_url}       ${browser} 
    Run Keyword If  '${device}'=='iPhone8Emulator'        Open Application      http://127.0.0.1:4723/wd/hub        deviceName=iPhone 8         platformName=iOS         platformVersion=13.4      browserName=${browser}      startIWDP=true      newCommandTimeout=600       xcodeSigningId=iPhone Developer     automationName=XCUITest 
    Run Keyword If  '${device}'=='iPhone8'        open application	    http://127.0.0.1:4723/wd/hub        browserName=${browser}	        platformName=iOS	    deviceName=FX DMS PMO ’s iPhone		platformVersion=13.3		udid=0dc1d871a25ffcffe62eb09ea7e7649f83747968 	    xcodeOrgId=SZRB8P2RU8		newCommandTimeout=360
    Run Keyword If  '${device}'=='AndroidPixel2Emulator'        Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Pixel2      platformName=Android         platformVersion=9      browserName=${browser}
    Run Keyword If  '${device}'=='AndroidS8'        Open Application     http://127.0.0.1:4723/wd/hub       deviceName=R9WMA0XBRXJ      platformName=Android         platformVersion=9      browserName=${browser}
    go to url        ${server_url}

#open browser     [Arguments]        ${server_url}       ${browser} 
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=R9WMA0XBRXJ      platformName=Android         platformVersion=9      browserName=${browser}      
 #   ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Pixel2      platformName=Android         platformVersion=9      browserName=${browser}        
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Nexus10      platformName=Android         platformVersion=10      browserName=${browser}        
  #  Run Keyword If  '${status}'=='False'     open browser       ${server_url}       ${browser}
  #  go to url        ${server_url}

