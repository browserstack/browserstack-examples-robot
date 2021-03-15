*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Item In Orders Should Be Equal To
    [Arguments]   ${orders_item_arg}

    ${orders_items}=     Get Element Count    class=item-view-left-col-inner
    Should Be True  ${orders_items} == ${orders_item_arg}

On Signin Page
    Location Should Contain   https://bstackdemo.com/signin

Confirm Locked User Error
    Element Text Should Be  class=api-error    Your account has been locked.

Confirm Order Greater Than Zero
    ${orders}=     Get Element Count    class=order
    Should Be True  ${orders} > 0
