CREATE TABLE tbl_item_promocao(
idItemPagina INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(120) NOT NULL,
imagem VARCHAR(340) NOT NULL,
descricao VARCHAR(240) NOT NULL,
precoNaoPromocional DECIMAL(5,2) NOT NULL,
precoPromocional DECIMAL(5,2) NOT NULL,
dtValidade DATE NOT NULL,
ativo TINYINT(1) NOT NULL);