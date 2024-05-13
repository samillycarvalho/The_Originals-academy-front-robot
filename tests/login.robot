*** Settings ***
Resource   ../resources/FRONT.resource
resource   ../resources/variables.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
CT01: Login de acesso
   Passo 1 - Acessar a página de login do academy
   Passo 2 - Digitar mail
   Passo 3 - Digitar uma senha
   Passo 4 - Clicar em entrar  

CT02 - Digitar email inválido   
    Passo 1 - Acessar a página de login do academy
    Digitar email inválido de login
    Passo 3 - Digitar uma senha
    Passo 4 - Clicar em entrar 

CT03 - Senha inválida
   Passo 1 - Acessar a página de login do academy
   Passo 2 - Digitar mail
   Senha inválida do login  
   Passo 4 - Clicar em entrar 
