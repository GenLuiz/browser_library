*** Settings ***
Library   Browser
Variables    ../locators.py

*** Keywords ***
Open the application using the URL ${URL}
    New Browser    chromium    headless=false
    New Context     viewport={'width': 1920, 'height': 1080}
    New Page     ${URL}