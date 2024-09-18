-- --------------------------- --
-- Banco de dados "glbang2" --
-- --------------------------- --

-- Apaga o banco de dados caso ele já exista
-- PERIGO! Não faça isso em modo de produção
DROP DATABASE IF EXISTS glbang2;

-- Cria o banco de dados novamente
-- PERIGO! Não faça isso em modo de produção
CREATE DATABASE glbang2
    -- Usando o conjunto de caracteres UTF-8
    CHARACTER SET utf8mb4
    -- Buscas em UTF-8 e case insensitive
    COLLATE utf8mb4_general_ci;

    -- Seleciona o banco de dados para os proximos comandos    
    USE glbang2;

    -- Cria a tabela "staff"
CREATE TABLE staff (
    sta_id INT
    sta_date TIMESTAMP
    sta_name VARCHAR(127)
    sta_email VARCHAR(255)
    sta_password VARCHAR(63)
    sta_birth DATE
    sta_description VARCHAR(255)
    sta_type ENUM('moderator', 'author', 'admin') DEFAULT 'moderator'
    sta_status ENUM('on', 'off', 'del') DEFAULT 'on'
);