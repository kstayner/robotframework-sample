*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/SecurePageResource.robot

*** Keywords ***
SecurePage - Verify Successful Login
    Wait Until Element Is Visible    ${FLASH_ALERT}
    Element Should Contain    ${FLASH_ALERT}    You logged into a secure area!
