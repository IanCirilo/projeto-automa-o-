*Settings*
Library     SeleniumLibrary 

*Variables*
${url}          https://www.pichau.com.br
${validar}      Pichau - Os Melhores Preços do Brasil | Pichau
${pesquisar}    xpath=//input[contains(@placeholder,"Digite o que você procura..." )]
${click}        xpath=//div[contains(@class, "MuiFormControl-root MuiTextField-root MuiFormControl-marginNormal MuiFormControl-fullWidth")]
${produto}      xpath=//div[contains(@class, "MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-sm-6 MuiGrid-grid-md-4 MuiGrid-grid-lg-3 MuiGrid-grid-xl-2")][position()=1]
${comprar}      xpath=//button[contains(@class, "MuiButtonBase-root MuiButton-root MuiButton-contained jss251 MuiButton-containedSecondary MuiButton-containedSizeLarge MuiButton-sizeLarge MuiButton-fullWidth")]

*Test Cases*
Acessar o site e verificar
    
    Open Browser         ${url}           chrome 
    Title should be      ${validar}
    close Browser

Pesquisando produto    
    
    Open Browser         ${url}           chrome
    input text           ${pesquisar}     cadeira 
    click element        ${click}       
    click button         ${pesquisar}  
    close Browser    
    
Adicionado no carrinho
      
    Open Browser         ${url}           chrome
    input text           ${pesquisar}     cadeira
    Press Keys           ${pesquisar}     RETURN         
    sleep                3   
    click element        ${produto}
    sleep                3   
    click element        ${comprar}
    Wait Until Page Contains              SKU: 70519
    close Browser