*** Settings ***
Documentation  Teste inicial
Resource  ../resources/resource.robot

*** Test Cases ***
Teste de pesquisa
  Acessar a página
  Pesquisar produto
  Validar resultado

Cadastro de usuário
  Acessar a página
  Cadastrar