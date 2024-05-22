*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
Teste de soma
    Adiciona valor a Conta
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    30

Teste keyword Arguments
    Adiciona operacao de 1 valores na calculadora        ${BOTAO_9}
    Escolhe o tipo de operacao                           ${BOTAO_DIVISAO}
    Adiciona operacao de 2 valores na calculadora        ${BOTAO_9}
    Aguarda o elemento carregar e verifica o texto       ${CAMPO_RESULTADO}    1

Obter valor de Pi
    Obter valor PI
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    3.141592653


Fazer uma divisao
    Fazer uma divisao simples
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    5

Fazer uma multiplicacao
    Realiza multiplicacao
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    125


