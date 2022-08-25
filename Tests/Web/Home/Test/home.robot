*** Settings ***
Resource    ../Steps/resource.robot
Resource    ../../Login/Steps/resource.robot
Variables    ../../../commom/data.py

*** Test Cases ***
I Navigate To Test App 1
    Open the application using the URL ${QA_URL}
    Log-in Application    ${DEFAULT_USERNAME}
    I Select Test App 1

I Navigate To Test App 2 
    Open the application using the URL ${QA_URL}
    Log-in Application    ${DEFAULT_USERNAME}
    I Select Test App 2