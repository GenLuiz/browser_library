*** Settings ***
Library   Browser
Variables    ../locators.py

*** Keywords ***
I Navigate To Men Outerwear
    Wait For Elements State    ${MENS_WEAR}    visible
    Click   ${MENS_WEAR}

I Navigate To Ladies Outerwear
    Wait For Elements State    ${LADIES_WEAR}    visible
    Click   ${LADIES_WEAR}