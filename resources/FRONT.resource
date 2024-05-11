*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library   String
resource  variables.resource

*** Keywords ***
Abrir o navegador
    Open Browser  browser=headlesschrome
    Maximize Browser Window

Fechar o navegador
    Close Browser 


Passo 1 - Acessar a página de login do academy
    Go To    url=${URL}

Passo 2 - Digitar mail   
   Wait Until Element Is Visible     locator=${mailInput}   
   Input Text    locator=${mailInput}    text=${mailLogin}
   
   
Passo 3 - Digitar uma senha   
   Wait Until Element Is Visible     locator=${passwordinput}
   Input Password    locator=${passwordinput}    password=${password} 
   

Passo 4 - Clicar em entrar   
  Wait Until Element Is Visible    locator=${buttomentrar} 
   Click Button      locator=${buttomentrar} 
   

Passo 5 - Clicar em Cadastros   
   Wait Until Element Is Visible   locator=${cadastro}
   Click Element                  locator=${cadastro}
    
Passo 6 - Clicar em Usuários  
    Wait Until Element Is Visible   locator=${usuario}
    Click Element   locator=${usuario}
     
  
Passo 7 - Clicar no botão novo cadastro    
    Wait Until Element Is Visible    locator=${buttomnovocadastro}
    Click Button    locator=${buttomnovocadastro}
    

Passo 8 - Digitar nome completo   
   Wait Until Element Is Visible   locator=${fullnameImput} 
   Input Text   locator=${fullnameImput}   text=${nomeesobrenome}
    


    
Passo 9 - Digitar e-mail
    ${palavra_randomica}     Generate Random String    8    chars=[LETTERS]
    ${palavra_randomica}     Convert To Lower Case     ${palavra_randomica}
    Set Test Variable        ${EMAIL_TEST}             ${palavra_randomica}@hotmail.com
    Log                      ${EMAIL_TEST}
   Wait Until Element Is Visible   locator=${mailcadastroInput}
   Input Text   locator=${mailcadastroInput}    text=${EMAIL_TEST}
   

Passo 10 - Digitar perfil de acesso
   Wait Until Element Is Visible   locator=${accesprofileInput}
   Input Text   locator=${accesprofileInput}    text=${administrador}
   

 
Passo 11 - Digitar CPF 
     ${cpf_randomico}=        Generate Random String   11    chars=[NUMBERS]
    Set Test Variable        ${CPF}    ${cpf_randomico}
    Log               ${CPF}
    Wait Until Element Is Visible   locator=${cpfinput}
    Input Text   locator=${cpfinput}    text=${CPF} 
    

Passo 12 - Digitar senha 
   Wait Until Element Is Visible   locator=${passwordcadastroInput}
   Input Password    locator=${passwordcadastroInput}    password=${password} 
   
Passo 13 - Digitar confirmar senha   
    Wait Until Element Is Visible   locator=${confirmpassword}
    Input Password    locator=${confirmpassword}    password=${password} 
  


Passo 14 - Clicar no Salvar Novo    
    Wait Until Element Is Visible   locator=${buttonsave} 
    Click Button    locator=${buttonsave}
    

    
##Diretoria
Clicar em diretorias
    Wait Until Element Is Visible   locator=${diretoria}
    Click Element   locator=${diretoria}
    
Clicar em novo cadastro  
   Wait Until Element Is Visible   locator=${novocadastrobuttomdire}
   Click Button    locator=${novocadastrobuttomdire}     
   
   

digitar dados da diretoria
    ${board_randomica}     Generate Random String    8    chars=[LETTERS]  
    ${board_randomica}     Convert To Lower Case     ${board_randomica}
    Set Test Variable        ${nomedoboard}             ${board_randomica}
    Log                      ${nomedoboard}
   Wait Until Element Is Visible   locator=${boardname}
   Input Text   locator=${boardname}   text=${nomedoboard}
  

Clicar no botão salvar novo
   Wait Until Element Is Visible      locator=${bottonsalvarnovo}
   Click Button                       locator=${bottonsalvarnovo}

 #Editar cadastro da diretoria
 


Clicar no editar 
   Wait Until Element Is Visible     locator=${buttoneditar}   
   Click Button            locator=${buttoneditar}    
    

Alterar o dado do cadastro
    ${editar_randomica}     Generate Random String    8    chars=[LETTERS]  
    ${editar_randomica}     Convert To Lower Case     ${editar_randomica}
    Set Test Variable        ${editardoboard}             ${editar_randomica}
    Log                      ${editardoboard}             
    Wait Until Element Is Visible     locator=${editardiretoria} 
    Input Text   locator=${editardiretoria}    text=${editardoboard}   
    Wait Until Element Is Visible     locator=${editardiretoria} 
    Input Text   locator=${editardiretoria}    text=${editardoboard}
   


Clicar em salvar alterações 
    Wait Until Element Is Visible     locator=${buttomsalvaralteracao}
    Click Button                      locator=${buttomsalvaralteracao}
   

          

Clicar no botão Logout
    Wait Until Element Is Visible        locator=${buttonLogout}
     Click Button                        locator=${buttonLogout}


Digitar email inválido de login
   Wait Until Element Is Visible        locator=${mailInput}   
   Input Text                           locator=${mailInput}        text=     
   Wait Until Element Is Visible        locator=${passwordinput}  
   Input Password                       locator=${passwordinput}     password=${password} 
   Capture Element Screenshot          locator=${telalogin}      

Digitar email invalido do usuário
   Wait Until Element Is Visible        locator=${mailcadastroInput} 
   Input Text                      locator=${mailcadastroInput}      text=${emailinvalidousu} 

Campo FullName inválido
   Wait Until Element Is Visible   locator=${fullnameImput} 
   Input Text   locator=${fullnameImput}   text=${fullnameinvalido}       

FullName em branco
    Wait Until Element Is Visible   locator=${fullnameImput} 
   Input Text   locator=${fullnameImput}   text=

 Email em branco
   Wait Until Element Is Visible   locator=${mailcadastroInput}
   Input Text   locator=${mailcadastroInput}    text=

Perfil de acesso em branco
   Wait Until Element Is Visible   locator=${accesprofileInput}
   Input Text   locator=${accesprofileInput}    text=

CPF em branco    
    Wait Until Element Is Visible   locator=${cpfinput}
    Input Text   locator=${cpfinput}    text= 

Senha em branco
   Wait Until Element Is Visible   locator=${passwordcadastroInput}
   Input Password    locator=${passwordcadastroInput}    password=     

Confimar senha branco
   Wait Until Element Is Visible   locator=${confirmpassword}
    Input Password    locator=${confirmpassword}    password=
    
Clicar no botão salvar novo usuario
    Wait Until Element Is Visible   locator=${buttonsave} 
    Click Button    locator=${buttonsave}
    Capture Element Screenshot          locator=${teladocadastrodousuario} 