*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${btn_choose}     css=input.btn.btn-small
${titulo_secao}    css=h3
*** Keywords ***
Clicar no botao escolher voo
    Click Button     ${btn_choose} 