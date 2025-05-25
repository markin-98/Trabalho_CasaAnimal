CREATE DATABASE adocao_animais;

USE adocao_animais;

CREATE TABLE animais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    raca VARCHAR(100) NOT NULL,
    idade VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    foto_url VARCHAR(255) -- Armazenar a URL da foto do animal
);



CREATE DATABASE CadastroONG;


USE CadastroONG;


CREATE TABLE ONGs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(255) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);



CREATE DATABASE IF NOT EXISTS adocao;


USE adocao;

CREATE TABLE IF NOT EXISTS formulario_adocao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fotoAmbiente VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    motivo TEXT NOT NULL,
    residencia VARCHAR(50) NOT NULL,
    permiteAnimais VARCHAR(50) NOT NULL,
    responsabilidade VARCHAR(50) NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE DATABASE adocao_animais;


USE adocao_animais;


CREATE TABLE animais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    descricao TEXT
);


INSERT INTO animais (nome, imagem, descricao) VALUES
('Animal 1', '/imgs/Animal/Animal_1.jpeg', 'Descrição do Animal 1'),
('Animal 2', '/imgs/Animal/Animal_2.jpeg', 'Descrição do Animal 2'),
('Animal 3', '/imgs/Animal/Animal_3.jpeg', 'Descrição do Animal 3'),
('Animal 4', '/imgs/Animal/Animal_4.jpeg', 'Descrição do Animal 4'),
('Animal 5', '/imgs/Animal/Animal_5.jpeg', 'Descrição do Animal 5'),
('Animal 6', '/imgs/Animal/Animal_6.jpeg', 'Descrição do Animal 6'),
('Animal 7', '/imgs/Animal/Animal_7.jpeg', 'Descrição do Animal 7'),
('Animal 8', '/imgs/Animal/Animal_8.jpeg', 'Descrição do Animal 8'),
('Animal 9', '/imgs/Animal/Animal_9.jpeg', 'Descrição do Animal 9'),
('Animal 10', '/imgs/Animal/Animal_10.jpeg', 'Descrição do Animal 10');

CREATE DATABASE login_system;
USE login_system;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO users (email, password) VALUES ('user1@example.com', 'password123');
INSERT INTO users (email, password) VALUES ('user2@example.com', 'password456');



CREATE DATABASE login_system;
USE login_system;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO users (email, password) VALUES ('user1@example.com', 'password123');
INSERT INTO users (email, password) VALUES ('user2@example.com', 'password456');

CREATE DATABASE ongs_db;
USE ongs_db;

CREATE TABLE ongs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    imagem_url VARCHAR(255),
    link_album VARCHAR(255)
);

INSERT INTO ongs (nome, descricao, imagem_url, link_album)
VALUES
    ('Nome Ong 1', 'Descrição da Ong 1', '/imgs/Ong/Ong_10.jpg', 'album.html'),
    ('Nome Ong 2', 'Descrição da Ong 2', 'imgs/Ong/Ong_1.jpeg', 'album.html'),
    ('Nome Ong 3', 'Descrição da Ong 3', 'imgs/Ong/Ong_2.jpeg', 'album.html'),
    ('Nome Ong 4', 'Descrição da Ong 4', 'imgs/Ong/Ong_3.jpeg', 'album.html'),
    ('Nome Ong 5', 'Descrição da Ong 5', 'imgs/Ong/Ong_4.jpeg', 'album.html'),
    ('Nome Ong 6', 'Descrição da Ong 6', 'imgs/Ong/Ong_5.jpeg', 'album.html'),
    ('Nome Ong 7', 'Descrição da Ong 7', 'imgs/Ong/Ong_6.jpeg', 'album.html'),
    ('Nome Ong 8', 'Descrição da Ong 8', 'imgs/Ong/Ong_7.jpeg', 'album.html'),
    ('Nome Ong 9', 'Descrição da Ong 9', 'imgs/Ong/Ong_8.jpg', 'album.html'),
    ('Nome Ong 10', 'Descrição da Ong 10', 'imgs/Ong/Ong_9.jpg', 'album.html');
