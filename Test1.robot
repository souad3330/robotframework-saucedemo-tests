*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot
Suite Setup  Open Browser  ${URL}  ${BROWSER}
Suite Teardown  Close Browser

*** Variables ***
${URL}              https://www.saucedemo.com/
${BROWSER}          firefox
${USERNAME}         standard_user
${PASSWORD}         secret_sauce

##INFO FOR CHECKOUT PAGE
${FIRSTNAME_CHECKOUT}        test
${LASTNAME_CHECKOUT}         test
${POSTALCODE_CHECKOUT}       1223


*** Test Cases ***
Buy product
  Successful login  ${USERNAME}  ${PASSWORD}
  Add a product to cart
  Checkout  ${FIRSTNAME_CHECKOUT}  ${LASTNAME_CHECKOUT}  ${POSTALCODE_CHECKOUT}
