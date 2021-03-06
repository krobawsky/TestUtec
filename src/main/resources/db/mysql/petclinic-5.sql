-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2018 a las 20:30:57
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `utec`
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
(1, 'Si', 1),
(2, 'No', 0),
(3, 'Verdadero', 1),
(4, 'Verdadero', 0),
(5, 'Falso', 1),
(6, 'Falso', 0);

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
(3, 104567, '123456', 'maria@gmail.com', 2016, 'C15', 19, 'F', 'Maria', 'Perez'),
(4, 142145, 'abc', 'rberrospi@gmail.com', 2016, 'C15', 18, 'M', 'Ricardo', 'Berrospi');

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
(37, 1, 8, 'Me acostumbro a la idea de que el problema ya ha sucedido', 34),
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
(55, 1, 13, 'Duermo más de lo usual', 52),
(56, 2, 14, 'Siempre sigo mis propias ideas en vez de hacer lo que otros esperan de mi', 1),
(57, 2, 14, 'Siempre he encontrado más comodo hacer las cosas solo(a) tranquilamente en vez de hacerlas con otros', 2),
(58, 2, 14, 'Hablar con otras personas ha sido casi siempre dificil y duro para mi', 3),
(59, 2, 14, 'Creo que hay que ser dedicado y tener fuerza de voluntad en todo lo que hago', 4),
(60, 2, 14, 'En las utlimas semanas me pongo a llorar apenas la minima de las cosas sale mal', 5),
(61, 2, 14, 'Alguna gente me considera engreido(a) y egoista', 6),
(62, 2, 14, 'De adolecente me metia en muchos problemas debido a mi mala conducta escolar', 7),
(63, 2, 14, 'Siempre siento que no soy querido(a) en un grupo', 8),
(64, 2, 14, 'Frecuentemente critico a la gente si esta mal', 9),
(65, 2, 14, 'Me conformo con seguir a los demás', 10),
(66, 2, 14, 'Disfruto haciendo tantas cosas diferentes que no puedo decidir que hacer primero', 11),
(67, 2, 14, 'A veces puedo ser muy tosco(a) y malo(a) en mis relaciones con mi familia', 12),
(68, 2, 14, 'Me interesa muy poco hacer amigos', 13),
(69, 2, 14, 'Creo que soy una persona muy sociable y extrovertida', 14),
(70, 2, 14, 'Creo que soy una persona superior, por lo tanto, no me importa lo que la gente piensa', 15),
(71, 2, 14, 'La gente nunca ha reconocido debidamente lo que he hecho o logrado', 16),
(72, 2, 14, 'Tengo un problema con el alcohol que he tratado insatisfactiramente de superar', 17),
(73, 2, 14, 'Ultimamente siento como una angustia en el estomago y me pongo a sudar frio', 18),
(74, 2, 14, 'No me gusta hacerme notar durante las actividades sociales', 19),
(75, 2, 14, 'Frecuentemente hago cosas por el simple hecho de que son divertidas', 20),
(76, 2, 14, 'Me enfado mucho con la gente que parece que nunca hace las cosas bien', 21),
(77, 2, 14, 'Si mi familia me presiona es muy probable que me sienta enojado(a) y que me resista a hacer lo que ellos quieren', 22),
(78, 2, 14, 'Frecuentemente siento que deberia ser castigado(a) por lo que he hecho', 23),
(79, 2, 14, 'La gente se burla de mi a mis espaldas, hablando de como actuo o de mi aspecto', 24),
(80, 2, 14, 'Los demás parecen más seguros que yo de lo que son y de lo que quieren', 25),
(81, 2, 14, 'Tiendo a ropmper en llanto y tener ataques de colera sin saber porque ', 26),
(82, 2, 14, 'Empece a sentirme solo(a) y vacio(a) hace un año o dos', 27),
(83, 2, 14, 'Tengo talento para ser dramatico', 28),
(84, 2, 14, 'Me resulata dificil mantener el equilibrio cuando camino', 29),
(85, 2, 14, 'Disfruto de la competencia intensa', 30),
(86, 2, 14, 'Cuando entro en crisis, rapidamente busco a alguien para que me ayude ', 31),
(87, 2, 14, 'Me protejo a mi mismo(a) de problemas no dejando que la gente sepa mucho de mi', 32),
(88, 2, 14, 'La mayor parte del tiempo me siento debil y cansado (a) ', 33),
(89, 2, 14, 'Otra gente se enoja más ante pequeños inconvenienetes que yo', 34),
(90, 2, 14, 'Mi consumo de drogas frecuentemente me ha llevado a una buena cantidad de problemas en el pasado', 35),
(91, 2, 14, 'Ultimamente me encuentro llorando sin ninguna razón ', 36),
(92, 2, 14, 'Creo que soy una persona especial que merece atención especial de los otros ', 37),
(93, 2, 14, 'Bajo ninguna circunstancia me dejo engañar por gente que dice necesitar ayuda ', 38),
(94, 2, 14, 'Una manera segura de hacer un mundo pacifico es mejorando la moral de la gente', 39),
(95, 2, 14, 'En el pasado me he involucrado sexualmente con muchas personas que no me importaban mucho ', 40),
(96, 2, 14, 'Encuentro dificil comprender a la gente que nunca tiene las cosas claras', 41),
(97, 2, 14, 'Soy una persona sumisa y facil', 42),
(98, 2, 14, 'Mi mal genio ha sido una de las grandes causas de mis problemas ', 43),
(99, 2, 14, 'No me importa mandonear a otros para conseguir que hagan lo que yo quiera ', 44),
(100, 2, 14, 'En los ultimos años incluso cosas minimas parecen deprimirme ', 45),
(101, 2, 14, 'Frecuentemente, mi deseo de hacer las cosas perfectamente demora mi trabajo', 46),
(102, 2, 14, 'Soy tan tranquilo(a) y aislado(a) que la mayoria de la gente no sabe siquiera que existo ', 47),
(103, 2, 14, 'Me gusta coquetear con miembros del sexo opuesto', 48),
(104, 2, 14, 'Soy una persona tranquila y miedosa', 49),
(105, 2, 14, 'Soy una persona muy inconstante, cambio de opinion y de forma de sentir todo el tiempo', 50),
(106, 2, 14, 'Me siento muy tenso cuando pienso en los sucesos del día', 51),
(107, 2, 14, 'Beber alcohol nunca me ha causado ningun problema realmente serio en mi trabajo', 52),
(108, 2, 14, 'Ulimamente pareceria que las fuerzas se me escapan, incluso en las mañanas', 53),
(109, 2, 14, 'Empece a sentirme un fracasado(a) hace unos años ', 54),
(110, 2, 14, 'No me gusta nada la gente de éxito que siempre piensa que puede hacer las cosas mejor que yo ', 55),
(111, 2, 14, 'Siempre he tenido un miedo terrible de perder el amor de la gente que necesito mucho ', 56),
(112, 2, 14, 'Daria la impresión que hago todo lo posible para que la gente se aproveche de mi ', 57),
(113, 2, 14, 'Últimamente siento ganas de romper cosas.', 58),
(114, 2, 14, 'Recientemente he pensado seriamente en acabar con mi vida. ', 59),
(115, 2, 14, 'Siempre estoy tratando de hacer nuevos amigos y conocer gente nueva. ', 60),
(116, 2, 14, 'Mantengo un control riguroso de mi dinero, así estoy preparado (a) en caso de necesidad. ', 61),
(117, 2, 14, 'Aparecí en la portada de varias revistas el año pasado.', 62),
(118, 2, 14, 'Le gusto a poca gente. ', 63),
(119, 2, 14, 'Si alguien me criticara por cometer un error, yo rápidamente señalaría algunos de sus errores. ', 64),
(120, 2, 14, 'Algunas personas dicen que me gusta sufrir.', 65),
(121, 2, 14, 'Frecuentemente expreso mis sentimientos de rabia y despues me siento terriblemente culpable. ', 66),
(122, 2, 14, 'Últimamente me siento nervioso (a) y bajo una terrible presión, pero no sé por qué.', 67),
(123, 2, 14, 'Muy frecuentemente pierdo la sensibilidad en partes de mi cuerpo.', 68),
(124, 2, 14, 'Creo que hay personas que usan telepatía para influenciar mi vida. ', 69),
(125, 2, 14, 'Consumir drogas ilícitas puede ser poco inteligente, pero en el pasado sentí que las necesitaba. ', 70),
(126, 2, 14, 'Me siento cansado (a) todo el tiempo.', 71),
(127, 2, 14, 'No puedo dormir bien, y me levanto tan cansado (a) como cuando me acosté.', 72),
(128, 2, 14, 'He hecho varias cosas estúpidas de puro impulso que han terminado causándome muchos problemas. ', 73),
(129, 2, 14, 'Nunca perdono un insulto. , ni olvido una vergüenza que alguien me haya hecho pasar. ', 74),
(130, 2, 14, 'Deberíamos respetar las generaciones anteriores y no pensar que sabemos más que ellos. ', 75),
(131, 2, 14, 'Ahora me siento terriblemente deprimido (a) y triste gran parte del tiempo.', 76),
(132, 2, 14, 'Soy el tipo de personas del que otros se aprovechan. ', 77),
(133, 2, 14, 'Siempre me esfuerzo mucho de complacer a los demás, incluso cuando no me agradan.', 78),
(134, 2, 14, 'He tenido serios pensamientos suicidas por varios años.', 79),
(135, 2, 14, 'Rápidamente me doy cuenta cómo la gente está intentando causarme problemas.', 80),
(136, 2, 14, 'Siempre he tenido menos interés en el sexo que la mayoría de la gente. ', 81),
(137, 2, 14, 'No puedo entenderlo, pero parecería que disfruto hiriendo a las personas que quiero. ', 82),
(138, 2, 14, 'Hace mucho tiempo decidí que era mejor tener poco que ver con la gente.', 83),
(139, 2, 14, 'Estoy dispuesto (a) a pelear a muerte antes que dejar que nadie me quite mi autodeterminación. ', 84),
(140, 2, 14, 'Desde que era niño (a) siempre he tenido que cuidarme de la gente que estaba tratando de engañarme.', 85),
(141, 2, 14, 'Cuando las cosa se ponen aburridas, me gusta despertar situaciones emocionantes. ', 86),
(142, 2, 14, 'Tengo problemas de alcohol que me han generado problemas a miy a mi familia. ', 87),
(143, 2, 14, 'Si una persona quiere que se haga algo que requiera mucha paciencia, deberían pedírmelo a mí.', 88),
(144, 2, 14, 'Soy probablemente la persona con ideas más creativas entre las personas que conozco. ', 89),
(145, 2, 14, 'Hace diez años que no veo un carro.', 90),
(146, 2, 14, 'No veo nada de malo en usar a la gente para obtener lo que quiero. ', 91),
(147, 2, 14, 'El castigo nunca me frenó a hacer lo que yo quería.', 92),
(148, 2, 14, 'Hay muchas veces que sin razón alguna, me siento muy contento (a) y muy emocionado (a).', 93),
(149, 2, 14, 'Yo me escapé de mi casa cuando era adolescente por lo menos una vez.', 94),
(150, 2, 14, 'Muchas veces digo cosas rápidamente de las que luego me arrepiento.', 95),
(151, 2, 14, 'En las últimas semanas me siento agotado sin ninguna razón.', 96),
(152, 2, 14, 'De un tiempo a esta parte me siento muy culpable porque ya no puedo hacer las cosas bien.', 97),
(153, 2, 14, 'Las ideas me dan vueltas y vueltas en la cabeza y no se van. ', 98),
(154, 2, 14, 'De un año o dos a esta parte, me siento bastante desanimado (a) y triste acerca de la vida.', 99),
(155, 2, 14, 'Mucha gente lleva años espiando mi vida privada. ', 100),
(156, 2, 14, 'No sé por qué pero a veces digo cosas crueles simplemente para hacer infelices a los otros.', 101),
(157, 2, 14, 'Odio y temo a la mayoría de la gente.', 102),
(158, 2, 14, 'Expreso mis opiniones sobre las cosas, no importa lo que los otros piensen.', 103),
(159, 2, 14, 'Cuando alguien con autoridad insiste en que haga algo, es muy probable que lo posponga o lo haga mal a propósito. ', 104),
(160, 2, 14, 'Mi hábito de abusar de las drogas me ha causado que falte al trabajo en el pasado. ', 105),
(161, 2, 14, 'Siempre estoy dispuesto (a) a ceder con los demás para evitar problemas. ', 106),
(162, 2, 14, 'Frecuentemente estoy molesto (a) y renegón (a).', 107),
(163, 2, 14, 'Simplemente ya no tengo la fuerza para defenderme. ', 108),
(164, 2, 14, 'Últimamente y sin ninguna razón en especial tengo que pensar las cosa una y otra vez', 109),
(165, 2, 14, 'Frecuentemente pienso que no merezco las cosas buenas que me suceden.', 110),
(166, 2, 14, 'Utilizo mis encantos para obtener las atenciones de los demás. ', 111),
(167, 2, 14, 'Frecuentemente cuando estoy solo (a), siento la fuerte presencia de alguien invisible cerca de mi.', 112),
(168, 2, 14, 'Me siento muy desorientado (a) y no sé adónde voy en la vida.', 113),
(169, 2, 14, 'Últimamente sudo mucho y me siento muy tenso.', 114),
(170, 2, 14, 'A veces siento que debería hacer algo para hacerme daño a mi o a otra persona.', 115),
(171, 2, 14, 'He sido injustamente castigado (a) por la ley por crímenes que no he cometido.', 116),
(172, 2, 14, 'Me he vuelto muy nervioso (a) en las últimas semanas.', 117),
(173, 2, 14, 'Constantemente tengo pensamientos extraños de los que quisiera librarme. ', 118),
(174, 2, 14, 'Me resulta muy difícil controlar el impulso de beber en exceso.', 119),
(175, 2, 14, 'Mucha gente piensa que soy un ente que no vale nada. ', 120),
(176, 2, 14, 'Me puedo excitar mucho sexualmente cuando peleo o discuto con la persona que amo.', 121),
(177, 2, 14, 'A través de los años, he tenido éxito en mantener mi consumo de alcohol al mínimo. ', 122),
(178, 2, 14, 'Siempre he puesto a prueba a las personas para averiguar cuánto se puede confiar en ellas. ', 123),
(179, 2, 14, 'Incluso despierto (a) parece que no percibo a la gente que está junto. ', 124),
(180, 2, 14, 'Me resulta muy fácil hacer muchos amigos.', 125),
(181, 2, 14, 'Siempre me aseguro que mi trabajo esté bien planificado y organizado.', 126),
(182, 2, 14, 'Con frecuencia oigo cosas tan bien que me molesta. ', 127),
(183, 2, 14, 'Mi estado de ánimo parece variar mucho de un día a otro. ', 128),
(184, 2, 14, 'No me parece mal que una persona se aproveche de otra que se lo permite. ', 129),
(185, 2, 14, 'Me he cambiado de trabajo más de tres veces en los últimos dos años. ', 130),
(186, 2, 14, 'Tengo muchas ideas que se adelantan a su tiempo. ', 131),
(187, 2, 14, 'De un tiempo a esta parte me siento triste y melancólico (a) y no puedo salirme de eso.', 132),
(188, 2, 14, 'Creo que siempre es mejor buscar ayuda en lo que haga. ', 133),
(189, 2, 14, 'Con frecuencia me enojo con la gente que hace las cosas lentamente.', 134),
(190, 2, 14, 'Me enfado muchísimo con personas que pretenden que yo haga lo que no quiero hacer. ', 135),
(191, 2, 14, 'En los últimos años, me he sentido tan culpable que podría hacer algo terrible a mi mismo (a)', 136),
(192, 2, 14, 'Nunca paso desapercibido (a) cuando estoy en una fiesta. ', 137),
(193, 2, 14, 'La gente me dice que soy una persona muy correcta y moral. ', 138),
(194, 2, 14, 'A veces me siento confundido y perturbado (a) cuando la gente es amable conmigo. ', 139),
(195, 2, 14, 'Mi uso de las así llamadas drogas ilegales me ha llevado a discusiones con mi familia.', 140),
(196, 2, 14, 'Me siento incómodo (a) con los miembros del sexo opuesto.', 141),
(197, 2, 14, 'Hay miembros de mi familia que dicen que soy egoísta y que sólo pienso en mi mismo.', 142),
(198, 2, 14, 'No me importa que la gente no esté interesada en mí.', 143),
(199, 2, 14, 'Francamente miento bastante seguido para librarme de problemas.', 144),
(200, 2, 14, 'La gente puede fácilmente cambiar mis ideas incluso si pensaba que mi decisión ya estaba tomada. ', 145),
(201, 2, 14, 'Los otros han tratado de engañarme, pero tengo fuerza de voluntad para superarlos. ', 146),
(202, 2, 14, 'Mis padres generalmente me decían que yo no era bueno (a) para nada. ', 147),
(203, 2, 14, 'Con frecuencia, la gente se enfada conmigo porque los mandoneo.', 148),
(204, 2, 14, 'Yo siento gran respeto por aquellas autoridades que están encima mío.', 149),
(205, 2, 14, 'Casi no tengo vínculos cercanos con otras personas.', 150),
(206, 2, 14, 'En el pasado me han dicho que me interesaba o me emocionaba demasiado por demasiadas cosas.', 151),
(207, 2, 14, 'Yo he volado sobre el Atlántico treinta veces en el último año.', 152),
(208, 2, 14, 'Yo creo en el dicho “Quien madruga Dios lo ayuda”. ', 153),
(209, 2, 14, 'Me merezco el sufrimiento que he tenido en la vida.', 154),
(210, 2, 14, 'Mis sentimientos hacía la gente importante en mi vida generalmente oscilan del amor al odio hacía ellos. ', 155),
(211, 2, 14, 'Mis padres nunca estaban de acuerdo. ', 156),
(212, 2, 14, 'En ocasiones he tomado hasta diez tragos o más sin emborracharme.', 157),
(213, 2, 14, 'En grupos sociales casi siempre me siento muy inseguro (a) y tenso (a).', 158),
(214, 2, 14, 'Valoro mucho las normas y reglas porque son una buena guía a seguir. ', 159),
(215, 2, 14, 'Desde que era niño he ido perdiendo contacto con el mundo real.', 160),
(216, 2, 14, 'Rara vez tengo sentimientos fuertes acerca de algo.', 161),
(217, 2, 14, 'Era muy inquieto (a) viajaba de un lado a otro sin ninguna idea de dónde iría a parar. ', 162),
(218, 2, 14, 'No puedo tolerar la gente que llega tarde a las citas. ', 163),
(219, 2, 14, 'Gente oportunista con frecuencia trata de obtener crédito por cosas que yo he hecho o pensado. ', 164),
(220, 2, 14, 'Me enfado mucho si alguien exige que yo haga las cosas a su manera en vez de la mía. ', 165),
(221, 2, 14, 'Tengo la habilidad de ser exitoso (a) en casi cualquier cosa que haga. ', 166),
(222, 2, 14, 'Últimamente me derrumbo. ', 167),
(223, 2, 14, 'Pareciera que animo a la gente que me quiere para que me hiera.', 168),
(224, 2, 14, 'Nunca he tenido un pelo en mi cabeza o en mi cuerpo. ', 169),
(225, 2, 14, 'Cuando estoy con otros me gusta ser el centro de atención. ', 170),
(226, 2, 14, 'Con frecuencia, personas que al principio he admirado mucho, después me han desilusionado fuertemente. ', 171),
(227, 2, 14, 'Soy la clase de persona que puede abordar a cualquiera y agredirlo (a) verbalmente.', 172),
(228, 2, 14, 'Prefiero estar con gente que vaya a protegerme.', 173),
(229, 2, 14, 'Ha habido muchos periodos en mi vida en los que he estado tan alegre y he gastado tanta energía que luego caía en bajadas de ánimo.', 174),
(230, 2, 14, 'He tenido dificultades en el pasado para dejar de abusar de las drogas o alcohol.', 175);

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
(55, 2),
(56, 3),
(56, 6),
(57, 3),
(57, 6),
(58, 4),
(58, 5),
(59, 3),
(59, 6),
(60, 4),
(60, 5),
(61, 4),
(61, 5),
(62, 4),
(62, 5),
(63, 4),
(63, 5),
(64, 4),
(64, 5),
(65, 4),
(65, 5),
(66, 3),
(66, 6),
(67, 4),
(67, 5),
(68, 4),
(68, 5),
(69, 3),
(69, 6),
(70, 4),
(70, 5),
(71, 4),
(71, 5),
(72, 4),
(72, 5),
(73, 4),
(73, 5),
(74, 4),
(74, 5),
(75, 3),
(75, 6),
(76, 3),
(76, 6),
(77, 3),
(77, 6),
(78, 4),
(78, 5),
(79, 4),
(79, 5),
(80, 4),
(80, 5),
(81, 4),
(81, 5),
(82, 4),
(82, 5),
(83, 4),
(83, 5),
(84, 4),
(84, 5),
(85, 3),
(85, 6),
(86, 3),
(86, 6),
(87, 3),
(87, 6),
(88, 4),
(88, 5),
(89, 3),
(89, 6),
(90, 3),
(90, 6),
(91, 3),
(91, 6),
(92, 3),
(92, 6),
(93, 4),
(93, 5),
(94, 4),
(94, 5),
(95, 4),
(95, 6),
(96, 3),
(96, 6),
(97, 4),
(97, 5),
(98, 4),
(98, 5),
(99, 4),
(99, 5),
(100, 4),
(100, 5),
(101, 4),
(101, 5),
(102, 4),
(102, 5),
(103, 4),
(103, 5),
(104, 4),
(104, 5),
(105, 4),
(105, 5),
(106, 4),
(106, 5),
(107, 3),
(107, 6),
(108, 4),
(108, 5),
(109, 4),
(109, 5),
(110, 4),
(110, 5),
(111, 4),
(111, 5),
(112, 4),
(112, 5),
(113, 4),
(113, 5),
(114, 4),
(114, 5),
(115, 3),
(115, 6),
(116, 3),
(116, 6),
(117, 4),
(117, 5),
(118, 3),
(118, 6),
(119, 4),
(119, 5),
(120, 4),
(120, 5),
(121, 4),
(121, 5),
(122, 4),
(122, 5),
(123, 4),
(123, 5),
(124, 4),
(124, 5),
(125, 4),
(125, 5),
(126, 4),
(126, 5),
(127, 4),
(127, 5),
(128, 4),
(128, 5),
(129, 4),
(129, 5),
(130, 3),
(130, 6),
(131, 4),
(131, 5),
(132, 4),
(132, 5),
(133, 4),
(133, 5),
(134, 4),
(134, 5),
(135, 3),
(135, 6),
(136, 3),
(136, 6),
(137, 4),
(137, 5),
(138, 3),
(138, 6),
(139, 3),
(139, 6),
(140, 4),
(140, 5),
(141, 3),
(141, 6),
(142, 4),
(142, 5),
(143, 3),
(143, 6),
(144, 4),
(144, 5),
(145, 4),
(145, 5),
(146, 4),
(146, 5),
(147, 3),
(147, 6),
(148, 3),
(148, 6),
(149, 4),
(149, 5),
(150, 3),
(150, 6),
(151, 4),
(151, 5),
(152, 4),
(152, 5),
(153, 3),
(153, 6),
(154, 4),
(154, 5),
(155, 4),
(155, 5),
(156, 4),
(156, 5),
(157, 4),
(157, 5),
(158, 3),
(158, 6),
(159, 4),
(159, 5),
(160, 4),
(160, 5),
(161, 3),
(161, 6),
(162, 4),
(162, 5),
(163, 4),
(163, 5),
(164, 3),
(164, 6),
(165, 4),
(165, 5),
(166, 4),
(166, 5),
(167, 4),
(167, 5),
(168, 4),
(168, 5),
(169, 4),
(169, 5),
(170, 4),
(170, 5),
(171, 4),
(171, 5),
(172, 4),
(172, 5),
(173, 4),
(173, 5),
(174, 4),
(174, 5),
(175, 4),
(175, 5),
(176, 4),
(176, 5),
(177, 4),
(177, 5),
(178, 4),
(178, 5),
(179, 4),
(179, 5),
(180, 3),
(180, 6),
(181, 3),
(181, 6),
(182, 3),
(182, 6),
(183, 3),
(183, 6),
(184, 4),
(184, 5),
(185, 4),
(185, 5),
(186, 3),
(186, 6),
(187, 4),
(187, 5),
(188, 4),
(188, 5),
(189, 4),
(189, 5),
(190, 4),
(190, 5),
(191, 4),
(191, 5),
(192, 4),
(192, 5),
(193, 3),
(193, 6),
(194, 4),
(194, 5),
(195, 4),
(195, 5),
(196, 4),
(196, 5),
(197, 4),
(197, 5),
(198, 3),
(198, 6),
(199, 4),
(199, 5),
(200, 4),
(200, 5),
(201, 3),
(201, 6),
(202, 4),
(202, 5),
(203, 4),
(203, 5),
(204, 3),
(204, 6),
(205, 4),
(205, 5),
(206, 4),
(206, 5),
(207, 4),
(207, 5),
(208, 3),
(208, 6),
(209, 4),
(209, 5),
(210, 4),
(210, 5),
(211, 4),
(211, 5),
(212, 4),
(212, 5),
(213, 4),
(213, 5),
(214, 3),
(214, 6),
(215, 4),
(215, 5),
(216, 3),
(216, 6),
(217, 4),
(217, 5),
(218, 3),
(218, 6),
(219, 4),
(219, 5),
(220, 4),
(220, 5),
(221, 3),
(221, 6),
(222, 4),
(222, 5),
(223, 4),
(223, 5),
(224, 4),
(224, 5),
(225, 4),
(225, 5),
(226, 4),
(226, 5),
(227, 4),
(227, 5),
(228, 3),
(228, 6),
(229, 3),
(229, 6),
(230, 4),
(230, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_tipo`
--

CREATE TABLE `pregunta_tipo` (
  `pregunta_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta_tipo`
--

INSERT INTO `pregunta_tipo` (`pregunta_id`, `tipo_id`) VALUES
(56, 22),
(56, 23),
(56, 24),
(56, 26),
(57, 18),
(57, 19),
(57, 22),
(58, 19),
(58, 21),
(59, 20),
(59, 22),
(59, 24),
(59, 25),
(59, 26),
(61, 22),
(61, 26),
(62, 20),
(62, 21),
(62, 23),
(62, 24),
(62, 25),
(63, 19),
(63, 27),
(64, 21),
(64, 24),
(64, 26),
(65, 18),
(65, 20),
(65, 27),
(67, 20),
(67, 22),
(67, 23),
(67, 24),
(67, 26),
(68, 18),
(69, 18),
(69, 19),
(69, 21),
(69, 22),
(70, 22),
(70, 23),
(71, 22),
(71, 26),
(71, 27),
(73, 27),
(74, 18),
(74, 19),
(74, 21),
(75, 18),
(75, 21),
(75, 23),
(75, 25),
(76, 19),
(76, 20),
(76, 24),
(76, 25),
(76, 26),
(77, 18),
(77, 22),
(77, 23),
(77, 26),
(78, 19),
(78, 26),
(78, 27),
(80, 18),
(80, 19),
(80, 26),
(80, 27),
(82, 19),
(83, 18),
(83, 19),
(83, 20),
(83, 21),
(83, 22),
(83, 26),
(83, 27),
(85, 23),
(85, 24),
(86, 20),
(86, 22),
(86, 24),
(86, 27),
(87, 19),
(87, 22),
(87, 23),
(87, 24),
(87, 25),
(88, 18),
(89, 18),
(89, 19),
(89, 20),
(89, 23),
(92, 21),
(92, 22),
(93, 23),
(93, 24),
(94, 21),
(94, 25),
(95, 20),
(95, 21),
(95, 24),
(95, 25),
(96, 20),
(96, 21),
(96, 22),
(96, 24),
(97, 20),
(97, 21),
(97, 22),
(97, 23),
(97, 24),
(97, 27),
(98, 20),
(98, 21),
(98, 22),
(98, 23),
(98, 24),
(98, 25),
(98, 26),
(99, 23),
(99, 24),
(100, 19),
(100, 22),
(100, 27),
(101, 18),
(101, 25),
(102, 18),
(102, 19),
(103, 18),
(103, 21),
(103, 23),
(103, 25),
(104, 19),
(104, 20),
(105, 25),
(105, 26),
(106, 21),
(106, 22),
(106, 26),
(106, 27),
(108, 18),
(109, 20),
(109, 27),
(110, 22),
(110, 23),
(110, 26),
(111, 19),
(111, 21),
(111, 27),
(112, 19),
(112, 20),
(112, 27),
(113, 24),
(113, 26),
(115, 18),
(115, 20),
(115, 21),
(115, 22),
(115, 25),
(116, 21),
(116, 25),
(118, 19),
(118, 22),
(118, 27),
(119, 23),
(119, 24),
(119, 25),
(119, 26),
(120, 27),
(121, 21),
(121, 24),
(121, 25),
(121, 26),
(126, 24),
(126, 27),
(128, 23),
(128, 26),
(128, 27),
(129, 20),
(129, 23),
(129, 24),
(129, 25),
(129, 26),
(129, 27),
(130, 20),
(130, 25),
(132, 19),
(132, 20),
(132, 21),
(132, 23),
(132, 24),
(132, 25),
(132, 26),
(132, 27),
(133, 18),
(133, 20),
(133, 22),
(133, 23),
(133, 24),
(133, 25),
(135, 22),
(135, 23),
(135, 24),
(136, 18),
(136, 19),
(136, 20),
(136, 22),
(136, 23),
(136, 25),
(136, 27),
(137, 24),
(137, 26),
(137, 27),
(138, 18),
(138, 19),
(139, 24),
(140, 18),
(140, 22),
(140, 23),
(141, 21),
(141, 22),
(141, 23),
(141, 24),
(141, 25),
(141, 26),
(142, 23),
(143, 25),
(144, 21),
(144, 22),
(146, 20),
(146, 21),
(146, 22),
(146, 23),
(146, 24),
(147, 20),
(147, 23),
(147, 25),
(149, 23),
(150, 18),
(150, 21),
(150, 24),
(150, 25),
(150, 26),
(152, 20),
(154, 27),
(156, 20),
(156, 23),
(156, 24),
(156, 26),
(157, 19),
(158, 18),
(158, 21),
(158, 22),
(158, 23),
(158, 25),
(159, 23),
(159, 26),
(161, 18),
(161, 19),
(161, 20),
(161, 22),
(161, 24),
(161, 27),
(162, 24),
(162, 26),
(163, 18),
(164, 19),
(165, 19),
(165, 20),
(165, 26),
(165, 27),
(166, 18),
(166, 21),
(166, 22),
(166, 23),
(166, 25),
(167, 19),
(168, 19),
(168, 23),
(170, 24),
(170, 26),
(170, 27),
(171, 23),
(173, 19),
(175, 19),
(175, 26),
(175, 27),
(176, 24),
(176, 27),
(178, 26),
(179, 18),
(180, 18),
(180, 19),
(180, 20),
(180, 21),
(180, 22),
(181, 21),
(181, 22),
(181, 25),
(183, 21),
(183, 25),
(183, 26),
(183, 27),
(184, 22),
(184, 23),
(184, 24),
(184, 26),
(185, 21),
(185, 22),
(185, 23),
(186, 22),
(187, 27),
(188, 19),
(188, 20),
(188, 21),
(188, 27),
(189, 22),
(189, 24),
(189, 25),
(190, 22),
(190, 24),
(190, 26),
(192, 21),
(192, 22),
(193, 25),
(194, 19),
(194, 26),
(194, 27),
(195, 23),
(196, 18),
(196, 19),
(196, 27),
(197, 18),
(197, 21),
(197, 22),
(197, 23),
(197, 24),
(198, 22),
(199, 23),
(200, 20),
(200, 24),
(200, 25),
(200, 27),
(201, 22),
(201, 24),
(202, 19),
(202, 20),
(202, 23),
(202, 24),
(203, 24),
(203, 25),
(204, 20),
(204, 22),
(204, 25),
(204, 26),
(205, 18),
(205, 19),
(208, 25),
(209, 27),
(210, 19),
(210, 24),
(210, 25),
(210, 26),
(210, 27),
(211, 26),
(212, 23),
(213, 19),
(213, 21),
(213, 22),
(214, 18),
(214, 20),
(214, 25),
(214, 26),
(215, 18),
(215, 19),
(216, 18),
(216, 25),
(217, 20),
(217, 21),
(217, 23),
(218, 19),
(218, 20),
(218, 24),
(218, 25),
(220, 22),
(220, 23),
(220, 24),
(220, 26),
(221, 21),
(221, 22),
(221, 24),
(222, 27),
(223, 20),
(223, 27),
(225, 21),
(225, 22),
(226, 19),
(226, 21),
(226, 22),
(226, 23),
(226, 26),
(226, 27),
(227, 21),
(227, 22),
(227, 23),
(228, 20),
(228, 21),
(229, 27);

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
(3, 'Test del Estres', '', '2018-02-09', 3, 'Test del Estres'),
(4, 'Test de Estres', '', '2018-02-15', 4, 'test');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `tipo` varchar(90) DEFAULT NULL,
  `descripcion` varchar(450) NOT NULL,
  `num_preguntas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`id`, `name`, `tipo`, `descripcion`, `num_preguntas`) VALUES
