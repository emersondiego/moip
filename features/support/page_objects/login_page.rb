module Panel
  class HomeSite < Generic
    def load_page
      visit 'https://connect-sandbox.moip.com.br/'
    end

    def login_site
      fill_in 'login', with: 'edap.diego@gmail.com'
      fill_in 'password', with: 'inicial1234'
      click_button('Acessar sua conta')
    end

    def validade_access_painel
      page.find(:css, '.topo-secao h1').text
    end
  end
end
