*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}       id:username
${PASSWORD_FIELD}       id:password
${SUBMIT_BUTTON}        css:button[type="submit"]
${FLASH_ALERT}          id:flash

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Submit Button
    Click Element    ${SUBMIT_BUTTON}
