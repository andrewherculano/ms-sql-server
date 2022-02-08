create table Alunos (
	idAluno int primary key not null,
	nomeAluno varchar(200) not null,
	dataNascimento date not null,
	sexo varchar(1),
	dataCadastro datetime not null,
	loginCadastro varchar(15) not null,
);

create table Situacao (
	idSituacao int primary key not null,
	situacao varchar(25) not null,
	dataCadastro datetime not null,
	loginCadastro varchar(15) not null
);

create table Cursos (
	idCurso int primary key not null,
	nomeCurso varchar(200) not null,
	dataCadastro datetime not null,
	loginCadastro varchar(15) not null
);

create table Turmas (
	idTurma int primary key not null,
	idAluno int not null,
	idCurso int not null,
	valorTurma numeric(15,2) not null,
	desconto numeric(3,2) not null,
	dataInicio date not null,
	dataTermino date,
	dataCadastro datetime not null,
	loginCadastro varchar(15) not null
);

create table RegistroPresenca (
	idTurma int not null,
	idAluno int not null,
	idSituacao int not null,
	dataPresenca date not null,
	dataCadastro datetime not null,
	loginCadastro varchar(15) not null
);