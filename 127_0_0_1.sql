-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2023 a las 01:58:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `psicologa`
--
CREATE DATABASE IF NOT EXISTS `psicologa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `psicologa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--
-- Creación: 29-11-2023 a las 23:52:22
-- Última actualización: 30-11-2023 a las 00:46:01
--

CREATE TABLE `alumno` (
  `NO_CONTROL` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `A_PATERNO` varchar(50) NOT NULL,
  `A_MATERNO` varchar(50) NOT NULL,
  `F_NACIMIENTO` date NOT NULL,
  `EDAD` int(11) NOT NULL,
  `TELEFON` varchar(20) NOT NULL,
  `CORREO_INST` varchar(100) NOT NULL,
  `GENERO` varchar(10) NOT NULL,
  `GRUPO` varchar(10) NOT NULL,
  `TURNO` varchar(20) NOT NULL,
  `SEMESTRE` int(11) NOT NULL,
  `CLAVE_DIRECCION` int(11) NOT NULL,
  `CLAVECARRERA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`NO_CONTROL`, `NOMBRE`, `A_PATERNO`, `A_MATERNO`, `F_NACIMIENTO`, `EDAD`, `TELEFON`, `CORREO_INST`, `GENERO`, `GRUPO`, `TURNO`, `SEMESTRE`, `CLAVE_DIRECCION`, `CLAVECARRERA`) VALUES
(1001, 'Alejandra', 'Gómez', 'Martínez', '1999-05-15', 24, '555-123-4567', 'alejandra.gomez@universidad.com', 'Femenino', 'A01', 'Matutino', 3, 1, 1),
(1002, 'Roberto', 'Hernández', 'Sánchez', '2000-02-28', 23, '555-234-5678', 'roberto.hernandez@universidad.com', 'Masculino', 'B02', 'Vespertino', 2, 2, 2),
(1003, 'Laura', 'Rodríguez', 'García', '1998-09-10', 25, '555-345-6789', 'laura.rodriguez@universidad.com', 'Femenino', 'C03', 'Matutino', 4, 3, 3),
(1004, 'Carlos', 'Pérez', 'López', '2001-07-03', 22, '555-456-7890', 'carlos.perez@universidad.com', 'Masculino', 'D04', 'Vespertino', 3, 4, 4),
(1005, 'Ana', 'González', 'Martínez', '1999-11-20', 23, '555-567-8901', 'ana.gonzalez@universidad.com', 'Femenino', 'E05', 'Matutino', 2, 5, 5),
(1006, 'Javier', 'Sánchez', 'Ramírez', '2000-04-12', 22, '555-678-9012', 'javier.sanchez@universidad.com', 'Masculino', 'F06', 'Vespertino', 4, 6, 6),
(1007, 'Mariana', 'Ramírez', 'Gómez', '1998-12-05', 24, '555-789-0123', 'mariana.ramirez@universidad.com', 'Femenino', 'G07', 'Matutino', 3, 7, 7),
(1008, 'Ricardo', 'López', 'Fernández', '1999-08-18', 23, '555-890-1234', 'ricardo.lopez@universidad.com', 'Masculino', 'H08', 'Vespertino', 2, 8, 8),
(1009, 'Sofía', 'Martínez', 'Hernández', '2001-01-25', 22, '555-901-2345', 'sofia.martinez@universidad.com', 'Femenino', 'I09', 'Matutino', 4, 9, 9),
(1010, 'Diego', 'Gómez', 'Sánchez', '1998-06-30', 25, '555-012-3456', 'diego.gomez@universidad.com', 'Masculino', 'J10', 'Vespertino', 3, 10, 10),
(1011, 'Elena', 'Sánchez', 'Martínez', '2000-09-03', 22, '555-123-4567', 'elena.sanchez@universidad.com', 'Femenino', 'A01', 'Matutino', 2, 11, 1),
(1012, 'Alejandro', 'Gómez', 'Ramírez', '1999-04-18', 23, '555-234-5678', 'alejandro.gomez@universidad.com', 'Masculino', 'B02', 'Vespertino', 4, 12, 2),
(1013, 'Carmen', 'Martínez', 'Hernández', '2001-11-10', 22, '555-345-6789', 'carmen.martinez@universidad.com', 'Femenino', 'C03', 'Matutino', 3, 13, 3),
(1014, 'Juan', 'Hernández', 'Sánchez', '1998-07-25', 24, '555-456-7890', 'juan.hernandez@universidad.com', 'Masculino', 'D04', 'Vespertino', 2, 14, 4),
(1015, 'Lorena', 'Gómez', 'Ramírez', '2000-12-20', 23, '555-567-8901', 'lorena.gomez@universidad.com', 'Femenino', 'E05', 'Matutino', 4, 15, 5),
(1016, 'Ricardo', 'Sánchez', 'Martínez', '1999-02-12', 25, '555-678-9012', 'ricardo.sanchez@universidad.com', 'Masculino', 'F06', 'Vespertino', 3, 16, 6),
(1017, 'Mónica', 'Martínez', 'Gómez', '2001-05-05', 22, '555-789-0123', 'monica.martinez@universidad.com', 'Femenino', 'G07', 'Matutino', 2, 17, 7),
(1018, 'Jorge', 'Gómez', 'López', '1998-10-18', 23, '555-890-1234', 'jorge.gomez@universidad.com', 'Masculino', 'H08', 'Vespertino', 4, 18, 8),
(1019, 'María', 'López', 'Ramírez', '2000-03-25', 22, '555-901-2345', 'maria.lopez@universidad.com', 'Femenino', 'I09', 'Matutino', 3, 19, 9),
(1020, 'Carlos', 'González', 'Sánchez', '1999-08-30', 24, '555-012-3456', 'carlos.gonzalez@universidad.com', 'Masculino', 'J10', 'Vespertino', 2, 20, 10),
(1021, 'Ana', 'Martínez', 'Fernández', '2001-06-03', 22, '555-123-4567', 'ana.martinez@universidad.com', 'Femenino', 'A01', 'Matutino', 4, 21, 1),
(1022, 'Luis', 'Fernández', 'Gómez', '1998-01-18', 23, '555-234-5678', 'luis.fernandez@universidad.com', 'Masculino', 'B02', 'Vespertino', 3, 22, 2),
(1023, 'Sara', 'Gómez', 'Martínez', '2000-09-10', 25, '555-345-6789', 'sara.gomez@universidad.com', 'Femenino', 'C03', 'Matutino', 2, 23, 3),
(1024, 'Javier', 'Martínez', 'López', '1999-07-03', 22, '555-456-7890', 'javier.martinez@universidad.com', 'Masculino', 'D04', 'Vespertino', 4, 24, 4),
(1025, 'Elena', 'Sánchez', 'Gómez', '2001-11-20', 23, '555-567-8901', 'elena.sanchez@universidad.com', 'Femenino', 'E05', 'Matutino', 3, 25, 5),
(1026, 'Roberto', 'Gómez', 'Hernández', '1998-04-12', 22, '555-678-9012', 'roberto.gomez@universidad.com', 'Masculino', 'F06', 'Vespertino', 2, 26, 6),
(1027, 'Laura', 'Martínez', 'Ramírez', '2000-12-05', 24, '555-789-0123', 'laura.martinez@universidad.com', 'Femenino', 'G07', 'Matutino', 4, 27, 7),
(1028, 'Carlos', 'Sánchez', 'Fernández', '1999-08-18', 23, '555-890-1234', 'carlos.sanchez@universidad.com', 'Masculino', 'H08', 'Vespertino', 3, 28, 8),
(1029, 'Sofía', 'Martínez', 'Hernández', '2001-01-25', 22, '555-901-2345', 'sofia.martinez@universidad.com', 'Femenino', 'I09', 'Matutino', 2, 29, 9),
(1030, 'Diego', 'Gómez', 'Sánchez', '1998-06-30', 25, '555-012-3456', 'diego.gomez@universidad.com', 'Masculino', 'J10', 'Vespertino', 4, 30, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--
-- Creación: 29-11-2023 a las 23:41:50
-- Última actualización: 30-11-2023 a las 00:39:18
--

CREATE TABLE `carrera` (
  `CLAVECARREA` int(11) NOT NULL,
  `CARRERA` varchar(100) NOT NULL,
  `PLANESTUDIO` varchar(50) NOT NULL,
  `CLAVEJD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`CLAVECARREA`, `CARRERA`, `PLANESTUDIO`, `CLAVEJD`) VALUES
