*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Keywords ***
Start Browser and Maximize
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    #${Title}=  Get Title
    #Log  ${Title}
    #[Return]  ${Title}

Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser
