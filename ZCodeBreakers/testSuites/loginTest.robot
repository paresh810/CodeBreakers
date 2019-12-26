*** Settings ***
Library     Selenium2Library    
Resource    ../keywords/loginPageKeywords.robot
Variables    ../variable/variable.py


*** Test Cases ***
Asana Valid Login 
    Open Asana Home Page And Maximize       
    Enter Username                         
    Enter Password                          
    Click SignIn
    Verify LogIn                            
    
      