(1, 'Ingeniería en Sistemas', '2023-A', 101),
(2, 'Licenciatura en Administración', '2023-A', 102),
(3, 'Ingeniería Civil', '2023-B', 103),
(4, 'Licenciatura en Psicología', '2023-B', 104),
(5, 'Ingeniería Eléctrica', '2023-C', 105),
(6, 'Licenciatura en Contaduría', '2023-C', 106),
(7, 'Arquitectura', '2023-D', 107),
(8, 'Licenciatura en Derecho', '2023-D', 108),
(9, 'Ingeniería Mecánica', '2023-E', 109),
(10, 'Licenciatura en Ciencias de la Comunicación', '2023-E', 110);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--
-- Creación: 30-11-2023 a las 00:03:51
-- Última actualización: 30-11-2023 a las 00:53:54
--

CREATE TABLE `cita` (
  `CLAVE_CITA` int(11) NOT NULL,
  `FECHA_HORA` datetime NOT NULL,
  `LUGAR` varchar(50) NOT NULL,
  `CORREO_INSTITUCIONAL` varchar(100) NOT NULL,
  `NO_CONTROL_ALUMNO` int(11) NOT NULL,
  `CLAVECONSULTA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`CLAVE_CITA`, `FECHA_HORA`, `LUGAR`, `CORREO_INSTITUCIONAL`, `NO_CONTROL_ALUMNO`, `CLAVECONSULTA`) VALUES
(1, '2023-05-10 14:00:00', 'Sala de reuniones 1', 'alejandra.gomez@universidad.com', 1001, 1),
(2, '2023-05-12 15:30:00', 'Aula 203', 'roberto.hernandez@universidad.com', 1002, 2),
(3, '2023-05-15 10:45:00', 'Biblioteca', 'laura.rodriguez@universidad.com', 1003, 3),
(4, '2023-05-18 13:20:00', 'Sala de profesores', 'carlos.perez@universidad.com', 1004, 4),
(5, '2023-05-20 16:00:00', 'Laboratorio de informática', 'ana.gonzalez@universidad.com', 1005, 5),
(6, '2023-05-23 11:30:00', 'Aula 105', 'javier.sanchez@universidad.com', 1006, 6),
(7, '2023-05-25 14:45:00', 'Sala de reuniones 2', 'mariana.ramirez@universidad.com', 1007, 7),
(8, '2023-05-28 10:00:00', 'Sala de profesores', 'ricardo.lopez@universidad.com', 1008, 8),
(9, '2023-05-30 15:15:00', 'Biblioteca', 'sofia.martinez@universidad.com', 1009, 9),
(10, '2023-06-02 12:30:00', 'Aula 205', 'diego.gomez@universidad.com', 1010, 10),
(11, '2023-06-05 14:00:00', 'Sala de reuniones 1', 'elena.sanchez@universidad.com', 1011, 11),
(12, '2023-06-08 15:30:00', 'Aula 203', 'alejandro.gomez@universidad.com', 1012, 12),
(13, '2023-06-11 10:45:00', 'Biblioteca', 'carmen.martinez@universidad.com', 1013, 13),
(14, '2023-06-14 13:20:00', 'Sala de profesores', 'juan.hernandez@universidad.com', 1014, 14),
(15, '2023-06-17 16:00:00', 'Laboratorio de informática', 'lorena.gomez@universidad.com', 1015, 15),
(16, '2023-06-20 11:30:00', 'Aula 105', 'ricardo.sanchez@universidad.com', 1016, 16),
(17, '2023-06-23 14:45:00', 'Sala de reuniones 2', 'monica.martinez@universidad.com', 1017, 17),
(18, '2023-06-26 10:00:00', 'Sala de profesores', 'jorge.gomez@universidad.com', 1018, 18),
(19, '2023-06-29 15:15:00', 'Biblioteca', 'maria.lopez@universidad.com', 1019, 19),
(20, '2023-07-02 12:30:00', 'Aula 205', 'carlos.gonzalez@universidad.com', 1020, 20),
(21, '2023-07-05 14:00:00', 'Sala de reuniones 1', 'ana.martinez@universidad.com', 1021, 21),
(22, '2023-07-08 15:30:00', 'Aula 203', 'luis.fernandez@universidad.com', 1022, 22),
(23, '2023-07-11 10:45:00', 'Biblioteca', 'sara.gomez@universidad.com', 1023, 23),
(24, '2023-07-14 13:20:00', 'Sala de profesores', 'javier.martinez@universidad.com', 1024, 24),
(25, '2023-07-17 16:00:00', 'Laboratorio de informática', 'elena.sanchez@universidad.com', 1025, 25),
(26, '2023-07-20 11:30:00', 'Aula 105', 'roberto.gomez@universidad.com', 1026, 26),
(27, '2023-07-23 14:45:00', 'Sala de reuniones 2', 'laura.martinez@universidad.com', 1027, 27),
(28, '2023-07-26 10:00:00', 'Sala de profesores', 'carlos.sanchez@universidad.com', 1028, 28),
(29, '2023-07-29 15:15:00', 'Biblioteca', 'sofia.martinez@universidad.com', 1029, 29),
(30, '2023-08-01 12:30:00', 'Aula 205', 'diego.gomez@universidad.com', 1030, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--
-- Creación: 29-11-2023 a las 23:59:13
-- Última actualización: 30-11-2023 a las 00:51:32
--

CREATE TABLE `consulta` (
  `CLAVECONSULTA` int(11) NOT NULL,
  `MOTIVOCONSULTA` varchar(200) NOT NULL,
  `OBSERVACIONES` varchar(500) NOT NULL,
  `RECOMENDACIONES` varchar(500) NOT NULL,
  `PROGRESO` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`CLAVECONSULTA`, `MOTIVOCONSULTA`, `OBSERVACIONES`, `RECOMENDACIONES`, `PROGRESO`) VALUES
(1, 'Problemas de concentración', 'El estudiante se muestra distraído en clase', 'Reforzar técnicas de concentración', 'En proceso'),
(2, 'Dificultades en matemáticas', 'El estudiante tiene problemas con los conceptos básicos', 'Clases de refuerzo en matemáticas', 'Mejorando'),
(3, 'Ansiedad antes de exámenes', 'El estudiante reporta nerviosismo y ansiedad previo a los exámenes', 'Aplicar técnicas de manejo del estrés', 'Progresando'),
(4, 'Bajo rendimiento académico', 'El estudiante presenta bajos resultados en varias asignaturas', 'Diseñar plan de estudios personalizado', 'En proceso'),
(5, 'Problemas de lectura', 'El estudiante tiene dificultades para comprender textos', 'Implementar actividades de lectura guiada', 'Mejorando'),
(6, 'Falta de participación en clase', 'El estudiante muestra reluctancia para participar en discusiones', 'Fomentar la participación activa', 'Progresando'),
(7, 'Desmotivación académica', 'El estudiante manifiesta falta de interés en las asignaturas', 'Buscar actividades que despierten interés', 'Mejorando'),
(8, 'Problemas de organización', 'El estudiante tiene dificultades para organizar sus tareas', 'Brindar herramientas de organización', 'En proceso'),
(9, 'Dificultades en redacción', 'El estudiante presenta problemas en la expresión escrita', 'Realizar ejercicios de redacción', 'Progresando'),
(10, 'Falta de hábitos de estudio', 'El estudiante no tiene hábitos de estudio establecidos', 'Crear rutinas de estudio', 'Mejorando'),
(11, 'Problemas de conducta', 'El estudiante muestra comportamientos disruptivos en clase', 'Implementar estrategias de manejo de conducta', 'Progresando'),
(12, 'Baja autoestima académica', 'El estudiante duda de sus habilidades académicas', 'Fomentar la autoconfianza', 'Mejorando'),
(13, 'Falta de interacción social', 'El estudiante tiene dificultades para relacionarse con sus compañeros', 'Facilitar actividades grupales', 'Progresando'),
(14, 'Dificultades en la resolución de problemas', 'El estudiante encuentra dificultades en la resolución de ejercicios', 'Practicar problemas similares', 'Mejorando'),
(15, 'Problemas de adaptación', 'El estudiante es nuevo y tiene dificultades para adaptarse', 'Brindar apoyo emocional y académico', 'Progresando'),
(16, 'Falta de asistencia', 'El estudiante ha faltado frecuentemente a clases', 'Investigar las razones de las ausencias', 'En proceso'),
(17, 'Problemas de salud', 'El estudiante presenta problemas de salud que afectan su rendimiento', 'Coordinar con servicios médicos de la institución', 'Progresando'),
(18, 'Dificultades en la comprensión lectora', 'El estudiante tiene problemas para entender textos complejos', 'Implementar estrategias de lectura comprensiva', 'Mejorando'),
(19, 'Falta de material didáctico', 'El estudiante carece de recursos educativos', 'Proporcionar material de apoyo', 'En proceso'),
(20, 'Problemas de comunicación', 'El estudiante tiene dificultades para expresarse claramente', 'Fomentar la expresión oral', 'Progresando'),
(21, 'Falta de participación en actividades extracurriculares', 'El estudiante no participa en actividades fuera de clase', 'Promover la participación en clubes y eventos', 'Mejorando'),
(22, 'Dificultades en la comprensión de instrucciones', 'El estudiante tiene problemas para seguir instrucciones', 'Explicar instrucciones de manera detallada', 'Progresando'),
(23, 'Problemas de memoria', 'El estudiante olvida información importante', 'Utilizar técnicas de memoria y recordatorio', 'En proceso'),
(24, 'Falta de interés en la carrera', 'El estudiante duda de su elección de carrera', 'Explorar opciones de orientación vocacional', 'Progresando'),
(25, 'Problemas de atención', 'El estudiante se distrae fácilmente en clase', 'Implementar estrategias para mantener la atención', 'Mejorando'),
(26, 'Falta de participación en proyectos grupales', 'El estudiante no colabora en proyectos en equipo', 'Fomentar la colaboración y trabajo en equipo', 'Progresando'),
(27, 'Problemas familiares', 'El estudiante enfrenta dificultades en el ámbito familiar', 'Ofrecer apoyo emocional y recursos', 'En proceso'),
(28, 'Falta de motivación para el autoaprendizaje', 'El estudiante no busca aprender de manera autónoma', 'Promover el interés por el autoaprendizaje', 'Progresando'),
(29, 'Problemas financieros', 'El estudiante enfrenta dificultades económicas', 'Conectar con servicios de apoyo financiero', 'En proceso'),
(30, 'Falta de habilidades de comunicación', 'El estudiante tiene dificultades para expresarse con claridad', 'Desarrollar habilidades de comunicación oral y escrita', 'Progresando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--
-- Creación: 30-11-2023 a las 00:04:17
-- Última actualización: 30-11-2023 a las 00:17:57
--

CREATE TABLE `direccion` (
  `CLAVE_DIRECCION` int(11) NOT NULL,
  `MUNICIPIO` varchar(50) NOT NULL,
  `CP` int(11) NOT NULL,
  `CALLE` varchar(50) NOT NULL,
  `NUMERO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`CLAVE_DIRECCION`, `MUNICIPIO`, `CP`, `CALLE`, `NUMERO`) VALUES
