*** Settings ***
Library  SeleniumLibrary
Library  PythonCodeDemo.Input
Resource  ../Resources/Resources1.robot


*** Variables ***
${URL}  http://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
Robot First Test Case
    [setup]  Start Browser and Maximize  ${URL}  ${Browser}
    [teardown]  Close Browser Window
    [Documentation]  Basic Demo
    #[Timeout]  8s  Failed to exceute test case
    #Log  ${Res}
    Enter Username Email  Test  testingworldindia@gmail.com
    Sleep   2s
    Clear Element Text  name:fld_username
    Clear Element Text  //input[@name='fld_email']
    #Select Radio Button  add_type  Office
    Select Checkbox  name:terms
    #Click Link  xpath://a[text()='Read Detail']
    ${InputKey}=    get_input_data
    Enter Username Email  ${InputKey}  ${InputKey}
    Sleep   10s
    #Click Button
    #Close Browser

*** Keywords ***
Enter Username Email
    [Arguments]  ${username}  ${email}
    Input Text  name:fld_username  ${username}
    Input Text  //input[@name='fld_email']  ${email}