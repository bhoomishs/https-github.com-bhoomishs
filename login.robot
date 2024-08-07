*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com
${browser}      Chrome

*** Test Cases ***
Open Browser
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Enter Credentials
    Click Element       xpath://button[@type='submit']
    Page should contain     Dashboard
