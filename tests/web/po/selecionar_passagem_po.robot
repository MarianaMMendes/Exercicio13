*** Settings ***
Resource    ../../../pages/base_page.robot

Library    ../../../.venv/Lib/site-packages/robot/libraries/XML.py

*** Test Cases ***
Selecionar passagem
    Tirar Screenshot    1- Home page
    Preencher origem    Paris     
    Preencher destino   Buenos Aires 
    Tirar Screenshot    2 - Destino escolhido
    Clicar no botao comprar
    Element Text Should Be    ${titulo_secao}    Flights from Paris to Buenos Aires:
    Tirar Screenshot    3 - Passagem escolhida
    Clicar no botao escolher voo
    Clicar no botao comprar
    Element Text Should Be    ${titulo_secao_confirmation}    Thank you for your purchase today!
    Tirar Screenshot    4- Confirmação