CREATE DATABASE IF NOT EXISTS notas;
USE notas;

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
	id INT UNSIGNED NOT NULL, 
	nombre TEXT NOT NULL,
	email TEXT NOT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS mecanismo_eliminar;

CREATE TABLE mecanismo_eliminar(
	id int UNSIGNED NOT NULL,
	notas_tabla int UNSIGNED NOT NULL,
	puede_eliminarse TINYINT NOT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS notas_tabla ;

CREATE TABLE notas_tabla (
	id int UNSIGNED NOT NULL,
	titulo varchar(100) NOT NULL,
	creacion date NOT NULL,
	modificacion date,
	descripcion text NOT NULL,
	usuario int UNSIGNED NOT NULL,
	categorias int UNSIGNED NOT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
	id int UNSIGNED NOT NULL,
	categoria text NOT NULL,
	PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO usuarios VALUES (1, 'Manuel', 'manuel@gmail.com'), (2, 'Federico', 'federico@gmail.com'), (3, 'Rodrigo', 'rodrigo@gmail.com'), (4, 'Juan', 'juan@gmail.com'), (5, 'Nahuel', 'Nahuel@gmail.com'), (6, 'Oliver', 'oliver@gmail.com'), (7, 'Nicolas', 'nicolas@gmail.com'), (8, 'Luca', 'luca123@gmail.com'), (9, 'Joaquin', 'Joaco@gmail.com'), (10, 'Manuel', 'manuelcopia@gmail.com');

INSERT INTO categorias VALUES (1, 'Musica'), (2, 'Electronica'), (3, 'Series'), (4, 'Juegos'), (5, 'Libros'), (6, 'Programas'), (7, 'Computadoras'), (8, 'Peliculas'), (9, 'Celulares'), (10, 'Ropa');

INSERT INTO mecanismo_eliminar VALUES (1, 1, 1), (2, 2, 0), (3, 3, 0), (4, 4, 1), (5, 5, 1), (6, 6, 0), (7, 7, 0), (8, 8, 0), (9, 9, 0), (10, 10, 1);

INSERT INTO notas_tabla VALUES (1, 'Musica para escuchar', '2020-08-15', '2021-06-25', 'Tengo que poner en mi playlist: Ahora te puedes marchar y Habits', 2, 1), (2, 'Peliculas para ver', '2020-08-01', '2020-08-15','Tengo que ver whiplash', 1, 8), (3, 'Peliculas recomendadas', '2021-01-10', '2021-06-01', 'Me recomendaron la naranja mecanica y your name', 3, 8), (4, 'Celulares para reparar', '2019-11-15', '2020-01-19', 'Tengo que reparar el Iphone 9 y el samsung S10 que me pidieron', 3, 9), (5, 'Computadoras para stock', '2021-03-29', '2021-08-15', 'Tengo que pedir stock estas marcas de compus para mi tienda: Apple, Asus', 4, 7 ), (6, 'Series para ver', '2020-08-15', '2020-09-10', 'Tengo que ver One piece y Fullmetal Alchemist', 6, 3), (7, 'Ropa para navidad', '2020-11-28', '2020-12-10', 'Remera, Zapatillas, y jean', 7, 10), (8, 'Juegos para jugar con amigos', '2021-07-20', '2021-08-15', 'Splitgate, LoL, Rocket league', 6, 4), (9, 'Libros para leer', '2020-08-15', '2020-10-15', 'Muerte en el nilo', 8, 5), (10, 'Musica para recomendar', '2020-09-15', '2020-12-10', 'Don-Miranda', 10, 1);