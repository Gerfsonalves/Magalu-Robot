*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.magazineluiza.com.br
${EMAIL}  teste@gmail.com

*** Keywords ***
Acessar a página
  Open Browser  url=${URL}  browser=${BROWSER}

Pesquisar produto
  Input Text  locator=id:input-search  text=Notebook
  Click Element    //*[contains(@data-testid, 'search-submit')]

Validar resultado
  Wait Until Page Contains  text=Resultados para notebook
  Close Browser

Cadastrar
  Click Element  //a[contains(@href, 'cliente/login')]
  Input Text  class=FormGroup-input  text=${EMAIL}
  Click Element    xpath=//button[.//span[text()='Continuar']]