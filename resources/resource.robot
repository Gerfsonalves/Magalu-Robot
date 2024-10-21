*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.magazineluiza.com.br
${EMAIL}  gebrialves@gmail.com
${CPF}  11122233344

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
  Wait Until Element Is Visible    xpath=//input[@name='cpf'] 
  Input Text    xpath=//input[@name='cpf']    ${CPF}