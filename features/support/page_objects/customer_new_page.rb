module Panel
  class CreateCustomer < Generic
    def load_page
      visit 'https://cadastro-sandbox.moip.com.br/?preferredService=V2'
    end

    def fill_fields
      choose('Sou comprador')
      choose('Pessoa Física')
      fill_in('nome', :with => Faker::Name.first_name)
      fill_in('sobrenome', :with => Faker::Name.last_name)
      fill_in('datanascimento', :with => '30121900')
      fill_in('cpf', :with => Faker::CPF.numeric)
      fill_in('rg', :with => Faker::Number.number(8))
      fill_in('email', :with => Faker::Internet.email)
      fill_in('cep', :with => '01310100')
      fill_in('numero', :with => '1234')
      fill_in('telefoneresidencial', :with => '1155555555')
      fill_in('celular', :with => '11998765432')
      fill_in('new_password', :with => 'inicial1234')
      fill_in('confirm_password', :with => 'inicial1234')
      check('aceito')
    end

    def click_create_user
      click_on('Criar minha conta')
    end

    def validate_create_user
      page.find(:css, '.modal-header h4').text
    end
  end
end