(1, 'Cuestionario de Modos de Afrontamiento del Estres', 'COPE', 'Consta de 52 ítems con formato de Si/No, que ocupa un tiempo brebe (aproximandamente 10 minutos). Se utiliza para conocer cómo las personas reaccionan o responden cuando enfrentan a situaciones difíciles o estresantes', '52'),
(2, 'MCMMI-II', 'Clínico', 'Consta de 175 ítems con formato de respuesta Verdadero/Falso, que ocupa un tiempo de administración, relativamente breve (de 15 a 25 minutos). Los diferentes aspectos de la personalidad patológica son recogidas en 26 escalas: 4 escalas de fiabilidad y validez; 10 escalas básicas de personalidad; 3 escalas de personalidad patológica; 6 síndromes clínicos de gravedad moderada; y 3 síndromes clínicos de gravedad severa. De uso clínico.', '175');

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
(13, 'Distracción'),
(14, 'Validez'),
(15, 'Sinceridad'),
(16, 'Deseabilidad Social'),
(17, 'Autodescalificación'),
(18, 'Esquizoide'),
(19, 'Evitativo'),
(20, 'Dependiente'),
(21, 'Histriónico'),
(22, 'Narcisista'),
(23, 'Antisocial'),
(24, 'Agresivo-sádico'),
(25, 'Compulsivo'),
(26, 'Pasivo-agresivo'),
(27, 'Autoderrotista'),
(28, 'Esquizotípico'),
(29, 'Borderline'),
(30, 'Paranoide'),
(31, 'Ansiedad'),
(32, 'Somatoformo'),
(33, 'Bipolar'),
(34, 'Distimia'),
(35, 'Dependencia de alcohol'),
(36, 'Dependencia de drogas'),
(37, 'Desorden del pensamiento'),
(38, 'Depresión mayor'),
(39, 'Desorden delusional');

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
-- Indices de la tabla `pregunta_tipo`
--
ALTER TABLE `pregunta_tipo`
  ADD PRIMARY KEY (`pregunta_id`,`tipo_id`),
  ADD KEY `fk_tipo_pregunta` (`tipo_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
