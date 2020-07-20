*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.


*** Variables ***


*** Keywords ***

open browser     [Arguments]        ${server_url}       ${browser} 
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=R9WMA0XBRXJ      platformName=Android         platformVersion=9      browserName=${browser}      
    ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Pixel2      platformName=Android         platformVersion=9      browserName=${browser}        
    # ${status}=      Run keyword and return status       Open Application     http://127.0.0.1:4723/wd/hub       deviceName=Nexus10      platformName=Android         platformVersion=10      browserName=${browser}        
    Run Keyword If  '${status}'=='False'     open browser       ${server_url}       ${browser}
    go to url        ${server_url}

