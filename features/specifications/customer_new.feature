#language: pt

Funcionalidade: Criar usuario

@usuario
Cenario: - Criar usuario com sucesso na plataforma Moip

  Dado eu esteja no no site de criação de usuario
  E preencho todos os campos obrigatorios
  Quando clico em Criar
  Então devo ter um usuario criado na plataforma Moip