(1, 'Ciudad de México', 7000, 'Av. Reforma', 123),
(2, 'Guadalajara', 44100, 'Calle Juárez', 456),
(3, 'Monterrey', 64000, 'Av. Constitución', 789),
(4, 'Puebla', 72000, 'Calle 5 de Mayo', 101),
(5, 'Querétaro', 76000, 'Blvd. Bernardo Quintana', 202),
(6, 'Tijuana', 22000, 'Av. Revolución', 303),
(7, 'León', 37000, 'Calle Madero', 404),
(8, 'Cancún', 77500, 'Blvd. Kukulcán', 505),
(9, 'Merida', 97000, 'Calle 60', 606),
(10, 'Acapulco', 39350, 'Av. Costera Miguel Alemán', 707),
(11, 'Toluca', 50000, 'Paseo Tollocan', 808),
(12, 'Chihuahua', 31000, 'Av. Tecnológico', 909),
(13, 'Morelia', 58000, 'Calle Galeana', 1010),
(14, 'Aguascalientes', 20000, 'Av. López Mateos', 1111),
(15, 'Culiacán', 80000, 'Blvd. Sinaloa', 1212),
(16, 'Hermosillo', 83000, 'Calle Rosales', 1313),
(17, 'Saltillo', 25000, 'Av. Venustiano Carranza', 1414),
(18, 'Tuxtla Gutiérrez', 29000, 'Blvd. Belisario Domínguez', 1515),
(19, 'Durango', 34000, 'Calle 20 de Noviembre', 1616),
(20, 'Tepic', 63150, 'Av. México', 1717),
(21, 'Villahermosa', 86000, 'Paseo Usumacinta', 1818),
(22, 'Campeche', 24000, 'Calle 59', 1919),
(23, 'Colima', 28000, 'Av. Felipe Sevilla', 2020),
(24, 'La Paz', 23000, 'Calle 16 de Septiembre', 2121),
(25, 'Tlaxcala', 90000, 'Av. Juárez', 2222),
(26, 'Xalapa', 91000, 'Calle Enríquez', 2323),
(27, 'Zacatecas', 98000, 'Av. Hidalgo', 2424),
(28, 'Cuernavaca', 62000, 'Calle Matamoros', 2525),
(29, 'Toluca', 50130, 'Av. Independencia', 2626),
(30, 'Oaxaca', 68000, 'Calle Macedonio Alcalá', 2727);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--
-- Creación: 29-11-2023 a las 23:56:47
-- Última actualización: 30-11-2023 a las 00:48:38
--

