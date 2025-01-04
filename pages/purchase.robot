*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${btn_comprar}    css=input.btn.btn-small

*** Keywords ***

Clicar em comprar
    Click Button     ${btn_comprar}