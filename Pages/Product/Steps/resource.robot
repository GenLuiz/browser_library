*** Settings ***
Library   Browser
Variables    ../locators.py

*** Keywords ***
I Should See The Add To Cart Button
    Get Element States    text=Add to Cart    validate    value | visible