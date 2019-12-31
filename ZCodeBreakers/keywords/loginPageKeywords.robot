*** Settings ***   
Library            Selenium2Library                                                     
Variables        ../pageObjects/login_page.py
Variables        ../testSuites/variable/variable.py    
   
  
      
  
  
  
*** Keywords ***
Open Asana Home Page And Maximize
    Open Browser   ${target_url}       ${browser}
    Maximize Browser Window   
Enter Username
    Wait Until Element Is Enabled      ${site_username}    
    Input Text     ${site_username}    ${username}    
    
Enter Password
    Wait Until Element Is Enabled       ${site_password}
    Input Text      ${site_password}    ${password}
    
Click SignIn
    Click Button     ${button_login}    
    
Verify LogIn       
    Title Should Be    ${page_title}    
    
