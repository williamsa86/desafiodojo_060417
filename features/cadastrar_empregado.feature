#language: pt
#uft-8

 Funcionalidade: Cadastrar Novo Empregado
  Eu como usuário do Site
  Quer logar no site ORANGEHRM
  Para cadastrar um novo empregado
@Cadastro
   Cenario: Logar no site ORAGEHRM
    Dado que eu esteja na home do site ORAGEHRM
    Quando digitar login e senha, clicar em Login, realizar o cadastro e clicar em salvar
    Entao o cadastro é realizado 
@Editar
   Cenario: Editar um empregado
    Dado que eu realize o login no site ORAGEHRM
    Quando localizar um funcionário já cadastrado, edite seu cadastro e salve as alterações
    Entao as alterações são salvas