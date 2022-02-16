- - MySQL Script gerado pela bancada mysql
- - Wed Feb 16 10:13:07 2022
- - Modelo: Nova Versão do modelo: 1.0
- - MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, ONLY_FULL_GROUP_BY SQL_MODE STRICT_TRANS_TABLES NO_ZERO_IN_DATE NO_ZERO_DATE ERROR_FOR_DIVISION_BY_ZERO NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
- - Schema ProjetoIntegrador
-- -----------------------------------------------------

-- -----------------------------------------------------
- - Schema ProjetoIntegrador
-- -----------------------------------------------------
CRIAR ESQUEMA SE NÃO EXISTIR 'ProjetoIntegrador' CONJUNTO DE CARACTERES PADRÃO UTF8 ;
USE 'ProjetoIntegrador' ;

-- -----------------------------------------------------
- - Tabela 'ProjetoIntegrador'.'Usuario'
-- -----------------------------------------------------
CRIE TABELA SE NÃO EXISTIR 'ProjetoIntegrador'. 'Usuario' (
  'idUsuario' INT NÃO AUTO_INCREMENT NULO,
  'login' VARCHAR(45) NÃO NULO,
  'senha' VARCHAR(45) NÃO NULO,
  'nome' VARCHAR(45) NÃO NULO,
  'foto' VARCHAR(255) NULL,
  'pronome' VARCHAR(45) NULL,
  CHAVE PRIMÁRIA ('idUsuario'))
MOTOR = InnoDB;


-- -----------------------------------------------------
- - Tabela 'ProjetoIntegrador'.'Postagem'
-- -----------------------------------------------------
CRIE TABELA SE NÃO EXISTIR 'ProjetoIntegrador'. 'Postagem' (
  'idPostagem' INT NÃO AUTO_INCREMENT NULA,
  'titulo_post' VARCHAR(45) NÃO NULO,
  'denuncia' INT NÃO NULO,
  'tema_post' VARCHAR(45) NÃO NULO,
  'texto_post' VARCHAR(1000) NÃO NULO,
  'sensivel' TINYINT NÃO É NULO,
  'dados' DATATIME NÃO NULO,
  'fk_idUsuario' INT NÃO É NULO,
  CHAVE PRIMÁRIA ('idPostagem'),
 ÍNDICE 'fk_Postagem_Usuario1_idx' ('FK_IDUSUARIO' ASC) VISÍVEL,
  RESTRIÇÃO 'fk_Postagem_Usuario1'
    CHAVE ESTRANGEIRA ('fk_idUsuario')
    REFERÊNCIAS 'ProjetoIntegrador'. 'Usuario' ('idUsuario')
    EM DELETE NENHUMA AÇÃO
    NA ATUALIZAÇÃO NENHUMA AÇÃO)
MOTOR = InnoDB;


-- -----------------------------------------------------
- - Tabela 'ProjetoIntegrador'.'Comentario'
-- -----------------------------------------------------
CRIE TABELA SE NÃO EXISTIR 'ProjetoIntegrador'. 'Comentario' (
  'idCom' INT NÃO É NULO,
  'dados' DATATIME NÃO NULO,
  'texto' VARCHAR(255) NÃO NULO,
  'denuncia' INT NÃO NULO,
  'sensivel' TINYINT NÃO É NULO,
  'fk_idUsuario' INT NÃO É NULO,
  'fk_idPostagem' INT NÃO É NULO,
  CHAVE PRIMÁRIA ('idCom'),
 ÍNDICE 'fk_Tema_Usuario_idx' ('fk_idUsuario' ASC) VISÍVEL,
 ÍNDICE 'fk_Comentarios_Postagem1_idx' ('fk_idPostagem' ASC) VISÍVEL,
  RESTRIÇÃO 'fk_Tema_Usuario'
    CHAVE ESTRANGEIRA ('fk_idUsuario')
    REFERÊNCIAS 'ProjetoIntegrador'. 'Usuario' ('idUsuario')
    EM DELETE NENHUMA AÇÃO
    NA ATUALIZAÇÃO NENHUMA AÇÃO,
  RESTRIÇÃO 'fk_Comentarios_Postagem1'
    CHAVE ESTRANGEIRA ('fk_idPostagem')
    REFERÊNCIAS 'ProjetoIntegrador'. 'Postagem' ('idPostagem')
    EM DELETE NENHUMA AÇÃO
    NA ATUALIZAÇÃO NENHUMA AÇÃO)
MOTOR = InnoDB;


PÔR SQL_MODE=@OLD_SQL_MODE;
PÔR FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
PÔR UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
