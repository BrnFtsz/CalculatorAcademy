*** Settings ***
Resource    ../base.robot

*** Variables ***
${BOTAO_0}                  id=${PREFIXO}/digit_0
${BOTAO_PONTO}              id=${PREFIXO}/dec_point
${BOTAO_1}                  id=${PREFIXO}/digit_1
${BOTAO_2}                  id=${PREFIXO}/digit_2
${BOTAO_3}                  id=${PREFIXO}/digit_3
${BOTAO_4}                  id=${PREFIXO}/digit_4
${BOTAO_5}                  id=${PREFIXO}/digit_5
${BOTAO_6}                  id=${PREFIXO}/digit_6
${BOTAO_7}                  id=${PREFIXO}/digit_7
${BOTAO_8}                  id=${PREFIXO}/digit_8
${BOTAO_9}                  id=${PREFIXO}/digit_9
${BOTAO_IGUAL}              id=${PREFIXO}/eq
${BOTAO_PI}                 id=${PREFIXO}/const_pi
${BOTAO_MAIS}               id=${PREFIXO}/op_add   
${CAMPO_RESULTADO}          id=${PREFIXO}/result_final
${CAMPO_FORMULA}            id=${PREFIXO}/formula
${BOTAO_DIVISAO}            id=${PREFIXO}/op_div
${BOTAO_MULTIPLICACAO}      id=${PREFIXO}/op_mul
*** Keywords ***
Adiciona valor a Conta
   Click Element    ${BOTAO_2} 
   Click Element    ${BOTAO_5}
   Click Element    ${BOTAO_MAIS} 
   Click Element    ${BOTAO_5}
   Click Element    ${BOTAO_IGUAL}
   
Aguarda o elemento carregar e verifica o texto
    [Arguments]      ${elemento}    ${texto}
    Wait Until Element Is Visible       ${elemento}
    Element Should Contain Text         ${elemento}     ${texto}

Adiciona operacao de 1 valores na calculadora
    [Arguments]              ${elemento} 
    Click Element            ${elemento}    
   
Escolhe o tipo de operacao
    [Arguments]      ${elemento}
    Click Element    ${elemento}

Adiciona operacao de 2 valores na calculadora
    [Arguments]        ${elemento} 
    Click Element      ${elemento}  
    Click Element      ${BOTAO_IGUAL}

Obter valor PI
    Click Element                              ${BOTAO_PI}
    Click Element                              ${BOTAO_IGUAL}

Fazer uma divisao simples
    Click Element    ${BOTAO_2}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_DIVISAO}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_IGUAL}

Realiza multiplicacao
    Click Element    ${BOTAO_2}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_MULTIPLICACAO}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_IGUAL}