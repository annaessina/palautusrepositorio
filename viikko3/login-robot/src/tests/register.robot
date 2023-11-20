*** Settings ***
Resource  resource.robot
Test Setup  Create User And Input Register Command


*** Test Cases ***
Register With Valid Username And Password
    Input Credentials  kalle123  kalle1234
    Output Should Contain  New user registered

Register With Already Taken Username And Valid Password
    Input Credentials  kalle  kalle1234
    Output Should Contain  User with username kalle already exists

Register With Too Short Username And Valid Password
    Input Credentials  mo  kalle1234
    Output SHould Contain  Username is too short!

Register With Enough Long But Invalid Username And Valid Password
    Input Credentials  ääöö  password123
    Output Should Contain  Username should consist of letters ^[a-z]+$

Register With Valid Username And Too Short Password
    Input Credentials  moikkaa  lo 
    Output Should Contain  Password is too short!


Register With Valid Username And Long Enough Password Containing Only Letters
    Input Credentials  heeeei  mitenmenee
    Output Should Contain  Password must contain something other than letters a-z


*** Keywords ***
Create User And Input Register Command
    Create User  kalle  kalle123
    Input Register Command