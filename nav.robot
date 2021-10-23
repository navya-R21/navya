*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://www.flipkart.com/
${select_product}   xpath://*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[2]/div[1]/div[1]
${select_prod}    xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a[1]/img
${handle}    NEW
${first}    MAIN
    
*** Keywords ***
Go to Google 
    Open Browser    ${url}    ${browser}   #login
    Input Text    xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input    6362602125
    Input Password    xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input    navya@21!
    Click Button    xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button 
    
    #goto electronics
    Click Image    xpath://*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img 
    Mouse over    xpath://*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
    #Mouse over    xpath://*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[1]/a[1]
    #Mouse over    xpath://*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[2]

    
    #seach box to add n item
    Input Text    xpath://div/input[@type='text']    APPLE iPhone 
    Click Element    xpath://button[@type='submit']

    #add to cart
    Wait Until Page Contains Element  ${select_product}    timeout=20s
    Click Element    ${select_product}             
    Switch Window    ${handle}          
    #Click Element    #xpath://*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    
    #to check whwther item is present in cart
    #Switch Window    ${first}
    #Wait Until Page Contains Element  ${select_prod}    timeout=20s
    #Click Element    #xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a
  
*** Test Cases ***
Google Index
    Go to Google
