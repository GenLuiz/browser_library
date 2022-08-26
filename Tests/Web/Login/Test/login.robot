*** Settings ***
Resource    ../../../../Pages/Login/Steps/resource.robot
Variables    ../../../commom/data.py

*** Test Cases ***
Login Application
    Open the application using the URL ${TEST_URL}