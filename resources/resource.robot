*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.magazineluiza.com.br

*** Keywords ***
Acessar a página
  Open Browser  url=${URL}  browser=${BROWSER}

Pesquisar produto
  Input Text  locator=id:input-search  text=Notebook
  Click Element    //*[contains(@data-testid, 'search-submit')]

Validar resultado
  Wait Until Page Contains  text=Resultados para notebook