*** Settings ***
Library    SeleniumLibrary
Resource          resource.robot


*** Test Cases ***
Test1
    Open Chrome Test
    Go To    http://localhost:7272/Form.html
    Input First Name    Somsong
    Input Last Name     Sandee
    Input Contact Person    Sodsai Sandee
    Input Relationship  Mother
    Input Email         somsong@kkumail.com
    Input Phone         081-111-1234
    Submit Form
    Location Should Contain    http://localhost:7272/Form.html
    Page Should Contain    Please enter your destination!!


Test2
    Open Chrome Test
    Go To    http://localhost:7272/Form.html
    Input First Name    Somsong
    Input Last Name     Sandee
    Input Destination   Europe
    Input Contact Person    Sodsai Sandee
    Input Relationship  Mother
    Input Phone         081-111-1234
    Submit Form
    Location Should Contain    http://localhost:7272/Form.html
    Page Should Contain    *Please enter an email!!


Test3
    Input First Name    Somsong
    Input Last Name     Sandee
    Input Destination   Europe
    Input Contact Person    Sodsai Sandee
    Input Relationship  Mother
    Input Email         somsong@
    Input Phone         081-111-1234
    Submit Form
    Location Should Contain    http://localhost:7272/Form.html
    Page Should Contain    *Please enter a valid email!!

Test4
    Open Chrome Test
    Go To    http://localhost:7272/Form.html
    Input First Name    Somsong
    Input Last Name     Sandee
    Input Destination   Europe
    Input Contact Person    Sodsai Sandee
    Input Relationship  Mother
    Input Phone         081-111-1234
    Location Should Contain    http://localhost:7272/Form.html
    Page Should Contain    *Please enter a phone number!!

Test5
    Open Chrome Test
    Go To    http://localhost:7272/Form.html
    Input First Name    Somsong
    Input Last Name     Sandee
    Input Destination   Europe
    Input Contact Person    Sodsai Sandee
    Input Relationship  Mother
    Input Email         somsong@kkumail.com
    Input Phone         191
    Submit Form
    Location Should Contain    http://localhost:7272/Form.html
    Page Should Contain    Please enter a valid phone number!!

