--<ScriptOptions statementTerminator=";"/>

CREATE TABLE client (
	name VARCHAR(40) NOT NULL,
	password VARCHAR(40) NOT NULL,
	phone INT NOT NULL,
	email VARCHAR(40) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE product (
	productID INT NOT NULL,
	productName VARCHAR(40) NOT NULL,
	productPrice INT NOT NULL,
	productDesc VARCHAR(40) NOT NULL,
	ProductQtty INT NOT NULL,
	productImage BLOB NOT NULL,
	PRIMARY KEY (productID)
) ENGINE=InnoDB;

CREATE UNIQUE INDEX email ON client (email ASC);

