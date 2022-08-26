*** Settings ***
Library   Browser
Variables    ../locators.py

*** Keywords ***
I Select Test App 1
    Wait For Elements State    ${TEST_APP1}    visible
    Click   selector=${TEST_APP1}

I Select Test App 2
    Wait For Elements State    ${TEST_APP2}    visible
    TRY
        Click   selector=${TEST_APP2}
    EXCEPT
        Log    Trying to navigate and click again
    FINALLY
        Click   selector=${RIGHT_ARROW_BTN}
        Click   selector=${TEST_APP2}
    END