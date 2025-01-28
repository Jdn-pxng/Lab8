*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROME_BROWSER_PATH}    C:/chromeTest/chrome-win64/chrome.exe
${CHROME_DRIVER_PATH}    C:/chromeTest/chromedriver-win64/chromedriver.exe
${options}    binary_location=${CHROME_BROWSER_PATH}
${URL}    https://www.kku.ac.th
*** Keywords ***
Open Chrome Test
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    ${options.binary_location}    Set Variable    ${CHROME_BROWSER_PATH}
    ${service}    Evaluate    sys.modules["selenium.webdriver.chrome.service"].Service(executable_path="${CHROME_DRIVER_PATH}")
    Create WebDriver    Chrome    options=${options}    service=${service}

Input First Name
    [Arguments]    ${firstname}
    Input Text    id=firstname    ${firstname}

Input Last Name
    [Arguments]    ${lastname}
    Input Text    id=lastname    ${lastname}

Input Destination
    [Arguments]    ${destination}
    Input Text    id=destination    ${destination}

Input Contact Person
    [Arguments]    ${contactperson}
    Input Text    id=contactperson    ${contactperson}

Input Relationship
    [Arguments]    ${relationship}
    Input Text    id=relationship    ${relationship}

Input Email
    [Arguments]    ${email}
    Input Text    id=email    ${email}

Input Phone
    [Arguments]    ${phone}
    Input Text    id=phone    ${phone}

Submiting Form
    Click Button    id=submitButton

Login Page Should Be Open
    Title Should Be    Login Page

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Submit Credentials
    Click Button    login_button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page