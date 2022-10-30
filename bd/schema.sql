CREATE TABLE `user` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(102) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  CONSTRAINT pk_id PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the user''s data.';

INSERT INTO `user` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'joseju', 'pbkdf2:sha256:260000$FHhIsLue8dRwFAIM$ef37e5b262fb3d687112e232cd47abf1ec83f4c653b7bcbf95fa3993298fb5df', 'Jose Juan');

CREATE TABLE `compralibro` (
  `idcliente` smallint(3) UNSIGNED NOT NULL,
  `idlibro` smallint(3) UNSIGNED NOT NULL,
  CONSTRAINT pk_ids PRIMARY KEY (idcliente,idlibro),
  FOREIGN KEY (idcliente) REFERENCES user(id),
  FOREIGN KEY (idlibro) REFERENCES libro(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Regitra la compras de los libros.';

CREATE TABLE `libro` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `idautor` smallint(3) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  CONSTRAINT pk_id_libro PRIMARY KEY (id),
  FOREIGN KEY (idautor) REFERENCES autor(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the book''s data.';

CREATE TABLE `autor` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  CONSTRAINT pk_id_autor PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the author''s data.';
