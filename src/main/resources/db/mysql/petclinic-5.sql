-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2018 a las 02:19:37
-- Versión del servidor: 5.7.11
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petclinic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alternativa`
--

CREATE TABLE `alternativa` (
  `id` int(11) NOT NULL,
  `alternativa` varchar(20) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alternativa`
--

INSERT INTO `alternativa` (`id`, `alternativa`, `value`) VALUES
(1, 'si', 2),
(2, 'no', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `password` varchar(6) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `ingreso` int(11) DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `codigo`, `password`, `correo`, `ingreso`, `carrera`, `edad`, `genero`, `first_name`, `last_name`) VALUES
(1, 105678, '123456', 'eleen@gmail.com', 2016, 'C15', 18, 'F', 'Stefanny', 'Aquino'),
(2, 108765, '123456', 'raul@gmail.com', 2015, 'C16', 20, 'M', 'Raul', 'Ramos'),
(3, 104567, '123456', 'maria@gmail.com', 2016, 'C15', 19, 'F', 'Maria', 'Perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_grupo`
--

CREATE TABLE `alumno_has_grupo` (
  `alumno_idalumno` int(11) NOT NULL,
  `grupo_idgrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno_has_grupo`
--

INSERT INTO `alumno_has_grupo` (`alumno_idalumno`, `grupo_idgrupo`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `num_alumnos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `name`, `num_alumnos`) VALUES
(1, 'C15', 3),
(7, 'Computacion 2016-II', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `pregunta` varchar(200) DEFAULT NULL,
  `posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `test_id`, `tipo_id`, `pregunta`, `posicion`) VALUES
(4, 1, 1, 'Ejecuto acciones adicionales para desahecerme del problema', 1),
(5, 1, 2, 'Elaboro un plan de acción para desahecerme del problema', 2),
(6, 1, 3, 'Dejo dejado otras actividades para concentrarme en el problema', 3),
(7, 1, 4, 'Me esfuerzo esperando el momento apropiado para enfrentar el problema', 4),
(8, 1, 5, 'Pregunto a otras personas que han tenido experiencias similares sobre lo que hicieron', 5),
(9, 1, 6, 'Hablo con alguien sobre mis sentimientos', 6),
(10, 1, 7, 'Busco algo bueno de lo que está pasando', 7),
(11, 1, 8, 'Aprendo  convivir con el problema', 8),
(12, 1, 9, 'Busco ayuda en Dios', 9),
(13, 1, 10, 'Emocionalmente me perturbo y libero mis emociones', 10),
(14, 1, 11, 'Me niego a aceptar que el problema a ocurrido', 11),
(15, 1, 12, 'Dejo de lado mis metas', 12),
(16, 1, 13, 'Me dedico a trabajar o realizar otras actividades para alejar el problema', 13),
(17, 1, 1, 'Concentro mis esfuerzos para hacer algo sobre el problema', 14),
(18, 1, 2, 'Elaboro un plan de acción', 15),
(19, 1, 3, 'Me dedico a enfrentar el problema, y si es necesario dejo de lado otras actividades', 16),
(20, 1, 4, 'Me mantengo alejado del problema sin hacer nada hasta que la situación lo permita', 17),
(21, 1, 5, 'Trato de obtener el consejo de otros para saber que hacer con el problema', 18),
(22, 1, 6, 'Busco apoyo emocional de amigos o familiares', 19),
(23, 1, 7, 'Trato de ver el problema de forma positiva', 20),
(24, 1, 8, 'Acepto que el problema ha ocurrido y no podrá ser cambiado', 21),
(25, 1, 9, 'Deposito mi confianza en Dios', 22),
(26, 1, 10, 'Libero mis emociones', 23),
(27, 1, 11, 'Actúo como si el problema no hubiera sucedido realmente', 24),
(28, 1, 12, 'Dejo de persiguir mis metas', 25),
(29, 1, 13, 'Voy al cine o miro TV, para pensar menos en el problema', 26),
(30, 1, 1, 'Hago paso a paso lo que tiene que hacerse', 27),
(31, 1, 2, 'Me pongo a pensar más en los pasos a seguir para solucionar el problema', 28),
(32, 1, 3, 'Me alejo de otras actividades para poder concentrarme en el problema', 29),
(33, 1, 4, 'Me aseguro de no poder crear problemas peores por actuar muy pronto', 30),
(34, 1, 5, 'Hablo con alguien para averiguar más sobre el problema', 31),
(35, 1, 6, 'Converso con alguien sobre lo que me está sucediedo', 32),
(36, 1, 7, 'Aprendo algo de experiencia', 33),
(37, 1, 8, 'Me acostumbro ala idea de qe el problema ya ha sucedido', 34),
(38, 1, 9, 'Trato de encontrar consuelo en mi religión', 35),
(39, 1, 10, 'Siento mucha perturbación emocional y expreso esos sentimientos a otros', 36),
(40, 1, 11, 'Me comporto como si no hubiese ocurrido el problema', 37),
(41, 1, 12, 'Acepto que puedo enfrentar el problema y lo dejo de lado', 38),
(42, 1, 13, 'Sueño despierto con otras cosas que no se relacionen al problema', 39),
(43, 1, 1, 'Actúo directamente para controlar el problema', 40),
(44, 1, 2, 'Pienso en la mejor manera de controlar el problema', 41),
(45, 1, 3, 'Trato de que otras cosas no interfieran en los esfuerzos que pongo para enfrentar el problema', 42),
(46, 1, 4, 'Me abstengo de hacer algo demasiado pronto', 43),
(47, 1, 5, 'Hablo con alguien  que podría hacer algo concreto sober el problema', 44),
(48, 1, 6, 'Busco simpatía y la comprensión de alguien', 45),
(49, 1, 7, 'Trato de desarrollarme como una persona a consecuente de la experiencia', 46),
(50, 1, 8, 'Acepto que el problema ha sucedido', 47),
(51, 1, 9, 'Rezo más de lo inusual', 48),
(52, 1, 10, 'Me perturbo emocionalmente y estoy atento al problema', 49),
(53, 1, 11, 'Me digo a mí mismo: "Esto no es real"', 50),
(54, 1, 12, 'Disminuyo los esfuerzos que pongo para solucionar el problema', 51),
(55, 1, 13, 'Duermo más de lo usual', 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_alternativa`
--

CREATE TABLE `pregunta_alternativa` (
  `pregunta_id` int(11) NOT NULL,
  `alternativa_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta_alternativa`
--

INSERT INTO `pregunta_alternativa` (`pregunta_id`, `alternativa_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `id` int(11) NOT NULL,
  `test` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `alumno_idalumno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`id`, `test`, `descripcion`, `date`, `alumno_idalumno`, `name`) VALUES
(1, 'Test del Estres', 'Descripcion', '2018-01-25', 1, 'Resultado 1'),
(2, 'Test del Estres', 'descripcion', '2018-02-14', 2, 'test'),
(3, 'Test del Estres', '', '2018-02-09', 3, 'Test del Estres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) NOT NULL,
  `num_preguntas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`id`, `name`, `tipo`, `descripcion`, `num_preguntas`) VALUES
(1, 'test 1', 'tipo 1', 'test para el estres balbalblalbalb', '3'),
(2, 'test 2', 'tipo 2', 'test para el autoestima balbalblalbalb', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_has_alumno`
--

CREATE TABLE `test_has_alumno` (
  `test_idtest` int(11) NOT NULL,
  `alumno_idalumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `test_has_alumno`
--

INSERT INTO `test_has_alumno` (`test_idtest`, `alumno_idalumno`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `name`) VALUES
(1, 'Afrontamiento Directo'),
(2, 'Planificación de Actividades'),
(3, 'Superación de Actividades Competitivas'),
(4, 'Retracción del afrontamiento'),
(5, 'Búsqueda de soporte social'),
(6, 'Búsqueda de soporte emocional'),
(7, 'Reinterpretación positiva de la experiencia'),
(8, 'Aceptación'),
(9, 'Retomo a la religión'),
(10, 'Análisis de las emociones'),
(11, 'Negación'),
(12, 'Conductas inadecuadas'),
(13, 'Distracción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

CREATE TABLE `types` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(5, 'bird'),
(1, 'cat'),
(2, 'dog'),
(6, 'hamster'),
(3, 'lizard'),
(4, 'snake');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `rol` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `password`, `username`, `first_name`, `last_name`, `rol`) VALUES
(1, '$2a$10$Jrr83/QB/igZoF2FpZhq0uNjCxtOOXXYb4ZNE.Tq41tnx6EN2BZbC', 'ichirohonda', 'ichiro', 'honda', 'ADMIN'),
(2, '$2a$10$q6DE8pT6pmHfgPiCxlyd.etgzFALirz.N2b3s1YOSqg86ISJ09yVK', 'user01', 'usuario', 'ape_usuario', 'ADMIN'),
(3, '12341234', 'jonda', 'jota', 'eme', 'TUTOR'),
(4, '1234', 'usuario01', 'FirstNameUser', 'LastNameUser', 'ADMIN'),
(5, '1234', 'tutor01', 'Casi', 'Miro', 'TUTOR'),
(6, '1234', 'admin01', 'Tito', 'Lopez', 'ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valores`
--

CREATE TABLE `valores` (
  `id` int(11) NOT NULL,
  `resultado_id` int(11) NOT NULL,
  `tipo` varchar(80) NOT NULL,
  `value` int(11) NOT NULL,
  `descripcion` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `valores`
--

INSERT INTO `valores` (`id`, `resultado_id`, `tipo`, `value`, `descripcion`) VALUES
(1, 1, 'AD', 2, 'Posee un Afrontamiento Directo promedio'),
(2, 1, 'PA', 3, 'Posee una Planificación de Actividades alta'),
(3, 1, 'SAC', 2, 'Posee Superación de Actividades Competitivas promedio'),
(4, 1, 'RA', 0, 'Posee una Retracción del Afrontamiento baja'),
(5, 1, 'BSS', 2, 'Posee una Búsqueda de Soporte Social promedio'),
(6, 1, 'BSE', 4, 'Posee una Búsqueda de Soporte Emocional alto'),
(7, 1, 'RPE', 2, 'Posee una Reinterpretación Positiva de la Experiencia promedio'),
(8, 1, 'A', 0, 'Posee una Aceptación baja'),
(9, 1, 'RR', 2, 'Posee un Retomo a la Religión promedio'),
(10, 1, 'AE', 3, 'Posee un Análisis de las Emociones alto'),
(11, 1, 'N', 4, 'Posee una Negación alta'),
(12, 1, 'CI', 1, 'Posee Conductas Inadecuadas bajas'),
(13, 1, 'D', 1, 'Posee una Distracción baja'),
(14, 2, 'AD', 4, 'Posee un Afrontamiento Directo alto'),
(15, 2, 'PA', 1, 'Posee una Planificación de Actividades baja'),
(16, 2, 'SAC', 2, 'Posee Superación de Actividades Competitivas promedio'),
(17, 2, 'RA', 0, 'Posee una Retracción del Afrontamiento baja'),
(18, 2, 'BSS', 2, 'Posee una Búsqueda de Soporte Social bajo'),
(19, 2, 'BSE', 3, 'Posee una Búsqueda de Soporte Emocional alto'),
(20, 2, 'RPE', 3, 'Posee una Reinterpretación Positiva de la Experiencia alta'),
(21, 2, 'A', 1, 'Posee una Aceptación baja'),
(22, 2, 'RR', 1, 'Posee un Retomo a la Religión bajo'),
(23, 2, 'AE', 3, 'Posee un Análisis de las Emociones alto'),
(24, 2, 'N', 3, 'Posee una Negación alta'),
(25, 2, 'CI', 1, 'Posee Conductas Inadecuadas bajas'),
(26, 2, 'D', 2, 'Posee una Distracción promedio'),
(27, 3, 'A', 6, 'Posee una Aceptación muy alto'),
(28, 3, 'BSS', 4, 'Posee una Búsqueda de soporte social muy alto'),
(29, 3, 'RA', 8, 'Posee una Retracción del afrontamiento muy alto'),
(30, 3, 'PA', 0, 'Posee una Planificación de Actividades muy bajo'),
(31, 3, 'SAC', 6, 'Posee una Superación de Actividades Competitivas muy alto'),
(32, 3, 'AD', 10, 'Posee un Afrontamiento Directomuy alto'),
(33, 3, 'N', 12, 'Posee una Negación muy alto'),
(34, 3, 'BSE', 6, 'Posee una Búsqueda de soporte emocional muy alto'),
(35, 3, 'RPE', 6, 'Posee una Reinterpretación positiva de la experiencia muy alto'),
(36, 3, 'RR', 4, 'Posee una Retomo a la religión muy alto'),
(37, 3, 'AE', 4, 'Posee una Análisis de las emociones muy alto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alternativa`
--
ALTER TABLE `alternativa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumno_has_grupo`
--
ALTER TABLE `alumno_has_grupo`
  ADD PRIMARY KEY (`alumno_idalumno`,`grupo_idgrupo`),
  ADD KEY `fk_alumno_has_grupo_grupo1_idx` (`grupo_idgrupo`),
  ADD KEY `fk_alumno_has_grupo_alumno1_idx` (`alumno_idalumno`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`,`test_id`),
  ADD KEY `fk_pregunta_test1_idx` (`test_id`),
  ADD KEY `fk_pregunta_tipo_idx` (`tipo_id`);

--
-- Indices de la tabla `pregunta_alternativa`
--
ALTER TABLE `pregunta_alternativa`
  ADD PRIMARY KEY (`pregunta_id`,`alternativa_id`),
  ADD KEY `fk_alternativa_pregunta` (`alternativa_id`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`id`,`alumno_idalumno`),
  ADD KEY `fk_resultado_alumno1_idx` (`alumno_idalumno`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `test_has_alumno`
--
ALTER TABLE `test_has_alumno`
  ADD PRIMARY KEY (`test_idtest`,`alumno_idalumno`),
  ADD KEY `fk_test_has_alumno_alumno1_idx` (`alumno_idalumno`),
  ADD KEY `fk_test_has_alumno_test1_idx` (`test_idtest`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valores`
--
ALTER TABLE `valores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_valores_resultados` (`resultado_id`),
  ADD KEY `valores_name` (`value`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alternativa`
--
ALTER TABLE `alternativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `types`
--
ALTER TABLE `types`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `valores`
--
ALTER TABLE `valores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
