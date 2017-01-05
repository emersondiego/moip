# encoding: utf-8
#!/usr/bin/env ruby

Dado(/^eu esteja no no site de criação de usuario$/) do
  customer.load_page
end

E(/^preencho todos os campos obrigatorios$/) do
 customer.fill_fields
end

Quando(/^clico em Criar$/) do
  customer.click_create_user
end

Então(/^devo ter um usuario criado na plataforma Moip$/) do
  within(:css, '#modal-sucesso') do
    expect(customer.validate_create_user).to eq('Seu cadastro foi concluído com sucesso')
  end
end
