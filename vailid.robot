*** Settings ***
Library    SeleniumLibrary
Resource          resource.robot


*** Test Cases ***
Test1
    Open Chrome Test
    Go To    http://localhost:7272/Form.html
    Input First Name    Somsong
    Input Last Name     Sandee
    Input Destination   Europe
    Input Contact Person    Sodsai Sandee
    Input Relationship  Mother
    Input Email         somsong@kkumail.com
    Input Phone         081-111-1234
    Submiting Form
    Title Should Be    Completed

    Location Should Contain    http://localhost:7272/Complete.html
    Page Should Contain    Our agent will contact you shortly.
    Page Should Contain    Thank you for your patient.