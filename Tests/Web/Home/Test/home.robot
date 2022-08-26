*** Settings ***
Resource    ../../../../Pages/Home/Steps/resource.robot
Resource    ../../../../Pages/Login/Steps/resource.robot
Variables    ../../../commom/data.py

*** Test Cases ***
I Navigate To Test App 1
    Open the application using the URL ${TEST_URL}
    I Select Test App 1

I Navigate To Test App 2 
    Open the application using the URL ${TEST_URL}
    I Select Test App 2