*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${btn_comprar}    css= btn.btn-small

*** Keywords ***

Clicar em comprar
    Click Button     ${btn_comprar}