CREATE TABLE `estado` (
  `CLAVE_ESTADO` int(11) NOT NULL,
  `RIESGO` varchar(30) NOT NULL,
  `NECESIDADESPECIAL` varchar(30) NOT NULL,
  `CANALIZADO` varchar(50) NOT NULL,
  `DEJO_DE_ASISTIR` varchar(30) NOT NULL,
  `DUAL` varchar(30) NOT NULL,
  `ACCIONES` text NOT NULL,
  `NO_CONTROL_A` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`CLAVE_ESTADO`, `RIESGO`, `NECESIDADESPECIAL`, `CANALIZADO`, `DEJO_DE_ASISTIR`, `DUAL`, `ACCIONES`, `NO_CONTROL_A`) VALUES
(1, 'Segundas', 'Ninguna', 'Sí', 'No', 'No', 'Reforzar temario de las clases', 1001),
(2, 'Especial', 'Dislexia', 'Sí', 'Sí', 'Sí', 'Apoyo con profesor especializado', 1002),
(3, 'Recurse', 'Ninguna', 'No', 'No', 'No', 'Clases de refuerzo durante el semestre', 1003),
(4, 'Ninguna', 'Ninguna', 'Sí', 'No', 'No', 'Revisión de temario con tutor', 1004),
(5, 'Segundas', 'Déficit de atención', 'Sí', 'Sí', 'No', 'Uso de técnicas de estudio específicas', 1005),
(6, 'Especial', 'Autismo', 'No', 'No', 'Sí', 'Adaptación de materiales y evaluaciones', 1006),
(7, 'Recurse', 'Ninguna', 'Sí', 'No', 'No', 'Tutorías para reforzar conocimientos previos', 1007),
(8, 'Ninguna', 'Ninguna', 'No', 'No', 'No', 'Seguimiento regular con el tutor', 1008),
(9, 'Segundas', 'Discalculia', 'Sí', 'No', 'No', 'Apoyo de un mentor académico', 1009),
(10, 'Especial', 'Síndrome de Down', 'Sí', 'Sí', 'Sí', 'Adaptación de actividades y evaluaciones', 1010),
(11, 'Recurse', 'Ninguna', 'No', 'No', 'No', 'Asistencia a clases de repaso', 1011),
(12, 'Ninguna', 'Ninguna', 'Sí', 'No', 'No', 'Reforzar hábitos de estudio', 1012),
(13, 'Segundas', 'Dificultades de aprendizaje', 'Sí', 'Sí', 'No', 'Plan de apoyo individualizado', 1013),
(14, 'Especial', 'Déficit de atención', 'Sí', 'No', 'Sí', 'Adaptación de tiempos de evaluación', 1014),
(15, 'Recurse', 'Ninguna', 'No', 'No', 'No', 'Participación en programas de tutorías', 1015),
(16, 'Ninguna', 'Ninguna', 'Sí', 'No', 'No', 'Seguimiento de avance académico', 1016),
(17, 'Segundas', 'Dislexia', 'Sí', 'Sí', 'No', 'Uso de tecnologías de apoyo', 1017),
(18, 'Especial', 'Autismo', 'No', 'No', 'Sí', 'Adaptación de evaluaciones y exámenes', 1018),
(19, 'Recurse', 'Ninguna', 'Sí', 'No', 'No', 'Clases de refuerzo en materias específicas', 1019),
(20, 'Ninguna', 'Ninguna', 'No', 'No', 'No', 'Monitoreo constante de asistencia', 1020),
(21, 'Segundas', 'Déficit de atención', 'Sí', 'Sí', 'No', 'Apoyo de un mentor académico', 1021),
(22, 'Especial', 'Síndrome de Down', 'Sí', 'Sí', 'Sí', 'Adaptación de actividades y evaluaciones', 1022),
(23, 'Recurse', 'Ninguna', 'No', 'No', 'No', 'Asistencia a clases de repaso', 1023),
(24, 'Ninguna', 'Ninguna', 'Sí', 'No', 'No', 'Reforzar hábitos de estudio', 1024),
(25, 'Segundas', 'Dificultades de aprendizaje', 'Sí', 'Sí', 'No', 'Plan de apoyo individualizado', 1025),
(26, 'Especial', 'Déficit de atención', 'Sí', 'No', 'Sí', 'Adaptación de tiempos de evaluación', 1026),
(27, 'Recurse', 'Ninguna', 'No', 'No', 'No', 'Participación en programas de tutorías', 1027),
(28, 'Ninguna', 'Ninguna', 'Sí', 'No', 'No', 'Seguimiento de avance académico', 1028),
(29, 'Segundas', 'Dislexia', 'Sí', 'Sí', 'No', 'Uso de tecnologías de apoyo', 1029),
(30, 'Especial', 'Autismo', 'No', 'No', 'Sí', 'Adaptación de evaluaciones y exámenes', 1030);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_de_division`
--
-- Creación: 30-11-2023 a las 00:37:25
-- Última actualización: 30-11-2023 a las 00:37:25
--

CREATE TABLE `jefe_de_division` (
  `CLAVEJD` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `A_PATERNO` varchar(50) NOT NULL,
  `A_MATERNO` varchar(50) NOT NULL,
  `GENERO` varchar(20) NOT NULL,
  `EDAD` int(11) NOT NULL,
  `TELEFONOC` varchar(20) NOT NULL,
  `CORREOE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jefe_de_division`
--

INSERT INTO `jefe_de_division` (`CLAVEJD`, `NOMBRE`, `A_PATERNO`, `A_MATERNO`, `GENERO`, `EDAD`, `TELEFONOC`, `CORREOE`) VALUES
(101, 'Juan', 'Gómez', 'López', 'Masculino', 45, '555-123-4567', 'juan.gomez@email.com'),
(102, 'María', 'Hernández', 'Martínez', 'Femenino', 38, '555-234-5678', 'maria.hernandez@email.com'),
(103, 'Carlos', 'Rodríguez', 'Sánchez', 'Masculino', 50, '555-345-6789', 'carlos.rodriguez@email.com'),
(104, 'Laura', 'Pérez', 'García', 'Femenino', 42, '555-456-7890', 'laura.perez@email.com'),
(105, 'Javier', 'Díaz', 'Ramírez', 'Masculino', 48, '555-567-8901', 'javier.diaz@email.com'),
(106, 'Isabel', 'Martínez', 'González', 'Femenino', 37, '555-678-9012', 'isabel.martinez@email.com'),
(107, 'Miguel', 'López', 'Fernández', 'Masculino', 55, '555-789-0123', 'miguel.lopez@email.com'),
(108, 'Ana', 'García', 'Jiménez', 'Femenino', 40, '555-890-1234', 'ana.garcia@email.com'),
(109, 'Pedro', 'Sánchez', 'Ruiz', 'Masculino', 43, '555-901-2345', 'pedro.sanchez@email.com'),
(110, 'Carmen', 'Fernández', 'Torres', 'Femenino', 39, '555-012-3456', 'carmen.fernandez@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `super_usuario`
--
-- Creación: 30-11-2023 a las 00:07:04
--

CREATE TABLE `super_usuario` (
  `CLAVE_SU` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `A_PATERNO` varchar(50) NOT NULL,
  `A_MATERNO` varchar(50) NOT NULL,
  `CORREOE` varchar(100) NOT NULL,
  `CONTRASENA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--
