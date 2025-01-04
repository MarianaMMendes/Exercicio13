*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${select_departure_city}    css=[name="fromPort"]
${select_destination_city}    css=[name="toPort"]
${btn_purchase}    css=input.btn.btn-primary

*** Keywords ***
Preencher origem
    [Arguments]    ${origem}
    Select From List By Value     ${select_departure_city}    ${origem}
Preencher destino 
    [Arguments]    ${destino}
    Select From List By Value     ${select_destination_city}    ${destino}

Clicar no botao comprar
    Click Button    ${btn_purchase}
