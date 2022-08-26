*** Settings ***
Resource    ../../../../Pages/Home/Steps/resource.robot
Resource    ../../../../Pages/Login/Steps/resource.robot
Resource    ../../../../Pages/Product/Steps/resource.robot
Variables    ../../../commom/data.py

*** Test Cases ***
I Navigate To Test App 1
    Given Open the application using the URL ${TEST_URL}
    When I Navigate To Men Outerwear
    And Click    text=Men's Tech Shell Full-Zip

I Navigate To Test App 2 
    Given Open the application using the URL ${TEST_URL}
    When I Navigate To Ladies Outerwear
    And Click    text=Ladies Colorblock Wind Jacket
    Then I Should See The Add To Cart Button
    