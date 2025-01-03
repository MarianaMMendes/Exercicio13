*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${select_departure_city}    css="form-inline"
${select_destination_city}    css="form-inline"
${btn_purchase}    css=btn.btn-primary


*** Keywords ***

Preencher origem
    [Arguments]    ${origem}
    Input Text     ${select_departure_city}    ${origem}
Preencher destino 
    [Arguments]    ${destino}
    Input Text     ${select_destination_city}    ${destino}

Clicar no botao comprar
    Click Button    ${btn_purchase}
