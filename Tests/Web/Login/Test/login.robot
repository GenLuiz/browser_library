*** Settings ***
Resource    ../Steps/resource.robot
Variables    ../../../commom/data.py

*** Test Cases ***
Login Application
    Open the application using the URL ${QA_URL}
    Log-in Application    ${DEFAULT_USERNAME}