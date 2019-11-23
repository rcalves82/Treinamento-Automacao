#language: pt

Funcionalidade: Cadastrar Paciente
	Como nutricionista gostaria de poder cadastrar meu pacientes
    Para melhor organizar seu controle de alimentação
@cadastro_de_paciente
Cenário: Cadastro de paciente
	Dado que estou na tela de cadastro
	Quando eu informo dados de um novo paciente
	Então realizo cadastro do mesmo com sucesso
	
@cadastro_sem_nome
Cenário: Cadastro de paciente sem informar o nome
    Dado que estou na tela de cadastro
	Quando eu informo dados de um novo paciente exceto o nome
	Então mostrar mensagem que o nome é obrigatorio