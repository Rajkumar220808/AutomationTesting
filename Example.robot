*** Settings ***
Library           Selenium2Library
Library           XML
Library           SudsLibrary
Library           SSHLibrary
Library           OperatingSystem
Library           Jirafunction.py
Library           Collections
Library           ExcelRobot

*** Test Cases ***
Test
    [Tags]    ONE
    Open Browser    https://www.udemy.com/complete-python-bootcamp/learn/lecture/9388528#content    gc
    Selenium2Library.Input Text    //input[@title="Search"]    Rose
    Click Element    (//span[text()='rose'])[1]
    Click Element    (//input[@value="Google Search"])[1]

dasdsd
    ${XML}    Set Variable    <example> \ \ <first id="1">text</first> \ \ <second id="2"> \ \ \ \ <child/> \ \ </second> \ \ <third> \ \ \ \ <child>more text</child> \ \ \ \ <second id="child"/> \ \ \ \ <child><grandchild/></child> \ \ </third> \ \ <html> \ \ \ \ <p> \ \ \ \ \ \ Text with <b>bold</b> and <i>italics</i>. \ \ \ \ </p> \ \ </html> </example>
    ${Request}    Parse Xml    ${XML}
    log    ${Request.tag}
    Comment    ${First}    Get Element    ${Request}    first
    Comment    log    ${First.text}

Suds
    Create Soap Client    http://www.dneonline.com/calculator.asmx?WSDL
    ${obj}    Create Wsdl Object    Add
    Set Wsdl Object Attribute    ${obj}    intA    6
    Set Wsdl Object Attribute    ${obj}    intB    8
    ${Response}    Call Soap Method    Add    ${obj}
    log    ${Response}
    ${Soap}    Get Last Received
    log    ${Soap}
    Comment    ${root}    Parse Xml    ${Soap}
    Comment    XML.Element Text Should Be    ${root}    18    //AddResponse

ssh
    Open Connection    10.164.235.18
    Login    ubuntu    ubuntu
    ${output}    Execute Command    df -h
    log    ${output}

Linux Login
    open connection    10.164.235.18
    login    ubuntu    ubuntu
    ${output}    execute command    df -h
    log    ${output}

Folder
    Create Directory    C:/Users/ezxxxra/Desktop/Robot_Testing/Ericsson

Shadow
    Open Browser    https://131.160.198.246:8443/ecde-ui/#    gc
    Sleep    10s
    Input Text    //*[@id="username"]    wish
    Input Text    //*[@id="password"]    Wish@123
    Click Element    //*[contains(text(),'Sign in')]
    Sleep    5s
    ${a}    Get Element    tag:eui-container
    log    ${a}

dasadsDsD
    log    help(Open Browser)

siva
    @{values}    ExteranetExcelRead    C:/Users/ezxxxra/Desktop/Python Automation/Data.xlsx
    Comment    log    ${values}
    : FOR    ${i}    IN    @{values}
    \    &{Dict}    set variable    ${i}
    \    log    ${Dict}
    \    ${Desc}    Get From Dictionary    ${Dict}    Test Case Description
    \    log    ${Desc}

set variable
