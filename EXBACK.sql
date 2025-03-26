CREATE DATABASE restapitest123;
USE restapitest123;

CREATE TABLE `programming_languages`
(
  `id`            INT(11) NOT NULL auto_increment ,/* como es auto incrementar no lo entrega */
  `nombre`        VARCHAR(50) NOT NULL ,
  `Email`         VARCHAR(50) NOT NULL ,
  `profecion`     VARCHAR(50) NOT NULL,
  `resumen`       VARCHAR(100) NULL ,
  `puntaje`       INT NOT NULL ,
  `cant_reseñas`  INT NOT NULL ,
  `portafolio`    VARCHAR(50) NULL,
  PRIMARY KEY (`id`)

  /* `created_at`    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `updated_at`    DATETIME on UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , */
  /* UNIQUE `idx_name_unique` (`nombre`(255)) */
);
-- engine = innodb charset=utf8mb4 COLLATE utf8mb4_general_ci;

INSERT INTO programming_languages(id,nombre,Email,profecion,resumen,puntaje,cant_reseñas,portafolio) 
VALUES 
(1,'Rogelio Mariano','ROgeli@exam.com','panadero','experiencia de su trabajo',4.5,200,'el portafolio es lo que puede enseñar'),
(2,'Angel Torres','Angelita@exam.com','cocinera','experiencia de su trabajo',4.4,340,'el portafolio es lo que puede enseñar'),
(3,'Javier Santiago','Javior@exam.com','conductor','experiencia de su trabajo',4.6,300,'el portafolio es lo que puede enseñar'),
(4,'Toviedo Cantreras','Toriyam@exam.com','artista','experiencia de su trabajo',3.8,100,'el portafolio es lo que puede enseñar'),
(5,'Cesar Tobar','Censala@exam.com','cocinero','experiencia de su trabajo',3.8,230,'el portafolio de lo que puede enseñar'),
(6,'Pedro Pereira','Pedrope@exam.com','domador','experiencia de su trabajo',4.8,400,'el portafolio de lo que puede enseñar'),
(7,'Migel Santander','Santan@exam.xom','veterinario','experiencia de su trabajo',5.0,100,'el portafolio de lo que puede enseñar'),
(8,'Adrea Cornelia','corneli@exam.com','actor','experiencia de su trabajo',4.3,200,'el portafolio de lo que puede enseñar'),
(9,'Cassandra Ruby','Rubya@exam.com','panadera','experiencia de su trabajo',3.5,150,'el portafolio de lo que puede enseñar'),
(10,'Rogelio Piraquive','Piraqi@exam.com','conductor','experiencia de su trabajo',4.3,340,'el portafolio es lo que puede enseñar'),
 
SELECT * FROM programming_languages;