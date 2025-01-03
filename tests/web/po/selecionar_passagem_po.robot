*** Settings ***
Resource     ../../../pages/base_page.robot

Library    ../../../.venv/Lib/site-packages/robot/libraries/XML.py

*** Test Cases ***
Escolher passagem
    Preencher origem    ${select_departure_city}     
    Preencher destino   ${select_destination_city}   
    Clicar no botao comprar
    Element Text Should Be    css=container    Flights from Paris to Buenos Aires:
    Clicar no botão escolher voo
    Clicar no botao comprar
    Element Text Should Be    css=container.hero-unit    Thank you for your purchase today!