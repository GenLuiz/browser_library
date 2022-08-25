*** Settings ***
Library   Browser
Variables   ../../../commom/data.py
Variables    ../../../../Pages/Login/locators_azure.py

*** Keywords ***
Open the application using the URL ${URL}
    ${BROWSER_ARGS}=     Set Variable     ["--incognito", "--start-maximized"]
    New Browser    chromium    headless=false  args=${BROWSER_ARGS}     channel=msedge 
    New Page     ${URL}
    ${URL} =    Set Global Variable    ${URL}

Login Azure Portal
    [Arguments]         ${USER_NAME}
    Wait For Elements State    id=${azure_next_btn}    visible
    Fill Text    ${azure_username_field}   ${USER_NAME}
    Click        id=${azure_next_btn}
    Wait For Elements State    ${azure_user_pwd_field}    visible
    Fill Secret    ${azure_user_pwd_field}    ${DEFAULT_PASSWORD}
    Click          id=${azure_next_btn}

Log-in Application
    [Arguments]         ${USER_NAME}
    ${contains} =     Evaluate    "qa" in """${URL}"""
    IF  ${contains}
      Login Azure Portal     ${USER_NAME}
    ELSE
        Wait For Elements State    username    visible
        Fill Text      username    ${USER_NAME}
        Fill Secret    password    ${DEFAULT_PASSWORD}
        Click     Sign In       
    END