*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.magazineluiza.com.br
${EMAIL}  gebrialves@gmail.com
${CPF}  11122233344
${NOME}  Gebri Alves
${DATANASCIMENTO}  10101990
${PASSWORD}  1234teste
${CEP}  06852590

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
  Click Element    //a[contains(@href, 'cliente/login')]
  Input Text       class=FormGroup-input                 ${EMAIL}
  Click Element    xpath=//button[.//span[text()='Continuar']]
  #Wait Until Element Is Visible    xpath=//input[@name='cpf'] 
  #Input Text       xpath=//input[@name='cpf']            ${CPF}
  #Input Text       xpath=//input[@name="fullName"]       ${NOME}
  #Input Text       xpath=//input[@name="birthDate"]      ${DATANASCIMENTO}
  #Input Password   xpath=//input[@name="password"]       ${PASSWORD}
  #Input Text       xpath=//input[@name="zipcode"]        ${CEP}