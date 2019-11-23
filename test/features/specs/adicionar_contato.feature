#language: pt

Funcionalidade: Cadastrar Paciente
    Como nutricionista gostaria de poder cadastrar meu pacientes
    Para melhor organizar seu controle de alimentação
@temp
Cenário: Usuario autenticado
	Dado que estou na tela de cadastro
	Quando eu informo dados de um novo paciente
	Então realizo cadastro do mesmo com sucesso