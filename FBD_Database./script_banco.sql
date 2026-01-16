-- 1. LIMPEZA DO BANCO (Ordem inversa das FKs)
DROP TABLE IF EXISTS Medico;
DROP TABLE IF EXISTS Departamento;
DROP TABLE IF EXISTS Usuario;


-- 2. CRIAÇÃO DAS TABELAS
CREATE TABLE Usuario (
  id SERIAL PRIMARY KEY,  
  nome VARCHAR NOT NULL,
  login VARCHAR NOT NULL UNIQUE,
  senha VARCHAR NOT NULL,
  permissoes VARCHAR NOT NULL
);


CREATE TABLE Departamento (
  id SERIAL PRIMARY KEY,
  nome_dep VARCHAR NOT NULL UNIQUE
);


CREATE TABLE Medico (
  id SERIAL PRIMARY KEY,
  crm VARCHAR NOT NULL UNIQUE,
  login VARCHAR NOT NULL,
  nome_dep VARCHAR NOT NULL,
  FOREIGN KEY (login) REFERENCES Usuario(login),
  FOREIGN KEY (nome_dep) REFERENCES Departamento(nome_dep)
);


-- 3. INSERÇÃO DE DADOS INICIAIS
-- Usuarios
INSERT INTO Usuario (nome, login, senha, permissoes) VALUES 
('Carol Alves', 'carolalves', 'carol123', 'Administradora'),
('Marta Ribeiro', 'martaribeiro', 'marta789', 'Enfermeira'),
('Dr. Pedro Lima', 'pedrolima', 'pedro456', 'Médico'),
('Dr. Felipe Santos', 'felipesantos', 'felipe654', 'Médico'),
('Mariana Costa', 'marianacosta', 'mariana852', 'Enfermeira'),
('Dr. Ricardo Almeida', 'ricardoalmeida', 'ricardo159', 'Médico'),
('Dr. Eduardo Fernandes', 'eduardofernandes', 'eduardo258', 'Médico'),
('Beatriz Silva', 'beatrizsilva', 'beatriz369', 'Enfermeira'),
('Dr. Thiago Rocha', 'thiagorocha', 'thiago963', 'Médico'),
('Fernanda Lima', 'fernandalima', 'fernanda741', 'Enfermeira'),
('Dr. Rafael Moreira', 'rafaelmoreira', 'rafael852', 'Médico'),
('Dr. Gustavo Carvalho', 'gustavocarvalho', 'gustavo456', 'Médico'),
('Larissa Oliveira', 'larissaoliveira', 'larissa753', 'Enfermeira'),
('Marcos da Silva', 'marcosdasilva', 'marcos654', 'Supervisor'),
('Dr. Vinicius Alves', 'viniciusalves', 'vinicius837', 'Médico'),
('Yuri Araujo', 'yuriaraujo', 'yuri625', 'Enfermeiro'),
('Dr. Fabiano Souza', 'fabianosouza', 'fabiano917', 'Médico'),
('Vitória Pereira', 'vitoriapereira', 'vitoria204', 'Enfermeira'),
('Dr. Amanda Martins', 'amandamartins', 'amanda321', 'Médico'),
('Dr. Beatriz Costa', 'beatrizcosta', 'beatriz856', 'Médico'),
('Rafael Gomes', 'rafaelgomes', 'rafael478', 'Enfermeiro'),
('Dr. Lucas Ribeiro', 'lucasribeiro', 'lucas145', 'Médico'),
('Mariana Souza', 'marianasouza', 'mariana369', 'Enfermeira'),
('Thiago Mendes', 'thiagomendes', 'thiago258', 'Enfermeiro'),
('Jorge Costa', 'jorgecosta', 'jorge482', 'Médico'),
('Amanda Nunes', 'amandanunes', 'amanda753', 'Médico'),
('Lucas Nunes', 'lucasnunes', 'lucas159', 'Médico');



-- Departamentos
INSERT INTO Departamento (nome_dep) VALUES
('Pronto-Socorro'), ('Cardiologia'), ('UTI'), ('Enfermagem'),
('Centro Cirúrgico'), ('Clínica Médica'), ('Pediatria'),
('Obstetrícia'), ('Psiquiatria'), ('Administração'),
('Neurologia'), ('Ortopedia'), ('Estoque'), 
('Gastroenterologia'), ('Radiologia'), ('Pneumologia');



-- Medicos
INSERT INTO Medico (crm, login, nome_dep) VALUES
('CE123456', 'pedrolima', 'Cardiologia'),
('RJ234567', 'felipesantos', 'Neurologia'),
('SP345678', 'ricardoalmeida', 'Cardiologia'),
('BA456789', 'eduardofernandes', 'Pediatria'),
('RS567890', 'thiagorocha', 'Ortopedia'),
('PE678901', 'rafaelmoreira', 'Clínica Médica'),
('PR789012', 'gustavocarvalho', 'Gastroenterologia'),
('MG890123', 'viniciusalves', 'UTI'),
('RJ901234', 'fabianosouza', 'Clínica Médica'),
('AM012345', 'amandamartins', 'Obstetrícia'),
('GO101112', 'beatrizcosta', 'Pediatria'),
('CE121314', 'lucasribeiro', 'Cardiologia'),
('CE838182', 'jorgecosta', 'Radiologia'),
('CE616263', 'amandanunes', 'Pneumologia'),
('CE515253', 'lucasnunes', 'Psiquiatria');
