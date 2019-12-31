*** Settings ***
Library            Selenium2Library  
Variables        ../pageObjects/login_page.py
Variables        ../pageObjects/home_page.py      
Variables        ../testSuites/variable/variable.py
  
  
    


*** Keywords ***
Click Add Team Button
    Wait Until Element Is Enabled    ${add_team_button}
    Click Element    ${add_team_button}
    
Enter Team Name 
    Wait Until Element Is Visible    ${input_team_name}
    Input Text    ${input_team_name}    ${team_name}
    
    
Enter Team Members Name
    Wait Until Element Is Visible    ${add_team_member}
    Input Text    ${add_team_member}    ${team_member1_name}
    Press Keys    ${add_team_member}    ENTER
    Input Text    ${add_team_member}    ${team_member2_name}
    Press Keys    ${add_team_member}    ENTER
    Input Text    ${add_team_member}    ${team_member3_name}
    Press Keys    ${add_team_member}    ENTER
    
Click Create Team Button
    Wait Until Element Is Enabled    ${create_team_button}   
    Click Element    ${create_team_button}     
             
Click Create Project Button
    Wait Until Element Is Visible    ${create_a_project}  
    Click Element    ${create_a_project}  
    
Click Blank project
    Wait Until Element Is Visible    ${add_blank_project_team}       
    Click Element    ${add_blank_project_team}     
    
Enter Project Name
    Wait Until Element Is Visible    ${project_name}    
    Input Text    ${project_name}    ${project_Title}   
    
Click Create Project
    Wait Until Element Is Visible    ${create_project_button}    
    Click Element    ${create_project_button}    
    
Click Add Task Button
    Wait Until Element Is Visible    ${add_task}    
    Click Element    ${add_task}    

Enter Task Name
    Wait Until Element Is Visible    ${task_name}    timeout=10 
    Click Element    ${task_name}    
    Input Text      ${task_name}     ${input_task_name}  
    Press Keys      ${task_name}    ENTER  
    Click Element    ${task_name}    
      
Click Board
    Wait Until Element Is Visible    ${board_button}    
    Click Element    ${board_button}   
    
     
Click Task Details
    Wait Until Element Is Visible    ${task_details_button}    
    Click Element    ${task_details_button}   
    
Add Assignee
    Wait Until Element Is Visible    ${assignee_button}    
    Click Element         ${assignee_button}  
    Wait Until Element Is Visible    ${assignee_name}    
    Input Text    ${assignee_name}    ${input_assignee_name}     
      
           
    
    
    
        
             
   
    
