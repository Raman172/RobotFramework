*** Settings ***
Documentation   Add Product to Cart and Checkout
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
iRobot - Create Test Run case with only mandatory fields and no VIS form
    [Tags]  TestAutomation_BLM-1
    open browser    https://www.saucedemo.com/  chrome
    Maximize Browser Window
    input text  id:user-name    standard_user
    input text  id:password     secret_sauce
    click element   id:login-button
    Select From List By Label  class:product_sort_container  Price (low to high)
    capture page screenshot
    click element   id:add-to-cart-sauce-labs-backpack
    click element   class:shopping_cart_link
    click element   id:checkout
    input text  id:first-name   Test
    input text  id:last-name    User
    input text  id:postal-code  250003
    click element   id:continue
    click element   id:finish
    Element Text Should Be  class:complete-header   Thank you for your order!
    capture page screenshot
    close browser
