*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Create User And Go To Register Page

*** Test Cases ***
Register With Valid Username And Password
    Set Username  marjatta
    Set Password  marjatta123
    Set Password Confirmation  ville123
    Submit Registration Credentials
    Register Should Succeed

Register With Too Short Username And Valid Password
    Set Username  sa
    Set Password  moisara123
    Set Password Confirmation  ville123
    Submit Registration Credentials
    Register Should Fail With Message  Username is too short!