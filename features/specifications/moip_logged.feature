#language: pt

Funcionalidade:  Testes funcional na plataforma Moip

@login
Cenario: - Acesso ao painel da Moip
         - Criar um Pedido

  Dado eu esteja no tela de Login da Moip
  Quando eu faço login no site
  Então devo ter acesso ao painel
