class Comum
  include Capybara::DSL

  def visitar_site
    visit((DATA[$ambiente]['site_busca_produto']))
    sleep(3)
  end
  
  def encontrar_e_preencher(texto)
    find((EL['barra_pesquisa'])).set(texto)
  end

  def login_web
    visit(DATA[$ambiente]['site_bot'])
    sleep(2)
  end

  def encontrar_e_clicar (elemento)
    find(elemento).click
  end
  
  def validar (elemento)
    assert_selector(elemento)
  end
end
  