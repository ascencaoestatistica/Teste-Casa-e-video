  Dado('que busco o produto que é vendido pela Casa e video') do
    Comum.new.visitar_site
    Comum.new.encontrar_e_preencher((MASSA['produto']))
    Comum.new.encontrar_e_clicar((EL['lupa_pesquisa']))
    #visit((DATA[$ambiente]['site_busca_produto']))
    #find((EL['barra_pesquisa'])).set((MASSA['produto']))
    #find((EL['lupa_pesquisa'])).click
  end
  
  Quando('adiciono o produto ao carrinho') do
    Comum.new.encontrar_e_clicar((EL['imagem_produto']))
    Comum.new.encontrar_e_clicar((EL['adicionar_carrinho']))
    #find((EL['imagem_produto'])).click
    #find((EL['adicionar_carrinho'])).click
  end
  
  Entao('visualizo o valor total sem frete') do
    Comum.new.validar((EL['fechar_pedido']))
    #find((EL['fechar_pedido']))
  end