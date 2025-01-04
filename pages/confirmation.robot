*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${titulo_secao_confirmation}    css=h1
*** Keywords ***

Exibir agradecimento
    Wait Until Element Contains    css=container.hero-unit     Thank you for your purchase today!