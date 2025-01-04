*** Settings ***
Resource    ../../../pages/base_page.robot

Library    ../../../.venv/Lib/site-packages/robot/libraries/XML.py
Test Template    Selecionar passagem
*** Test Cases ***
TC001    Boston    Rome
TC002     San Diego    Berlin
TC003    Boston    Berlin
TC004    Paris   Cairo
*** Keywords ***
Selecionar passagem
    [Arguments]    ${origem}    ${destino}
    Tirar Screenshot    1- Home page
    Preencher origem    ${origem}   
    Preencher destino   ${destino} 
    Tirar Screenshot    2 - Destino escolhido
    Clicar no botao comprar
    Element Text Should Be    ${titulo_secao}    Flights from ${origem} to ${destino}:
    Tirar Screenshot    3 - Passagem escolhida
    Clicar no botao escolher voo
    Clicar no botao comprar
    Element Text Should Be    ${titulo_secao_confirmation}    Thank you for your purchase today!
    Tirar Screenshot    4- Confirmação