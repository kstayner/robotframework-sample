*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/LoginPageResource.robot
Variables         ../settings.py

*** Keywords ***
Open Login Page
    Open Browser  ${BASE_URL}/login  ${BROWSER}
    Set Window Size    1920    1080

Login With Valid Credentials
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Submit Button

Login With Invalid Password
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Submit Button

Login With Invalid Username
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Submit Button

Login With Successful 
    Wait Until Element Is Visible    ${FLASH_ALERT}
    Element Should Contain    ${FLASH_ALERT}    You logged into a secure area!

Displays the message
    [Arguments]    ${message}
    Wait Until Element Is Visible    ${FLASH_ALERT}
    Element Should Contain    ${FLASH_ALERT}    ${message}