-- Creación: 29-11-2023 a las 23:46:43
-- Última actualización: 30-11-2023 a las 00:43:04
--

CREATE TABLE `tutor` (
  `CLAVETUTOR` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `A_PATERNO` varchar(50) NOT NULL,
  `A_MATERNO` varchar(50) NOT NULL,
  `GENERO` varchar(20) NOT NULL,
  `EDAD` int(11) NOT NULL,
  `TELEFONOC` varchar(20) NOT NULL,
  `CORREOE` varchar(100) NOT NULL,
  `CLAVECARRERA` int(11) NOT NULL,
  `CONTRASEÑA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`CLAVETUTOR`, `NOMBRE`, `A_PATERNO`, `A_MATERNO`, `GENERO`, `EDAD`, `TELEFONOC`, `CORREOE`, `CLAVECARRERA`, `CONTRASEÑA`) VALUES
(201, 'Elena', 'González', 'Martínez', 'Femenino', 34, '555-123-4567', 'elena.gonzalez@email.com', 1, 'tutorElena123'),
(202, 'Ricardo', 'Díaz', 'Vargas', 'Masculino', 42, '555-234-5678', 'ricardo.diaz@email.com', 2, 'tutorRicardo456'),
(203, 'Laura', 'Ramírez', 'Hernández', 'Femenino', 37, '555-345-6789', 'laura.ramirez@email.com', 3, 'tutorLaura789'),
(204, 'Carlos', 'Sánchez', 'López', 'Masculino', 45, '555-456-7890', 'carlos.sanchez@email.com', 4, 'tutorCarlos101'),
(205, 'Ana', 'García', 'Fernández', 'Femenino', 39, '555-567-8901', 'ana.garcia@email.com', 5, 'tutorAna202'),
(206, 'Javier', 'Martínez', 'Gómez', 'Masculino', 48, '555-678-9012', 'javier.martinez@email.com', 6, 'tutorJavier303'),
(207, 'Sara', 'Fernández', 'Gómez', 'Femenino', 36, '555-789-0123', 'sara.fernandez@email.com', 7, 'tutorSara404'),
(208, 'Miguel', 'López', 'Hernández', 'Masculino', 50, '555-890-1234', 'miguel.lopez@email.com', 8, 'tutorMiguel505'),
(209, 'Isabel', 'Díaz', 'Ramírez', 'Femenino', 41, '555-901-2345', 'isabel.diaz@email.com', 9, 'tutorIsabel606'),
(210, 'Diego', 'Gómez', 'Sánchez', 'Masculino', 44, '555-012-3456', 'diego.gomez@email.com', 10, 'tutorDiego707'),
(211, 'Luis', 'Martínez', 'Gómez', 'Masculino', 38, '555-123-4567', 'luis.martinez@email.com', 1, 'tutorLuis123'),
(212, 'Carmen', 'González', 'Hernández', 'Femenino', 35, '555-234-5678', 'carmen.gonzalez@email.com', 2, 'tutorCarmen456'),
(213, 'Raúl', 'Ramírez', 'Sánchez', 'Masculino', 47, '555-345-6789', 'raul.ramirez@email.com', 3, 'tutorRaul789'),
(214, 'Elena', 'Díaz', 'López', 'Femenino', 40, '555-456-7890', 'elena.diaz@email.com', 4, 'tutorElena101'),
(215, 'Juan', 'Fernández', 'Gómez', 'Masculino', 43, '555-567-8901', 'juan.fernandez@email.com', 5, 'tutorJuan202'),
(216, 'Lorena', 'Sánchez', 'Martínez', 'Femenino', 36, '555-678-9012', 'lorena.sanchez@email.com', 6, 'tutorLorena303'),
(217, 'Miguel', 'Gómez', 'Ramírez', 'Masculino', 49, '555-789-0123', 'miguel.gomez@email.com', 7, 'tutorMiguel404'),
(218, 'Sofía', 'Hernández', 'López', 'Femenino', 42, '555-890-1234', 'sofia.hernandez@email.com', 8, 'tutorSofia505'),
(219, 'Arturo', 'Martínez', 'Díaz', 'Masculino', 39, '555-901-2345', 'arturo.martinez@email.com', 9, 'tutorArturo606'),
(220, 'Ana', 'Díaz', 'Fernández', 'Femenino', 41, '555-012-3456', 'ana.diaz@email.com', 10, 'tutorAna707');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`NO_CONTROL`),
  ADD KEY `carrera_alumno` (`CLAVECARRERA`),
  ADD KEY `carrera_direccion` (`CLAVE_DIRECCION`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`CLAVECARREA`),
  ADD KEY `carrera_jd` (`CLAVEJD`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`CLAVE_CITA`),
  ADD KEY `alumno_cita` (`NO_CONTROL_ALUMNO`),
  ADD KEY `consulta_cita` (`CLAVECONSULTA`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`CLAVECONSULTA`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`CLAVE_DIRECCION`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`CLAVE_ESTADO`),
  ADD KEY `alumno_estado` (`NO_CONTROL_A`);

--
-- Indices de la tabla `jefe_de_division`
--
ALTER TABLE `jefe_de_division`
  ADD PRIMARY KEY (`CLAVEJD`);

--
-- Indices de la tabla `super_usuario`
--
ALTER TABLE `super_usuario`
  ADD PRIMARY KEY (`CLAVE_SU`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`CLAVETUTOR`),
  ADD KEY `carrera_tutor` (`CLAVECARRERA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `CLAVE_CITA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `CLAVECONSULTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `CLAVE_DIRECCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `CLAVE_ESTADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `carrera_alumno` FOREIGN KEY (`CLAVECARRERA`) REFERENCES `carrera` (`CLAVECARREA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `carrera_direccion` FOREIGN KEY (`CLAVE_DIRECCION`) REFERENCES `direccion` (`CLAVE_DIRECCION`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_jd` FOREIGN KEY (`CLAVEJD`) REFERENCES `jefe_de_division` (`CLAVEJD`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `alumno_cita` FOREIGN KEY (`NO_CONTROL_ALUMNO`) REFERENCES `alumno` (`NO_CONTROL`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `consulta_cita` FOREIGN KEY (`CLAVECONSULTA`) REFERENCES `consulta` (`CLAVECONSULTA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `alumno_estado` FOREIGN KEY (`NO_CONTROL_A`) REFERENCES `alumno` (`NO_CONTROL`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `carrera_tutor` FOREIGN KEY (`CLAVECARRERA`) REFERENCES `carrera` (`CLAVECARREA`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
