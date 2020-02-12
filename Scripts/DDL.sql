USE SpMedicalGroup_Tarde;

CREATE TABLE Tipo_Usuario (
	Id_TipoUsuario		INT PRIMARY KEY IDENTITY
	,Titulo_TipoUsuario	VARCHAR(255)
);

GO 

CREATE TABLE Endereco (
	Id_Endereco		INT PRIMARY KEY IDENTITY
	,Logradouro		VARCHAR(255) NOT NULL
	,Numero			VARCHAR(255) NOT NULL
	,CEP			CHAR(9)		 NOT NULL					
);

GO

CREATE TABLE Especializacao (
	Id_Especializacao		INT PRIMARY KEY IDENTITY
	,Titulo_Especializacao	VARCHAR(255) NOT NULL	
);

GO

CREATE TABLE Clinica (
	Id_Clinica			INT PRIMARY KEY IDENTITY
	,Nome_Fastasia		VARCHAR(255) NOT NULL UNIQUE 
 	,CNPJ				VARCHAR(255) NOT NULL UNIQUE
	,Razao_Social		VARCHAR(255) NOT NULL UNIQUE
	,Horario_Aberto		TIME		 NOT NULL	
	,Horario_Fechado	TIME		 NOT NULL
	,Id_Endereco		INT FOREIGN KEY REFERENCES Endereco	(Id_Endereco)
); 

GO

CREATE TABLE Usuario (
	Id_Usuario			INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(255)
	,Data_Nascimento	DATETIME2 
	,Email				VARCHAR(255) NOT NULL UNIQUE
	,Senha				VARCHAR(255) NOT NULL 
	,Genero				VARCHAR(255) 
	,Id_TipoUsuario		INT FOREIGN KEY REFERENCES Tipo_Usuario	(Id_TipoUsuario)

);

GO

CREATE TABLE Medico (
	Id_Medico			INT PRIMARY KEY IDENTITY
	,CRM				CHAR(6)
	,Id_Especiaizacao	INT FOREIGN KEY REFERENCES Especializacao	(Id_Especializacao)
	,Id_Clinica			INT FOREIGN KEY REFERENCES Clinica			(Id_Clinica)
	,Id_TipoUsuario		INT FOREIGN KEY REFERENCES Tipo_Usuario		(Id_TipoUsuario)
	,Id_Endereco		INT FOREIGN KEY REFERENCES Endereco			(Id_Endereco)
);

GO

CREATE TABLE Paciente (
	Id_Paciente		INT PRIMARY KEY IDENTITY
	,Id_Usuario		INT FOREIGN KEY REFERENCES Usuario	(Id_Usuario)
	,Id_Endereco	INT FOREIGN KEY REFERENCES Endereco	(Id_Endereco)
);

GO

CREATE TABLE Consulta (
	Id_Consulta		INT PRIMARY KEY IDENTITY
	,Situacao		VARCHAR(255)
	,Data_Consulta	DATETIME2
	,Id_Usuario		INT FOREIGN KEY REFERENCES Usuario	(Id_Usuario)
	,Id_Medico		INT FOREIGN KEY REFERENCES Medico	(Id_Medico)
	,Id_Clinica		INT FOREIGN KEY REFERENCES Clinica	(Id_Clinica)
);


