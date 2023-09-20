*** Settings ***
Resource          ../pages/LoginPage.robot
Resource          ../pages/SecurePage.robot

*** Test Cases ***
Login with Invalid Password
    Open Login Page
    Login With Invalid Password    tomsmith    test
    Displays the message    Your password is invalid!

Login with Invalid Username
    Open Login Page
    Login With Invalid Username    admin    SuperSecretPassword!
    Displays the message    Your username is invalid!

Login with Valid Credentials
    Open Login Page
    Login With Valid Credentials    tomsmith    SuperSecretPassword!
    Login With Successful
