# encoding: utf-8
#!/usr/bin/env ruby

Dado(/^eu esteja no tela de Login da Moip/) do
  home.load_page
end

Quando(/^eu faço login no site$/) do
  home.login_site
end

Então(/^devo ter acesso ao painel$/) do
  expect(home.validade_access_painel).to eq('Olá Emerson, veja o resumo da sua conta.')
end
