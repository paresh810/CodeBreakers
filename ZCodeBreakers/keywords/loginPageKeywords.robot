*** Settings ***
Library    Selenium2Library    
Variables    ../pageObjects/login_page.py
Variables    ../variable/variable.py




*** Keywords ***
Open Asana Home Page And Maximize
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --no-sandbox   
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --disableGpu
    Open Browser    ${targetURL}    ${browser}
    Maximize Browser Window
    
Enter Username
    Wait Until Element Is Enabled    ${site_username}    
    Input Text     ${siteUsername}    ${username}    
    
Enter Password
    Wait Until Element Is Enabled    ${site_password}
    Input Text     ${site_password}    ${password}
    
Click SignIn
    Click Button    ${button_login}    
    
Verify LogIn
    Title Should Be    ${page_title}     
    
