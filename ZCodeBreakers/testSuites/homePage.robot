*** Settings ***
Library         Selenium2Library           
Resource        ../keywords/loginPageKeywords.robot
Resource        ../keywords/homePageKeywords.robot



   
    

*** Test Cases ***

Asana Login 
    Open Asana Home Page And Maximize       
    Enter Username                         
    Enter Password                          
    Click SignIn
    Verify LogIn                            
    
Setup Teams 
    Click Add Team Button
    Enter Team Name  
    Enter Team Members Name
    Click Create Team Button
    
Create A Project
    Click Create Project Button
    Click Blank project
    Enter Project Name  
    Click Create Project  
    
Create A Tasks
    Click Add Task Button
    Enter Task Name
    Click Task Details
    Add Assignee
    










