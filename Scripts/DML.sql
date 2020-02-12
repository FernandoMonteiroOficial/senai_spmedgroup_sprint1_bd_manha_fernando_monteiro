INSERT INTO Tipo_Usuario (Titulo_TipoUsuario)
VALUES	('Administrador') 
		,('Paciente') 
		,('Medico')

GO

INSERT INTO Endereco (Logradouro , Numero , CEP , Bairro , Cidade , Estado)
VALUES	('Rua Estado de Israel' , '240' , '04022-000' , 'Vila Clementino' , 'São Paulo' , 'SP')
		,('Av. Paulista' , '1578' , '01310-200' , 'Bela Vista' , 'São Paulo' , 'SP')
		,('Av. Ibirapuera' , '2927' , '04029-200' , 'Indianópolis' , 'São Paulo' , 'SP')
		,('R. Vitória' , '120' , '06402-030' , 'Vila Sao Jorge' , 'Barueri' , 'SP')
		,('R. Ver. Geraldo de Camargo' , '66' , '09405-380' , 'Santa Luzia' , 'Riberao Preto' , 'SP')
		,('Alameda dos Arapanés' , '945' , '04524-001' , 'Indianópolis' , 'São Paulo' , 'SP')
		,('R São Antonio ' , '232' , '06407-140' , 'Vila Universal' , 'Barueri' , 'SP')

GO

INSERT INTO Especializacao (Titulo_Especializacao)
VALUES	('Pediatria') 
		,('Odontologia')
		,('Gastrenterologia')

GO

INSERT INTO Clinica (Nome_Fastasia , CNPJ , Razao_Social , Horario_Aberto , Horario_Fechado , Id_Endereco)
VALUES	('Clinica Medica' ,	'12345678910' , 'SPMedicalGroup' , '10:00' , '23:00' , 3)

GO

INSERT INTO Usuario (Nome , Data_Nascimento , Email , Senha , Genero , Id_TipoUsuario)
VALUES	('Adm' , '06/05/1989' , 'adm123@gmail.com' , 'adm1234' , 'Indefinido' , 1)
		,('Saulo' , '06/05/1989' , 'saulo@gmail.com' , 'saulo123' , 'Masculino' , 2)
		,('Carol' , '06/05/1989' , 'carol@gmail.com' , 'carol123' , 'Feminino' , 2)
		,('Sonia' , '06/01/1988' , 'sonia@gmail.com' , 'sonia123' , 'Feminino' , 2)
		,('Fernando' , '06/1898' , 'fernando@gmail.com' , 'fer123' , 'Masculino' , 3)
		,('Debroah' , '10/10/1886' , 'deborah@gmail.com' , 'deh123' , 'Feminino' , 3)

GO

INSERT INTO Medico (CRM , Id_Especiaizacao , Id_Especiaizacao , Id_TipoUsuario, Id_Endereco	)
VALUES	('123456' , 1 , 1 , 4 , 2)
		,('65321' , 2 , 1 , 5 , 5)

GO

INSERT INTO Paciente (Id_Usuario , Id_Endereco)
VALUES	(2 , 1)
		,(3 , 6)
		,(4 , 7)

GO

INSERT INTO Clinica (Situacao , Data_Consulta , Id_Usuario , Id_Medico , Id_Endereco)
VALUES	('Agendada' , '15/02/2020' , 2 , 1 ,1)
		,('Realizada' , '20/02/2020' , 3, 2 , 1)
		,('Cancelada' , '28/02/2020' , 4 ,1 , 1)

GO


