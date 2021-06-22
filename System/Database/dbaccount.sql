-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-01-2019 a las 20:12:01
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbaccount`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a0000`
--

CREATE TABLE `a0000` (
  `idcuenta` int(11) NOT NULL COMMENT 'indice de la tabla de cuentas contables del cliente A0000',
  `codigo` varchar(9) NOT NULL COMMENT 'codigo de la cuenta contable adoptada',
  `cuentanom` varchar(45) NOT NULL COMMENT 'nombre de la cuenta contable',
  `cuentaniv` varchar(1) NOT NULL COMMENT 'nivel de la cuenta contable',
  `cuentatipo` varchar(1) NOT NULL COMMENT 'Tipo de cuenta Activo Pasivo paTrimonio Ingreso Egreso Debito Credito',
  `idcustom` int(11) NOT NULL COMMENT 'identificacion del codigo del cliente que tendría que igual a 0000',
  `codigoSIN` varchar(6) DEFAULT NULL COMMENT 'código de la cuenta contable del SIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ca0000`
--

CREATE TABLE `ca0000` (
  `idca` int(11) NOT NULL COMMENT 'indice de documento contable cabecera',
  `camonth` varchar(2) NOT NULL COMMENT 'numero del mes del comprobante',
  `canumber` int(11) NOT NULL COMMENT 'número de comprobante por tipo (E)greso (I)ngreso (D)iario',
  `cadate` date NOT NULL COMMENT 'fecha del movimiento o de la transaccion',
  `cachange` decimal(10,0) DEFAULT NULL COMMENT 'tipo de cambio monetario de la transacción',
  `caname` varchar(100) DEFAULT NULL COMMENT 'nombre a quien se paga',
  `camount` double NOT NULL COMMENT 'importe global del comprobante',
  `canote` longtext NOT NULL COMMENT 'concepto del documento de pago',
  `catype` varchar(1) NOT NULL COMMENT 'tipo de documento (E)greso (I)ngreso (D)iario',
  `caform` varchar(10) DEFAULT NULL COMMENT 'forma de pago (C)heque (E)fectivo',
  `idsocios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ca0000`
--

INSERT INTO `ca0000` (`idca`, `camonth`, `canumber`, `cadate`, `cachange`, `caname`, `camount`, `canote`, `catype`, `caform`, `idsocios`) VALUES
(1, '12', 105, '0000-00-00', '0', NULL, 5000, 'materiales', 'I', NULL, 2),
(6, '12', 12, '2019-01-10', '0', NULL, 2222, 'sadasdas', 'I', NULL, 2),
(7, '12', 122, '2019-01-09', '0', NULL, 12222, 'aasdsasd', 'I', NULL, 2),
(8, '12', 22, '2019-01-17', '0', NULL, 2222, 'asdasdasd', 'I', NULL, 2),
(9, 'aa', 0, '2019-01-02', '0', NULL, 0, 'asdd', 'I', NULL, 2),
(10, 'aa', 0, '2019-01-02', '0', NULL, 0, 'asdd', 'I', NULL, 2),
(11, 'aa', 0, '2019-01-02', '0', NULL, 0, 'asdd', 'I', NULL, 2),
(12, 'aa', 0, '2019-01-02', '0', NULL, 0, 'asdd', 'I', NULL, 2),
(13, 'aa', 0, '2019-01-02', '0', NULL, 0, 'asdd', 'I', NULL, 2),
(14, 'aa', 0, '2019-01-02', '0', NULL, 0, 'asdd', 'I', NULL, 2),
(15, 'aa', 0, '2019-01-02', '0', NULL, 0, 'asdd', 'I', NULL, 2),
(16, '12', 12, '2019-01-02', '2112', NULL, 233, 'dasda', 'I', NULL, 2),
(17, 'as', 0, '2019-01-02', '0', NULL, 0, 'asd', 'I', NULL, 2),
(18, '12', 12, '2019-01-10', '0', NULL, 0, 'asc', 'I', NULL, 2),
(19, '12', 0, '2019-01-09', '0', NULL, 0, 'asd', 'I', NULL, 2),
(20, '12', 12, '2019-01-02', '0', NULL, 0, 'asdsad', 'I', NULL, 2),
(21, 'sd', 0, '2019-01-08', '0', NULL, 0, 'sdf', 'I', NULL, 2),
(22, '1', 0, '2019-01-09', '0', NULL, 0, 'qw', 'I', NULL, 2),
(23, 'we', 212, '2019-01-02', '21', NULL, 121, '12', 'I', NULL, 2),
(24, '12', 12, '2019-01-09', '12', NULL, 0, 'wqqw', 'I', NULL, 2),
(25, '12', 12, '2019-01-10', '12', NULL, 0, 'asdasd', 'I', NULL, 2),
(26, '12', 12, '2019-01-08', '12', NULL, 0, 'asd', 'I', NULL, 2),
(27, '12', 12, '2019-01-09', '0', NULL, 0, 'asxxasx', 'I', NULL, 2),
(28, '12', 12, '2019-01-03', '0', NULL, 0, 'dscsd', 'I', NULL, 2),
(29, '12', 2122, '2019-01-09', '222', NULL, 5, 'cdad', 'I', NULL, 2),
(30, '12', 25, '2019-01-09', '0', 'ejemplo', 222, 'addcscsdcds', 'I', NULL, 2),
(31, '15', 122, '2019-01-09', '0', 'Juaquin', 12, 'adsdsd', 'I', NULL, 2),
(32, '11', 22, '2019-01-16', '0', 'asdasd', 112, '21122', 'I', NULL, 2),
(33, '12', 12, '2019-01-10', '0', 'asas', 222, 'cdcscsd', 'I', NULL, 2),
(34, '12', 12, '2019-01-10', '0', 'assasa', 1212, '12121', 'I', NULL, 2),
(35, '12', 12, '2019-01-08', '0', 'qwdadw', 22222, 'dddd', 'I', NULL, 2),
(36, '12', 21, '2019-01-15', '0', 'dadasd', 1212, 'adsd', 'I', NULL, 2),
(37, '11', 11, '2019-01-03', '0', 'asdasd', 222, 'acscac', 'I', NULL, 2),
(38, '12', 12, '2019-01-17', '0', 'dasdasd', 1212, 'asdasd', 'I', NULL, 2),
(39, '12', 23, '2019-01-09', '0', 'Ejemplo', 1221, 'dasdasd', 'I', NULL, 2),
(40, '1', 2, '2019-01-10', '0', 'prueba', 2222, 'pf', 'I', NULL, 2),
(41, '12', 12, '2019-01-08', '0', 'asdasd', 222, 'cacsdds', 'I', NULL, 2),
(42, '1', 222, '2019-01-09', '0', 'saasd', 1222, 'asdas', 'I', NULL, 2),
(43, '11', 12, '2019-01-02', '0', 'asssassa', 2222, 'dasasdasd', 'I', NULL, 2),
(44, '12', 22, '2019-01-08', '0', 'sadasdasd', 121, '12ddd', 'I', NULL, 2),
(45, '12', 12, '2019-01-08', '0', 'sadasd', 2222, 'dasasda', 'I', NULL, 2),
(46, '12', 122, '2019-01-08', '0', 'asdasdad', 122, 'aasdasdasd', 'I', NULL, 2),
(47, '12', 12, '2019-01-16', '0', 'sdfsdfsdf', 12222, 'fsdfsdfsfd', 'I', NULL, 2),
(48, '12', 12, '2019-01-10', '0', 'Juan silva', 1222, 'Plata en bruto', 'I', NULL, 2),
(49, '12', 12, '2019-01-09', '0', 'asdasdas', 11212, 'asdasd', 'I', NULL, 2),
(50, '12', 12, '2019-01-09', '0', 'dsfsdfsd', 12121, '121212', 'I', NULL, 2),
(51, '12', 12, '2019-01-23', '0', 'dsfsdf', 1212, 'dsssdd', 'I', NULL, 2),
(52, '12', 515, '2019-01-04', '0', 'hjbjhbjh', 51651, '151515', 'I', NULL, 2),
(53, '3', 1, '2019-01-10', '0', 'q', 2, 'd', 'I', NULL, 2),
(54, '1', 1, '2019-01-02', '0', 'saa', 1, '1', 'I', NULL, 2),
(55, '1', 1, '2019-01-02', '0', '1', 1, '1', 'I', NULL, 2),
(56, '1', 1, '2019-01-03', '0', '111', 12122, '12ccc', 'I', NULL, 2),
(57, '12', 12, '2019-01-08', '0', '22', 22, '121212', 'I', NULL, 2),
(58, '12', 12, '2019-01-09', '0', '1212', 22, '1ddddd', 'I', NULL, 2),
(59, '12', 22, '2019-01-09', '0', '12211221', 122, 'cddsdsds', 'I', NULL, 2),
(60, '12', 12, '2019-01-16', '0', '12121', 12112, 'dasdasdasd', 'I', NULL, 2),
(61, '11', 11, '2019-01-08', '0', 'asdasd', 11, '1', 'I', NULL, 2),
(62, '11', 1, '2019-01-08', '0', 'ffff', 1, '1', 'I', NULL, 2),
(63, '1', 1, '2019-01-01', '0', '111', 11, '1111', 'I', NULL, 2),
(64, '11', 11, '2019-01-10', '0', 'ssss', 111, '111', 'I', NULL, 2),
(65, '12', 12, '2019-01-09', '0', '1212', 1212, 'dass', 'I', NULL, 2),
(66, '12', 12, '2019-01-03', '0', '1111', 1221, 'dsadasd', 'I', NULL, 2),
(67, '11', 11, '2019-01-10', '0', 'asdasd', 111, '1111', 'I', NULL, 2),
(68, '12', 12, '2019-01-10', '0', '1333', 22, '2222', 'I', NULL, 2),
(69, '12', 2, '2019-01-08', '0', 'dddd', 2, 'ddddd', 'I', NULL, 2),
(70, '12', 12, '2019-01-08', '0', '2222', 222, '2222', 'I', NULL, 2),
(71, '12', 12, '2019-01-07', '0', '12', 2, '222', 'I', NULL, 2),
(72, '12', 212, '2019-01-08', '0', '21', 22, 'd222', 'I', NULL, 2),
(73, '12', 12, '2019-01-08', '0', '12121', 12, '12', 'I', NULL, 2),
(74, '12', 12, '2019-01-15', '0', 'asdasda', 222, '2222', 'I', NULL, 2),
(75, '12', 12, '2019-01-16', '0', 'aasas', 111, '1111', 'I', NULL, 2),
(76, '11', 11, '2019-01-09', '0', '11', 111, '1111', 'I', NULL, 2),
(77, '12', 12, '2019-01-08', '0', 'kfkfkf', 5000, 'dcscsdc', 'I', NULL, 2),
(78, '12', 12, '2019-01-08', '0', 'sadd', 222, '222', 'I', NULL, 2),
(79, '1', 1, '2019-01-15', '0', '111', 22, '222', 'I', NULL, 2),
(80, '12', 1222, '2019-01-10', '0', 'asdasd', 12121, 'momis', 'I', NULL, 2),
(81, '12', 12, '2019-01-09', '0', 'dasdas', 500, 'dasdasdasd', 'I', NULL, 2),
(82, '12', 12, '2019-01-08', '0', '12121', 3322, '3133113', 'I', NULL, 2),
(83, '12', 12, '2019-01-09', '0', 'qdqwdqwd', 12, '12', 'I', NULL, 2),
(84, '12', 12, '2019-01-02', '0', '1212', 12, '12', 'I', NULL, 2),
(85, '12', 12, '2019-01-08', '0', 'asdd', 212, 'dasdsdad', 'I', NULL, 2),
(86, '12', 12, '2019-01-08', '0', 'asdasd', 222, '222222', 'I', NULL, 2),
(87, '12', 12, '2019-01-09', '0', '12', 122, '1221', 'I', NULL, 2),
(88, '21', 12, '2019-01-09', '0', 'asdasd', 121, '121221', 'I', NULL, 2),
(89, '12', 12, '2019-01-02', '0', '121', 1212, '1212', 'I', NULL, 2),
(90, '22', 22, '2019-01-09', '0', '222', 121, '1212', 'I', NULL, 2),
(91, '22', 22, '2019-01-09', '0', '222', 121, '1212', 'I', NULL, 2),
(92, '11', 1, '2019-01-10', '0', '111', 1, '1', 'I', NULL, 2),
(93, '23', 23, '2019-01-09', '0', 'ssss', 2323, '232323', 'I', NULL, 2),
(94, '12', 12, '2019-01-09', '0', '222', 12, '12', 'I', NULL, 2),
(95, '21', 12, '2019-01-10', '0', '12', 22, '1212', 'I', NULL, 2),
(96, '12', 12, '2019-01-02', '0', '1111', 1212, '1212', 'I', NULL, 2),
(97, '12', 12, '2019-01-09', '0', '211', 12, '1212', 'I', NULL, 2),
(98, '12', 12, '2019-01-02', '0', 'qweqwe', 2112, '12121221', 'I', NULL, 2),
(99, '12', 12, '2019-01-11', '0', '1212', 1222, '121221', 'I', NULL, 2),
(100, '12', 12, '2019-01-09', '0', '12121', 1221, '2222', 'I', NULL, 2),
(101, '12', 12, '2019-01-09', '0', '12', 122, '12', 'I', NULL, 2),
(102, '12', 12, '2019-01-09', '0', '1212', 222, '121221', 'I', NULL, 2),
(103, '12', 12, '2019-01-09', '0', '1212', 12, '12', 'I', NULL, 2),
(104, '12', 12, '2019-01-10', '0', '1212', 222, '22222', 'I', NULL, 2),
(105, '12', 12, '2019-01-09', '0', '1212', 22, '222', 'I', NULL, 2),
(106, '12', 12, '2019-01-10', '0', '12', 12, '12', 'I', NULL, 2),
(107, '12', 12, '2019-01-17', '0', '1212', 12, '12', 'I', NULL, 2),
(108, '12', 12, '2019-01-09', '0', '12', 2133, '1233321', 'I', NULL, 2),
(109, '12', 12, '2019-01-16', '0', '21211', 2133, '123123', 'I', NULL, 2),
(110, '23', 23, '2019-01-09', '0', '123123', 123123, '123123', 'I', NULL, 2),
(111, '12', 12, '2019-01-10', '0', '12122', 222, '222', 'I', NULL, 2),
(112, '2', 3, '2019-01-10', '0', '12', 285.5, '6364dsfsd', 'I', NULL, 2),
(113, '12', 12, '2019-01-09', '0', '12', 222, '1222', 'I', NULL, 2),
(114, '12', 12, '2019-01-09', '0', '1221', 222, '2222222', 'I', NULL, 2),
(115, '12', 12, '2019-01-09', '0', '12', 22, '222', 'I', NULL, 2),
(116, '12', 12, '2019-01-09', '0', '12', 12, '12', 'I', NULL, 2),
(117, '12', 12, '2019-01-10', '0', '12', 22, '222', 'I', NULL, 2),
(118, '12', 12, '2019-01-09', '0', 'ewqedwedwed', 22, '1212', 'I', NULL, 2),
(119, '12', 12, '2019-01-09', '0', '1212', 11, '222', 'I', NULL, 2),
(120, '12', 12, '2019-01-08', '0', 'sadasd', 122, '1212122', 'I', NULL, 2),
(121, '12', 12, '2019-01-03', '0', '12', 222, '1212', 'I', NULL, 2),
(122, '12', 12, '2019-01-10', '0', '122', 222, 'dddd', 'I', NULL, 2),
(123, '12', 12, '2019-01-10', '0', '123', 23, '22221', 'I', NULL, 2),
(124, '12', 12, '2019-01-10', '0', '1212', 1212, '1212', 'I', NULL, 2),
(125, '33', 51, '2019-01-10', '0', 'sdffdv', 1212, '5411', 'I', NULL, 2),
(126, '12', 12, '2019-01-09', '0', '2', 12, '12', 'I', NULL, 2),
(127, '12', 12, '2019-01-09', '0', '12', 12, '12', 'I', NULL, 2),
(128, '12', 12, '2019-01-02', '0', '121', 12, '12', 'I', NULL, 2),
(129, '2', 1, '2019-01-10', '0', '2', 21, '12', 'I', NULL, 2),
(130, '1', 2, '2019-01-10', '0', '2', 12, '12', 'I', NULL, 2),
(131, '12', 12, '2019-01-10', '0', '212', 12, '12', 'I', NULL, 2),
(132, '12', 12, '2019-01-10', '0', '12', 122, '12', 'I', NULL, 2),
(133, '1', 1, '2019-01-09', '0', 'asdasd', 2, '2', 'I', NULL, 2),
(134, '2', 1, '2019-01-10', '0', '32', 12, '12', 'I', NULL, 2),
(135, '1', 2, '2019-01-17', '0', '2', 2, '2', 'I', NULL, 2),
(136, '12', 12, '2019-01-10', '0', 'sads', 12, '12', 'I', NULL, 2),
(137, '12', 12, '2019-01-10', '0', '212', 12, '12', 'I', NULL, 2),
(138, '12', 12, '2019-01-09', '0', '1212', 122, '1222', 'I', NULL, 2),
(139, '12', 12, '2019-01-17', '0', 'asd', 12, '1221', 'I', NULL, 2),
(140, '12', 12, '2019-01-10', '0', '12', 22, '122', 'I', NULL, 2),
(141, '12', 12, '2019-01-10', '0', '12', 12, '12', 'I', NULL, 2),
(142, '12', 12, '2019-01-03', '0', '1212', 12, '12', 'I', NULL, 2),
(143, '12', 12, '2019-01-04', '0', 'asd', 12, '12', 'I', NULL, 2),
(144, '3', 4, '2019-01-03', '0', '2', 31, '13', 'I', NULL, 2),
(145, '1', 2, '2019-01-03', '0', '2', 1, '2', 'I', NULL, 2),
(146, '12', 12, '2019-01-10', '0', '12', 12, '12', 'I', NULL, 2),
(147, '3', 4, '2019-01-03', '0', '2', 2, '4', 'I', NULL, 2),
(148, '2', 2, '2019-01-03', '0', '2', 1, '2', 'I', NULL, 2),
(149, '2', 3, '2019-01-09', '0', '121', 4, '5', 'I', NULL, 2),
(150, '12', 12, '2019-01-03', '0', '22', 2, '2', 'I', NULL, 2),
(151, '12', 12, '2019-01-04', '0', '2', 222, '12', 'I', NULL, 2),
(152, '12', 12, '2019-01-11', '0', '12', 2, '2', 'I', NULL, 2),
(153, '1', 2, '2019-01-03', '0', '2', 3, '3', 'I', NULL, 2),
(154, '2', 3, '2019-01-03', '0', '12', 4, '5', 'I', NULL, 2),
(155, '1', 1, '2019-01-04', '0', '12', 2, '3', 'I', NULL, 2),
(156, '12', 12, '2019-01-10', '0', '12', 12, '2', 'I', NULL, 2),
(157, '12', 12, '2019-01-02', '0', '121', 22, '22', 'I', NULL, 2),
(158, '2', 3, '2019-01-03', '0', '2', 3, '4', 'I', NULL, 2),
(159, '1', 2, '2019-01-03', '0', '212', 3, '4', 'I', NULL, 2),
(160, '2', 2, '2019-01-10', '0', '221', 2, '2', 'I', NULL, 2),
(161, '1', 2, '2019-01-04', '0', '2', 2, '12', 'I', NULL, 2),
(162, '2', 3, '2019-01-10', '0', '12', 4, '3', 'I', NULL, 2),
(163, '12', 12, '2019-01-03', '0', '121', 1212, '1212', 'I', NULL, 2),
(164, '12', 12, '2019-01-04', '0', '12', 2, '12', 'I', NULL, 2),
(165, '12', 12, '2019-01-04', '0', '21', 12, '12', 'I', NULL, 2),
(166, '12', 12, '2019-01-05', '0', '21', 12, '12', 'I', NULL, 2),
(167, '2', 2, '2019-01-02', '0', '22', 2, '3', 'I', NULL, 2),
(168, '2', 2, '2019-01-03', '0', '2', 2, '2', 'I', NULL, 2),
(169, '2', 2, '2019-01-03', '0', '2', 2, '2', 'I', NULL, 2),
(170, '22', 22, '2019-01-03', '0', '22', 22, '222', 'I', NULL, 2),
(171, '12', 12, '2019-01-03', '0', '12', 12, '12', 'I', NULL, 2),
(172, '12', 12, '2019-01-03', '0', '12', 222, '222', 'I', NULL, 2),
(173, '2', 3, '2019-01-03', '0', '2', 23, '3', 'I', NULL, 2),
(174, '2', 2, '2019-01-03', '0', '12', 1, '2', 'I', NULL, 2),
(175, '2', 2, '2019-01-03', '0', '2', 3, '4', 'I', NULL, 2),
(176, '2', 3, '2019-01-02', '0', '2', 4, '5', 'I', NULL, 2),
(177, '2', 3, '2019-01-04', '0', '2', 3, '4', 'I', NULL, 2),
(178, '3', 4, '2019-01-03', '0', '2', 5, '3', 'I', NULL, 2),
(179, '2', 3, '2019-01-03', '0', '2', 3, '4', 'I', NULL, 2),
(180, '3', 4, '2019-01-09', '0', '2', 5, '3', 'I', NULL, 2),
(181, '1', 2, '2019-01-04', '0', '2', 3, '4', 'I', NULL, 2),
(182, '2', 2, '2019-01-03', '0', '2', 3, '4', 'I', NULL, 2),
(183, '3', 3, '2019-01-03', '0', '443', 4, '4', 'I', NULL, 2),
(184, '3', 4, '2019-01-03', '0', '2', 4, '4', 'I', NULL, 2),
(185, '2', 3, '2019-01-04', '0', '2', 4, '4', 'I', NULL, 2),
(186, '3', 4, '2019-01-03', '0', '2', 4, '5', 'I', NULL, 2),
(187, '2', 3, '2019-01-04', '0', '2', 4, '4', 'I', NULL, 2),
(188, '12', 123, '2019-01-03', '0', '123', 123, '123', 'I', NULL, 2),
(189, '1', 2, '2019-01-11', '0', '2', 3, '4', 'I', NULL, 2),
(190, '2', 3, '2019-01-03', '0', '2', 2, '3', 'I', NULL, 2),
(191, '2', 2, '2019-01-03', '0', '2', 2, '2', 'I', NULL, 2),
(192, '1', 2, '2019-01-03', '0', '2', 2, '2', 'I', NULL, 2),
(193, '2', 1, '2019-01-03', '0', '2', 2, '3', 'I', NULL, 2),
(194, '3', 4, '2019-01-03', '0', '2', 5, '3', 'I', NULL, 2),
(195, '12', 22, '2019-01-03', '0', '2', 12, '12', 'I', NULL, 2),
(196, '1', 2, '2019-01-03', '0', '2', 3, '4', 'I', NULL, 2),
(197, '12', 12, '2019-01-03', '0', '12', 12, '12', 'I', NULL, 2),
(198, '12', 22, '2019-01-10', '0', '212', 22, '3ee3', 'I', NULL, 2),
(199, '12', 12, '2019-01-02', '0', '21', 12, '12', 'I', NULL, 2),
(200, '12', 12, '2019-01-03', '0', '12122', 1212, '1212', 'I', NULL, 2),
(201, '12', 12, '2019-01-03', '0', '12', 2121, '1221', 'I', NULL, 2),
(202, '12', 12, '2019-01-03', '0', '12', 12, '12', 'I', NULL, 2),
(203, '12', 12, '2019-01-02', '0', '12', 12, '12', 'I', NULL, 2),
(204, '12', 12, '2019-01-03', '0', '12', 222, '1212', 'I', NULL, 2),
(205, '2', 3, '2019-01-03', '0', '1', 4, '5', 'I', NULL, 2),
(206, '2', 3, '2019-01-11', '0', '1', 4, '5', 'I', NULL, 2),
(207, '12', 12, '2019-01-10', '0', '1212', 12, '12', 'I', NULL, 2),
(208, '12', 12, '2019-01-09', '0', '12', 12, '12', 'I', NULL, 2),
(209, '12', 12, '2019-01-09', '0', '12', 12, '2121', 'I', NULL, 2),
(210, '1', 1, '2019-01-10', '0', '1', 1, '1', 'I', NULL, 2),
(211, '2', 3, '2019-01-10', '0', '1', 4, '5', 'I', NULL, 2),
(212, '2', 2, '2019-01-03', '0', '2', 3, '3', 'I', NULL, 2),
(213, '2', 3, '2019-01-02', '0', '1', 4, '4', 'I', NULL, 2),
(214, '12', 12, '2019-01-10', '0', '12', 12, '12', 'I', NULL, 2),
(215, '1', 2, '2019-01-09', '0', '2', 2, '3', 'I', NULL, 2),
(216, '2', 2, '2019-01-10', '0', '2', 3, '4', 'I', NULL, 2),
(217, '1', 2, '2019-01-10', '0', '1', 2, '3', 'I', NULL, 2),
(218, '12', 12, '2019-01-11', '0', 'sd', 121, '12', 'I', NULL, 2),
(219, '23', 23, '2019-01-11', '0', '233', 213, '123', 'I', NULL, 2),
(220, '12', 12, '2019-01-10', '0', '12', 12, '12', 'I', NULL, 2),
(221, '12', 12, '2019-01-11', '0', '12', 12, '12', 'I', NULL, 2),
(222, '12', 12, '2019-01-11', '0', '12', 12, '12', 'I', NULL, 2),
(223, '3', 4, '2019-01-12', '0', '22', 4, '4', 'I', NULL, 2),
(224, '2', 1, '2019-01-10', '0', '2', 2, '2', 'I', NULL, 2),
(225, '2', 3, '2019-01-11', '0', '2', 4, '3', 'I', NULL, 2),
(226, '12', 2, '2019-01-11', '0', '12', 12, '21', 'I', NULL, 2),
(227, '1', 1, '2019-01-12', '0', '1', 2, '3', 'I', NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caraso`
--

CREATE TABLE `caraso` (
  `idcaraso` int(11) NOT NULL COMMENT 'id de la característica del socio',
  `caracter` varchar(45) NOT NULL COMMENT 'Descripción de la característica del socio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caraso`
--

INSERT INTO `caraso` (`idcaraso`, `caracter`) VALUES
(1, 'Administrador'),
(2, 'Socio'),
(3, 'Familia'),
(5, 'Empleado'),
(6, 'Consultora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ccosto`
--

CREATE TABLE `ccosto` (
  `idccosto` int(11) NOT NULL,
  `codint` varchar(7) NOT NULL,
  `descripción` varchar(100) NOT NULL,
  `unidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasacc`
--

CREATE TABLE `clasacc` (
  `idclas` int(11) NOT NULL,
  `nameclas` varchar(45) NOT NULL,
  `typeclas` int(1) NOT NULL,
  `enabled` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cu0000`
--

CREATE TABLE `cu0000` (
  `idcu` int(11) NOT NULL COMMENT 'índice del cuerpo del comprobante',
  `idca` int(11) NOT NULL COMMENT 'indice de la cabecera del comprobante a través de éste se encuentran ambos relacionados',
  `cucodigo` varchar(9) NOT NULL,
  `cudebe` double NOT NULL,
  `cuhaber` double NOT NULL,
  `glosa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cu0000`
--

INSERT INTO `cu0000` (`idcu`, `idca`, `cucodigo`, `cudebe`, `cuhaber`, `glosa`) VALUES
(1, 0, '11', 0, 0, 'wedwed'),
(2, 0, '11', 12, 12, '122'),
(3, 0, '11', 12, 12, 'werwer'),
(4, 23, '12', 111, 111, 'wefdwef'),
(5, 24, '3', 12, 12, 'dadsd'),
(6, 25, '111', 2, 2, '22'),
(7, 26, '22', 121, 12, 'awaw'),
(8, 27, '11', 0, 0, 'ss'),
(9, 27, '11', 12, 222, 'bubub'),
(10, 28, '22', 0, 0, 'www'),
(11, 29, '12', 1222, 213, 'ssdadsd'),
(12, 30, '3', 122, 1212, 'ddd'),
(13, 38, '1', 151, 55, ''),
(14, 80, '11', 12, 12, '22'),
(15, 81, '120000000', 1212, 1212, 'dasdas'),
(16, 82, '120000000', 21, 222, 'd2dd'),
(17, 84, '220000000', 12, 12, '121'),
(18, 85, '110101002', 222, 222, '12'),
(19, 94, '110103000', 23, 23, '232'),
(20, 96, '120000000', 12, 12, '2112'),
(21, 97, '120000000', 12, 12, '1212'),
(22, 98, '120000000', 212, 122, '1212'),
(23, 99, '110000000', 12, 13, '22'),
(24, 100, '120000000', 122, 22, '1212'),
(25, 101, '110101002', 12, 13, '1'),
(26, 103, '120000000', 12233, 122222, '222'),
(27, 103, '100000000', 1333, 133, '2'),
(28, 107, '120000000', 333444444, 3344, '22'),
(29, 108, '120000000', 12345, 543555, '2'),
(30, 110, '120000000', 123456, 654321, '2'),
(31, 110, '110103000', 11, 23, 'e'),
(32, 110, '320000000', 2222, 32222, '2'),
(33, 111, '120000000', 22, 3333, ''),
(34, 111, '100000000', 27.5, 28.5, 'w'),
(35, 112, '100000000', 33.5, 69.5, '2'),
(36, 112, '110101002', 1.5, 1.5, '333'),
(37, 113, '120000000', 2233, 32334, '222'),
(38, 113, '110101002', 1.5, 2.3, '222'),
(39, 113, '110101002', 0.5, 0.5, '2'),
(40, 113, '120000000', 300.2, 300.3, '22'),
(41, 114, '100000000', 222, 222, '222'),
(42, 115, '100000000', 123.3, 332.5, '22'),
(43, 115, '100000000', 0, 0, ''),
(44, 116, '100000000', 0, 0, ''),
(45, 116, '110104000', 122.3, 23.2, ''),
(46, 118, '100000000', 0, 0, ''),
(47, 118, '110101002', 332, 23, '21'),
(48, 118, '110101002', 23, 2, '23'),
(49, 118, '100000000', 33, 33, ''),
(50, 119, '110101002', 0, 0, ''),
(51, 120, '110101002', 12, 12, '2'),
(52, 121, '220000000', 12, 222, '12'),
(53, 122, '110101002', 333, 444, '2'),
(54, 122, '100000000', 23, 23, '233'),
(55, 124, '120300000', 3, 333, '2'),
(56, 140, '110101002', 0, 0, '2'),
(57, 141, '120400000', 0, 0, ''),
(58, 141, '320000000', 4, 44.4, '3'),
(59, 141, '110104000', 23, 0, '3'),
(60, 142, '110101002', 4, 5, '3'),
(61, 143, '100000000', 0, 0, '2'),
(62, 144, '320000000', 0, 0, '3'),
(63, 145, '110101002', 4, 5, '3'),
(64, 146, '110101002', 4, 5, '3'),
(65, 147, '110101002', 2, 2, '2'),
(66, 147, '110101002', 2, 2, '2'),
(67, 147, '110101002', 2, 2, '2'),
(68, 147, '110101002', 2, 2, '2'),
(69, 147, '110101002', 2, 2, '2'),
(70, 148, '110101002', 4, 5, '3'),
(71, 149, '110101002', 4, 5, '3'),
(72, 150, '110101002', 6, 6, '3'),
(73, 151, '110101002', 0, 0, ''),
(74, 152, '110101002', 4, 5, '3'),
(75, 153, '110101002', 4, 5, '3'),
(76, 154, '110101002', 4, 5, '3'),
(77, 155, '110103000', 5, 6, '4'),
(78, 156, '110101002', 0, 0, ''),
(79, 157, '110101002', 4, 0, '3'),
(80, 158, '110101002', 4, 5, '3'),
(81, 159, '110101002', 4, 5, '3'),
(82, 160, '120000000', 3, 4, '2'),
(83, 161, '110101002', 12, 12, 'asdasdasd'),
(84, 162, '110101002', 4, 5, '12dasdasd'),
(85, 163, '110101002', 4, 5, '3'),
(86, 164, '110101002', 4, 5, '3'),
(87, 165, '110101002', 4, 5, '3'),
(88, 166, '110101002', 4, 5, '3'),
(89, 166, '110101002', 4, 5, '3'),
(90, 167, '110101002', 4, 5, '3'),
(91, 167, '110101002', 12, 12, '12'),
(92, 168, '110101002', 4, 5, '3'),
(93, 169, '110101002', 4, 5, '3'),
(94, 170, '100000000', 3, 4, '2'),
(95, 171, '110101002', 4, 0, '3'),
(96, 172, '110101002', 4, 5, '3'),
(97, 173, '100000000', 3, 4, '2'),
(98, 174, '110101002', 4, 5, '3'),
(99, 175, '110101002', 4, 5, '3'),
(100, 176, '110101002', 4, 5, '3'),
(101, 177, '110101002', 4, 5, '3'),
(102, 178, '110101002', 4, 0, '3'),
(103, 179, '110101002', 4, 5, '3'),
(104, 180, '110101002', 4, 5, '3'),
(105, 181, '110101002', 4, 5, '3'),
(106, 182, '110101002', 4, 5, '3'),
(107, 183, '110101002', 4, 5, '3'),
(108, 184, '110104000', 4, 6, '5'),
(109, 185, '110101002', 4, 0, '3'),
(110, 186, '110101002', 4, 5, '3'),
(111, 187, '110101002', 4, 5, '3'),
(112, 188, '110101002', 4, 5, '3'),
(113, 189, '110101002', 4, 5, '3'),
(114, 190, '100000000', 3, 4, '2'),
(115, 191, '110101002', 4, 5, '3'),
(116, 192, '110101002', 4, 5, '3'),
(117, 193, '110101002', 4, 5, '3'),
(118, 194, '110101002', 4, 5, '3'),
(119, 195, '110101002', 4, 5, '3'),
(120, 196, '110101002', 3, 0, '33dddd'),
(121, 197, '110101002', 3, 3, '33fererv'),
(122, 198, '100000000', 3, 4, '2'),
(123, 199, '110101002', 45, 55, '3'),
(124, 200, '110101002', 4, 5, '3'),
(125, 201, '110101002', 4, 5, '3'),
(126, 202, '110101002', 4, 5, '3'),
(127, 203, '110101002', 12, 12, 'wws'),
(128, 204, '110101002', 3, 4, 'e'),
(129, 205, '110101002', 4, 5, '3'),
(130, 206, '110101002', 4, 5, '3'),
(131, 208, '110101002', 4, 5, '3'),
(132, 209, '110101002', 4, 5, '3'),
(133, 210, '100000000', 3, 4, '2'),
(134, 211, '100000000', 3, 4, '2'),
(135, 212, '100000000', 3, 4, '2'),
(136, 213, '110101002', 4, 5, '3'),
(137, 214, '110101002', 4, 5, '3'),
(138, 215, '100000000', 3, 4, '2'),
(139, 216, '110101002', 4, 5, '3'),
(140, 217, '110101002', 4, 5, '3'),
(141, 217, '100000000', 3, 4, '2'),
(142, 217, '120233000', 12, 12, '1221'),
(143, 218, '110101002', 3, 4, '2'),
(144, 218, '310101000', 232, 2323, '3232'),
(145, 225, '110101002', 3, 3, '3'),
(146, 227, '110101002', 3, 4, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasi`
--

CREATE TABLE `cuentasi` (
  `idcuentasi` int(11) NOT NULL,
  `idccosto` int(11) NOT NULL,
  `codinterno` varchar(7) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom`
--

CREATE TABLE `custom` (
  `idcustom` int(11) NOT NULL COMMENT 'llave primaria de identificacion de los clientes',
  `custnit` varchar(15) NOT NULL COMMENT 'nit del cliente',
  `custname` varchar(250) NOT NULL COMMENT 'nombre del cliente',
  `custdate` date NOT NULL COMMENT 'fecha de alta del cliente en el sistema',
  `custadress` varchar(250) DEFAULT NULL COMMENT 'direccion del cliente',
  `custphone` varchar(30) DEFAULT NULL COMMENT 'telefono del cliente',
  `custnotes` varchar(250) DEFAULT NULL COMMENT 'notas adicionales del cliente',
  `idservices` int(11) NOT NULL COMMENT 'id de la actividad economica del servicio del cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice`
--

CREATE TABLE `invoice` (
  `idinvoice` int(11) NOT NULL COMMENT 'id de las facturas de compras',
  `nit_in` int(12) NOT NULL COMMENT 'nit del proveedor o de la factura',
  `number_in` varchar(12) NOT NULL COMMENT 'numero de la factura',
  `autorization_in` varchar(15) NOT NULL COMMENT 'codigo de autorizacion del SIN',
  `date_in` date NOT NULL COMMENT 'fecha de la factura',
  `value_in` double NOT NULL COMMENT 'valor de la factura',
  `code_in` varchar(20) NOT NULL COMMENT 'codigo de control de la factura, en caso de que no exista se coloca 0 cero',
  `certificate_in` varchar(10) NOT NULL COMMENT 'poliza de importacion si fuera el caso de lo contrario se graba con 0 cero',
  `free_in` double NOT NULL COMMENT 'importe excento de impuestos',
  `taxconsumer_in` double NOT NULL COMMENT 'impuesto al consumo especifico ice',
  `type_in` tinyint(1) NOT NULL COMMENT 'tipo de factura 1=pago efectivo 2=pago credito',
  `generate_lcv` tinyint(1) NOT NULL COMMENT 'lcv generado=1, no generado=0',
  `banking_in` tinyint(1) NOT NULL COMMENT 'para valores mayores a 50mil bancariza=1, no bancariza=0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes0000`
--

CREATE TABLE `mes0000` (
  `idmes` int(11) NOT NULL COMMENT 'indice del mes',
  `mes` varchar(10) NOT NULL COMMENT 'nombre del mes',
  `numero` int(11) NOT NULL COMMENT 'ultimo numero de comprobante',
  `type` varchar(1) NOT NULL COMMENT 'tipo del comprobante Ingreso Egreso Diario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nitpublic`
--

CREATE TABLE `nitpublic` (
  `idnitpublic` int(11) NOT NULL COMMENT 'indice de nits grabados',
  `nitpublicnit` int(12) NOT NULL COMMENT 'nit',
  `nitpublicname` varchar(200) NOT NULL COMMENT 'nombre del nit',
  `nitpublicaddress` varchar(250) DEFAULT NULL COMMENT 'direccion del nit',
  `nitpublicphone` varchar(30) DEFAULT NULL COMMENT 'telefono del nit',
  `idservices` int(11) NOT NULL COMMENT 'id clasificacion de actividad economica del SIN',
  `idcuenta` int(11) DEFAULT NULL COMMENT 'cuenta contable asignado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nitpublicd`
--

CREATE TABLE `nitpublicd` (
  `idnitpublicd` int(11) NOT NULL COMMENT 'indice de los nits publicos',
  `autorizacion` int(20) NOT NULL COMMENT 'autorizacion del nit',
  `autofin` date DEFAULT NULL COMMENT 'fecha de vencimiento de la autorizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `officeadd`
--

CREATE TABLE `officeadd` (
  `idofficeadd` int(11) NOT NULL COMMENT 'id de la sucursal o central',
  `idcustom` int(11) NOT NULL COMMENT 'id del cliente',
  `sucaddress` varchar(250) DEFAULT NULL COMMENT 'direccion de la sucursal',
  `sucphone` varchar(30) DEFAULT NULL COMMENT 'telefono de la sucursal',
  `sucnotes` varchar(250) DEFAULT NULL COMMENT 'notas descriptivas',
  `idservices` int(11) NOT NULL COMMENT 'servicios id de la actividad economica clasificada por el SIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagoca`
--

CREATE TABLE `pagoca` (
  `idpagoca` int(11) NOT NULL COMMENT 'id comprobante de pago cabecera',
  `idca` int(11) NOT NULL COMMENT 'id comprobante contable relacionado del pgo',
  `pafecha` date NOT NULL COMMENT 'fecha de pago',
  `paname` varchar(100) NOT NULL COMMENT 'nombre de quién recibe el importe del recibo',
  `paimporte` double NOT NULL COMMENT 'importe total pagado',
  `pacibene` varchar(10) NOT NULL COMMENT 'nro de identificacion del que recibe el pago p.e. CI'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagocu`
--

CREATE TABLE `pagocu` (
  `idpagocu` int(11) NOT NULL,
  `idpagoca` int(11) NOT NULL,
  `idca` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `glosa` varchar(100) NOT NULL,
  `importe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacc`
--

CREATE TABLE `publicacc` (
  `idpublicacc` int(11) NOT NULL COMMENT 'indice de cuenta contable generico',
  `publiccode` varchar(9) NOT NULL COMMENT 'codigo contable generico, que están agrupados así:\ndigito 1, titulo\ndigito 2, titulo\ndigitos 3 y 4, titulo o movimiento\ndigitos 5 y 6, titulo o movimiento\ndigitos 7,8 y 9, movimiento',
  `publicname` varchar(100) NOT NULL COMMENT 'nombre de la cuenta contable generica',
  `publicnivel` int(1) NOT NULL COMMENT 'nivel de la cuenta contable que va del 1 al 5',
  `publicacti` varchar(1) NOT NULL COMMENT '<T>itulo o <M>ovimiento',
  `publictype` varchar(1) NOT NULL COMMENT 'tipo de cuenta, (A)ctivo (P)asivo pa(T)rimonio (I)ngreso (E)greso (D)ebito (C)rédito',
  `publiccodesin` varchar(6) DEFAULT NULL COMMENT 'código de la cuenta contable genérica del SIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `publicacc`
--

INSERT INTO `publicacc` (`idpublicacc`, `publiccode`, `publicname`, `publicnivel`, `publicacti`, `publictype`, `publiccodesin`) VALUES
(1, '100000000', 'ACTIVO', 1, 'T', 'A', '0'),
(2, '110000000', 'ACTIVO CORRIENTE', 2, 'T', 'A', '0'),
(3, '110100000', 'ACTIVO DISPONIBLE', 3, 'T', 'A', '0'),
(4, '110101000', 'CAJA MONEDA NACIONAL', 4, 'T', 'A', '0'),
(5, '110101002', 'caja moneda nacional', 5, 'M', 'A', '0'),
(6, '110102000', 'FONDO FIJO', 4, 'T', 'A', '0'),
(7, '110102001', 'caja chica moneda nacional', 5, 'M', 'A', '0'),
(8, '110103000', 'CAJA MONEDA EXTRANJERA', 4, 'T', 'A', '0'),
(9, '110103001', 'caja moneda extranjera', 5, 'M', 'A', '0'),
(10, '110104000', 'CAJA DE AHORROS MONEDA NACIONAL', 4, 'T', 'A', '0'),
(11, '110104001', 'banco XXX moneda nacional', 5, 'M', 'A', '0'),
(12, '110105000', 'BANCOS CTA CTE MONEDA NACIONAL', 4, 'T', 'A', '0'),
(13, '110105001', 'banco UNION', 5, 'M', 'A', '0'),
(14, '110105002', 'Banco BISA', 5, 'M', 'A', '0'),
(15, '110105005', 'banco xxx', 5, 'M', 'A', '0'),
(16, '110106000', 'BANCOS CTA CTE MONEDA EXTRANJERA', 4, 'T', 'A', '0'),
(17, '110200000', 'ACTIVO REALIZABLE', 3, 'T', 'A', '0'),
(18, '110201000', 'OBRAS EN EJECUCION', 4, 'T', 'A', '0'),
(19, '110202000', 'Inventario de materiales', 5, 'M', 'A', '0'),
(20, '110300000', 'GESTION IMPOSITIVA', 3, 'T', 'A', '0'),
(21, '110301000', 'Iva Crédito Fiscal', 4, 'M', 'A', '0'),
(22, '110302000', 'Iva crédito fiscal diferido', 4, 'M', 'A', '0'),
(23, '110303000', 'IUE por compensar IT', 4, 'M', 'A', '0'),
(24, '110400000', 'ACTIVO EXIGIBLE CORTO PLAZO', 3, 'T', 'A', '0'),
(25, '110401000', 'ACTIVO EXIGIBLE CORTO PLAZO MN', 4, 'T', 'A', '0'),
(26, '110401001', 'cuentas por cobrar clientes bs.', 5, 'M', 'A', '0'),
(27, '110401002', 'Anticipo de activos fijos', 5, 'M', 'A', '0'),
(28, '110401003', 'anticipos al personal mn', 5, 'M', 'A', '0'),
(29, '110402000', 'PRESTAMOS AL PERSONAL MN', 4, 'T', 'A', '0'),
(30, '110403000', 'FONDOS CON CARGO A RENDICION', 4, 'T', 'A', '0'),
(31, '110403001', 'Raul Anti Acha', 5, 'M', 'A', '0'),
(32, '110403002', 'Carlos Cardozo', 5, 'M', 'A', '0'),
(33, '110403003', 'Simon Quisbert', 5, 'M', 'A', '0'),
(34, '110404000', 'ANTICIPOS', 4, 'T', 'A', '0'),
(35, '110404001', 'anticipo contratistas mn', 5, 'M', 'A', '0'),
(36, '110404002', 'anticipo proveedores mn', 5, 'M', 'A', '0'),
(37, '110405000', 'GARANTIAS', 4, 'T', 'A', '0'),
(38, '110405001', 'garantias', 5, 'M', 'A', '0'),
(39, '110405002', 'Garantia de cumplimiento de contrato', 5, 'M', 'A', '0'),
(40, '110405003', 'boletas de garantia ret banco xxxx', 5, 'M', 'A', '0'),
(41, '110406000', 'ACTIVO EXIGIBLE CORTO PLAZO M.E.', 4, 'T', 'A', '0'),
(42, '110406001', 'cuentas por cobrar', 5, 'M', 'A', '0'),
(43, '110406002', 'anticipo a contratistas me', 5, 'M', 'A', '0'),
(44, '110406003', 'prestamos al personal me', 5, 'M', 'A', '0'),
(45, '110500000', 'ACTIVO DIFERIDO CORTO PLAZO', 3, 'T', 'A', '0'),
(46, '110501000', 'seguros anticipados', 4, 'M', 'A', '0'),
(47, '110502000', 'alquileres anticipados', 4, 'M', 'A', '0'),
(48, '120000000', 'ACTIVO NO CORRIENTE', 2, 'T', 'A', '0'),
(49, '120100000', 'ACTIVO FIJO', 3, 'T', 'A', '0'),
(50, '120101000', 'VALOR ACTUAL TERRENOS', 4, 'T', 'A', '0'),
(51, '120101001', 'terreno', 5, 'M', 'A', '0'),
(52, '120102000', 'EDIFICACIONES', 4, 'T', 'A', '0'),
(53, '120102001', 'edificaciones', 5, 'M', 'A', '0'),
(54, '120102999', 'Depreciacion acumukada en edficaciones', 5, 'M', 'A', '0'),
(55, '120103000', 'MUEBLES Y ENSERES', 4, 'T', 'A', '0'),
(56, '120103001', 'muebles y enseres', 5, 'M', 'A', '0'),
(57, '120103002', 'Muebles y Enseres para Vivienda', 5, 'M', 'A', '0'),
(58, '120103999', 'depreciacion acum.muebles y enseres', 5, 'M', 'A', '0'),
(59, '120104000', 'EQUIPOS DE COMPUTACION', 4, 'T', 'A', '0'),
(60, '120104001', 'equipo de computacion', 5, 'M', 'A', '0'),
(61, '120104999', 'Depreciacion acumulada equipos de computacion', 5, 'M', 'A', '0'),
(62, '120105000', 'EQUIPOS DE OFICINA', 4, 'T', 'A', '0'),
(63, '120105001', 'equipos de oficina', 5, 'M', 'A', '0'),
(64, '120105999', 'depreciacion acum.equipos de oficina', 5, 'M', 'A', '0'),
(65, '120106000', 'VEHICULOS', 4, 'T', 'A', '0'),
(66, '120106001', 'vehiculos administracion', 5, 'M', 'A', '0'),
(67, '120106002', 'vehiculos construccion', 5, 'M', 'A', '0'),
(68, '120106999', 'depreciacion acum. vehiculos', 5, 'M', 'A', '0'),
(69, '120107000', 'MAQUINARIA Y EQUIPOS', 4, 'T', 'A', '0'),
(70, '120107001', 'maquinaria y equipo', 5, 'M', 'A', '0'),
(71, '120107002', 'Repuestos', 5, 'M', 'A', '0'),
(72, '120107999', 'Depreciacion acumulada en maquinaria y equipos', 5, 'M', 'A', '0'),
(73, '120108000', 'HERRAMIENTAS', 4, 'T', 'A', '0'),
(74, '120108001', 'herramientas', 5, 'M', 'A', '0'),
(75, '120108002', 'herramientas menores', 5, 'M', 'A', '0'),
(76, '120108999', 'depreciacion acum. herramientas', 5, 'M', 'A', '0'),
(77, '120109000', 'LICENCIAS DE SOFTWARE', 4, 'T', 'A', '0'),
(78, '120109001', 'software', 5, 'M', 'A', '0'),
(79, '120109999', 'depr acumulada software', 5, 'M', 'A', '0'),
(80, '120200000', 'INVERSIONES', 3, 'T', 'A', '0'),
(81, '120201000', 'Estudios y proyectos', 4, 'M', 'A', '0'),
(82, '200000000', 'PASIVO', 1, 'T', 'P', '0'),
(83, '210000000', 'PASIVO CORRIENTE', 2, 'T', 'P', '0'),
(84, '210100000', 'PASIVO EXIGIBLE CORTO PLAZO M.N.', 3, 'T', 'P', '0'),
(85, '210101000', 'OBLIGACIONES BANCARIAS MONEDA NACIONAL', 4, 'T', 'P', '0'),
(86, '210101001', 'prestamos bancarios mn', 5, 'M', 'P', '0'),
(87, '210101002', 'intereses bancarios', 5, 'M', 'P', '0'),
(88, '210102000', 'CUENTAS POR PAGAR SERVICIOS', 4, 'T', 'P', '0'),
(89, '210103000', 'CUENTAS POR PAGAR PROVEEDORES MN', 4, 'T', 'P', '0'),
(90, '210103001', 'proveedores bs.', 5, 'M', 'P', '0'),
(91, '210104000', 'CUENTAS POR PAGAR CONTRATISTAS', 4, 'T', 'P', '0'),
(92, '210104001', 'xxx', 5, 'M', 'P', '0'),
(93, '210105000', 'SUELDOS POR PAGAR MN', 4, 'T', 'P', '0'),
(94, '210105001', 'sueldos por pagar personal', 5, 'M', 'P', '0'),
(95, '210105002', 'sueldos por pagar personal campamento', 5, 'M', 'P', '0'),
(96, '210106000', 'AGUINALDOS POR PAGAR', 4, 'T', 'P', '0'),
(97, '210106001', 'aguinaldos', 5, 'M', 'P', '0'),
(98, '210107000', 'OBLIGACIONES SOCIALES POR PAGAR', 4, 'T', 'P', '0'),
(99, '210107001', 'aportes caja de salud', 5, 'M', 'P', '0'),
(100, '210107002', 'aportes afp futuro', 5, 'M', 'P', '0'),
(101, '210107003', 'aportes afp prevision', 5, 'M', 'P', '0'),
(102, '210108000', 'OBLIGACIONES FISCALES SOBRE VENTAS', 4, 'T', 'P', '0'),
(103, '210108001', 'iva debito fiscal', 5, 'M', 'P', '0'),
(104, '210108002', 'impto a las transacciones por pagar', 5, 'M', 'P', '0'),
(105, '210108003', 'iva debito fiscal diferido', 5, 'M', 'P', '0'),
(106, '210109000', 'IMPUESTOS RETENIDOS', 4, 'T', 'P', '0'),
(107, '210109001', 'iue retencion servicios', 5, 'M', 'P', '0'),
(108, '210109002', 'i.t. retencion a terceros', 5, 'M', 'P', '0'),
(109, '210109003', 'Rc-iva dependientes', 5, 'M', 'P', '0'),
(110, '210110000', 'OBLIGACIONES IMPOSITIVAS', 4, 'T', 'P', '0'),
(111, '210110001', 'Impuestos a las utulidades de las empres', 5, 'M', 'P', '0'),
(112, '210110002', 'impuesto bienes inmuebles', 5, 'M', 'P', '0'),
(113, '210111000', 'PROVISIONES', 4, 'T', 'P', '0'),
(114, '210111001', 'provision aguinaldos de navidad', 5, 'M', 'P', '0'),
(115, '210112000', 'PREVISION CUENTAS INCOBRABLES', 4, 'T', 'P', '0'),
(116, '210112001', 'prevision cuentas incobrables', 5, 'M', 'P', '0'),
(117, '210113000', 'ANTICIPO EN OBRAS', 4, 'T', 'P', '0'),
(118, '210113001', 'Construcciones XXX lugar', 5, 'M', 'A', NULL),
(119, '210113002', 'alcantarillado xxx lugar', 5, 'M', 'P', '0'),
(120, '210113010', 'anticipo obra', 5, 'M', 'P', '0'),
(121, '210113011', 'Proyectos por entregar', 5, 'M', 'P', '0'),
(122, '210200000', 'PASIVO EXIGIBLE CORTO PLAZO ME', 3, 'T', 'P', '0'),
(123, '210201000', 'cuentas por pagar me', 4, 'M', 'P', '0'),
(124, '210202000', 'proveedores me', 4, 'M', 'P', '0'),
(125, '210203000', 'contratistas me', 4, 'M', 'P', '0'),
(126, '210204000', 'Cuentas por pagar C Cardozo', 4, 'M', 'P', '0'),
(127, '210205000', 'Prestamo de Socios', 4, 'M', 'P', '0'),
(128, '220000000', 'PASIVO NO CORRIENTE', 2, 'T', 'P', '0'),
(129, '220100000', 'PASIVO EXIGIBLE LARGO PLAZO MN', 3, 'T', 'P', '0'),
(130, '220101000', 'PROVISIONES', 4, 'T', 'P', '0'),
(131, '220101001', 'provision indemnizacion', 5, 'M', 'P', '0'),
(132, '220200000', 'PASIVO EXIGIBLE LARGO PLAZO ME', 3, 'T', 'P', '0'),
(133, '220210000', 'OBLIGACIONES BANCARIAS ME', 4, 'T', 'P', '0'),
(134, '220210001', 'prestamos bancarios me', 5, 'M', 'P', '0'),
(135, '220211000', 'OTRAS CUENTAS', 4, 'T', 'P', '0'),
(136, '220211001', 'Garantia solidaria Inmueble', 5, 'M', 'P', '0'),
(137, '300000000', 'PATRIMONIO', 1, 'T', 'T', '0'),
(138, '310000000', 'PATRIMONIO', 2, 'T', 'T', '0'),
(139, '310100000', 'capital autorizado', 3, 'M', 'T', '0'),
(140, '310200000', 'Reserva revalorizacion de activos fijos', 3, 'M', 'T', '0'),
(141, '310300000', 'ajuste de capital', 3, 'M', 'T', '0'),
(142, '310400000', 'Reserva legal', 3, 'M', 'T', '0'),
(143, '310500000', 'ajuste global del patrimonio', 3, 'M', 'T', '0'),
(144, '310600000', 'ajuste de reservas patrimoniales', 3, 'M', 'T', '0'),
(145, '320000000', 'RESULTADOS', 2, 'T', 'T', '0'),
(146, '320100000', 'resultados acumulados', 3, 'M', 'T', '0'),
(147, '320200000', 'resultado de la gestion', 3, 'M', 'T', '0'),
(148, '400000000', 'INGRESOS', 1, 'T', 'I', '0'),
(149, '410000000', 'INGRESOS OPERATIVOS', 2, 'T', 'I', '0'),
(150, '410100000', 'EJECUCION OBRAS', 3, 'T', 'I', '0'),
(151, '410101000', 'Proyecto: Beneficiadora de Arroz Blanca', 4, 'M', 'I', '0'),
(152, '410102000', 'Proyecto: Tinglado Loreto', 4, 'M', 'I', '0'),
(153, '410103000', 'Proyecto: Tinglado fabrica de ceramica E', 4, 'M', 'I', '0'),
(154, '410104000', 'Obras eventuales', 4, 'M', 'I', '0'),
(155, '410105000', 'Proyecto: Unidad Educativa Blanca Flor', 4, 'M', 'I', '0'),
(156, '410106000', 'Proyecto: Unidad Educativa Charazani', 4, 'M', 'I', '0'),
(157, '410200000', 'OTROS INGRESOS OPERATIVOS', 3, 'T', 'I', '0'),
(158, '410201000', 'alquiler maquinaria y equipo', 4, 'M', 'I', '0'),
(159, '410202000', 'Descuentos en compras', 4, 'M', 'I', '0'),
(160, '410203000', 'Venta de materiales de construccion', 4, 'M', 'I', '0'),
(161, '420000000', 'INGRESOS NO OPERATIVOS', 2, 'T', 'I', '0'),
(162, '420100000', 'VENTAS Y TRANSFERENCIAS DE ACTIVOS', 3, 'T', 'I', '0'),
(163, '420101000', 'ingreso por venta de activos fijos', 4, 'M', 'I', '0'),
(164, '420102000', 'Devolucion de fondos', 4, 'M', 'I', '0'),
(165, '420103000', 'Ventas de materiales de construccion', 4, 'M', 'I', '0'),
(166, '420200000', 'AJUSTES', 3, 'T', 'I', '0'),
(167, '420201000', 'Ajuste por inflacion y tenencia de bienes', 4, 'M', 'I', '0'),
(168, '420202000', 'ajuste por dif.de cambio y redondeo', 4, 'M', 'I', '0'),
(169, '420203000', 'mantenimiento de valor', 4, 'M', 'I', '0'),
(170, '500000000', 'EGRESOS', 1, 'T', 'E', '0'),
(171, '510000000', 'GASTOS OPERATIVOS', 2, 'T', 'E', '0'),
(172, '510100000', 'GASTOS ADMINISTRACION', 3, 'T', 'E', '0'),
(173, '510101000', 'GASTOS DEL PERSONAL', 4, 'T', 'E', '0'),
(174, '510101001', 'sueldos personal administrativo', 5, 'M', 'E', '0'),
(175, '510101002', 'sueldos personal operativo', 5, 'M', 'E', '0'),
(176, '510101003', 'bonos e incentivos', 5, 'M', 'E', '0'),
(177, '510101004', 'horas extras', 5, 'M', 'E', '0'),
(178, '510101005', 'serenaje', 5, 'M', 'E', '0'),
(179, '510101006', 'Honorarios eventuales (mano de obra)', 5, 'M', 'E', '0'),
(180, '510101007', 'Personal de Pasantia', 5, 'M', 'E', '0'),
(181, '510102000', 'GASTOS BENEFICIOS SOCIALES', 4, 'T', 'E', '0'),
(182, '510102001', 'aguinaldo navidad', 5, 'M', 'E', '0'),
(183, '510102002', 'indemnizacion', 5, 'M', 'E', '0'),
(184, '510102003', 'desahucio', 5, 'M', 'E', '0'),
(185, '510102004', 'vacacion', 5, 'M', 'E', '0'),
(186, '510102005', 'bonificaciones', 5, 'M', 'E', '0'),
(187, '510102006', 'subsidios y asignaciones familiares', 5, 'M', 'E', '0'),
(188, '510103000', 'GASTOS APORTES A LA SEGURIDAD SOCIAL', 4, 'T', 'E', '0'),
(189, '510103001', 'Caja de Salud', 5, 'M', 'E', '0'),
(190, '510103002', 'AFP Futuro de Bolivia', 5, 'M', 'E', '0'),
(191, '510103003', 'AFP Prevision', 5, 'M', 'E', '0'),
(192, '510104000', 'GASTOS MATERIALES Y SUMINISTROS', 4, 'T', 'E', '0'),
(193, '510104001', 'papeleria y material de escritorio', 5, 'M', 'E', '0'),
(194, '510104002', 'material impreso', 5, 'M', 'E', '0'),
(195, '510104003', 'suministros de computacion', 5, 'M', 'E', '0'),
(196, '510104005', 'material de limpieza', 5, 'M', 'E', '0'),
(197, '510104006', 'suministros de oficina', 5, 'M', 'E', '0'),
(198, '510104007', 'combustibles y lubricantes', 5, 'M', 'E', '0'),
(199, '510104008', 'Materiales, insumos y suministros', 5, 'M', 'E', '0'),
(200, '510105000', 'GASTOS POR SERVICIOS CONTRATADOS', 4, 'T', 'E', '0'),
(201, '510105001', 'contabilidad externa', 5, 'M', 'E', '0'),
(202, '510105002', 'auditoria externa', 5, 'M', 'E', '0'),
(203, '510105003', 'asesoria legal', 5, 'M', 'E', '0'),
(204, '510105004', 'Desarrollo de software', 5, 'M', 'E', '0'),
(205, '510106000', 'GASTOS POR SEGUROS', 4, 'T', 'E', '0'),
(206, '510106001', 'gastos primas - seguro edificaciones', 5, 'M', 'E', '0'),
(207, '510106002', 'seguros de vida y accident', 5, 'M', 'E', '0'),
(208, '510106003', 'seguros vehiculos', 5, 'M', 'E', '0'),
(209, '510106004', 'seguros de responsabilidad civil', 5, 'M', 'E', '0'),
(210, '510106005', 'seguro todo riesgo', 5, 'M', 'E', '0'),
(211, '510106006', 'Comisiones por seguros', 5, 'M', 'E', '0'),
(212, '510107000', 'SERVICIOS PUBLICOS Y COMUNICACION', 4, 'T', 'E', '0'),
(213, '510107001', 'energia electrica', 5, 'M', 'E', '0'),
(214, '510107002', 'servicio de telefono y fax', 5, 'M', 'E', '0'),
(215, '510107003', 'servicio agua potable', 5, 'M', 'E', '0'),
(216, '510107004', 'servicio de internet', 5, 'M', 'E', '0'),
(217, '510107005', 'correos y courier', 5, 'M', 'E', '0'),
(218, '510108000', 'GASTOS MANTENIMIENTO Y REPARACIONES', 4, 'T', 'E', '0'),
(219, '510108001', 'mantto. y reparaciones edificios', 5, 'M', 'E', '0'),
(220, '510108002', 'mantto. y rep. muebles y equipo', 5, 'M', 'E', '0'),
(221, '510108003', 'mantto. y rep. equipo computacion', 5, 'M', 'E', '0'),
(222, '510108004', 'mantto. y repuestos vehiculos', 5, 'M', 'E', '0'),
(223, '510108005', 'Mantto y repuestos de maquinaria y equip', 5, 'M', 'E', '0'),
(224, '510108006', 'mantto. y reparacion instalaciones', 5, 'M', 'E', '0'),
(225, '510109000', 'GASTOS LEGALES Y TRAMITES LEGALES', 4, 'T', 'E', '0'),
(226, '510109001', 'gastos notariales', 5, 'M', 'E', '0'),
(227, '510109002', 'tramites legales', 5, 'M', 'E', '0'),
(228, '510109003', 'tramites timbres y formularios', 5, 'M', 'E', '0'),
(229, '510109004', 'pliegos,propuestas y licitaciones', 5, 'M', 'E', '0'),
(230, '510109005', 'Desaduanizacion', 5, 'M', 'E', '0'),
(231, '510110000', 'GASTOS POR IMPUESTOS', 4, 'T', 'E', '0'),
(232, '510110001', 'impuestos y patentes municipales', 5, 'M', 'E', '0'),
(233, '510110002', 'Gastos, multas e intereses en impuestos', 5, 'M', 'E', '0'),
(234, '510110003', 'impto. utilidades de las empresas', 5, 'M', 'E', '0'),
(235, '510110004', 'Impuesto a las transacciones financieras', 5, 'M', 'E', '0'),
(236, '510110005', 'impuesto a las transacciones', 5, 'M', 'E', '0'),
(237, '510110006', 'impuestos IVA', 5, 'M', 'E', '0'),
(238, '510110007', 'Rc - iva', 5, 'M', 'E', '0'),
(239, '510111000', 'GASTOS MOVILIZACION Y TRANSPORTE', 4, 'T', 'E', '0'),
(240, '510111005', 'movilidad urbana, peajes y parqueos', 5, 'M', 'E', '0'),
(241, '510111010', 'gastos pasajes y viaticos', 5, 'M', 'E', '0'),
(242, '510111020', 'fletes y transporte', 5, 'M', 'E', '0'),
(243, '510113000', 'GASTOS GENERALES', 4, 'T', 'E', '0'),
(244, '510113001', 'gastos por refrigerio', 5, 'M', 'E', '0'),
(245, '510113002', 'fotocopias,anillads y encuadernac', 5, 'M', 'E', '0'),
(246, '510113003', 'publicidad y propaganda', 5, 'M', 'E', '0'),
(247, '510113004', 'Revelado e impresiones', 5, 'M', 'E', '0'),
(248, '510113005', 'periodicos,revistas y libros', 5, 'M', 'E', '0'),
(249, '510113006', 'cuota copropietario gastos comunes', 5, 'M', 'E', '0'),
(250, '510113007', 'publicaciones y suscripciones', 5, 'M', 'E', '0'),
(251, '510113008', 'gastos circulares y avisos', 5, 'M', 'E', '0'),
(252, '510113009', 'alquiler inmuebles y otros', 5, 'M', 'E', '0'),
(253, '510113010', 'Supervision y seguimiento', 5, 'M', 'E', '0'),
(254, '510113011', 'Comision por compras', 5, 'M', 'E', '0'),
(255, '510113012', 'laboratorio', 5, 'M', 'E', '0'),
(256, '510113013', 'Obsequios y Donaciones', 5, 'M', 'E', '0'),
(257, '510113014', 'Hospedaje y otros', 5, 'M', 'E', '0'),
(258, '510113015', 'Material Higienico', 5, 'M', 'E', '0'),
(259, '510113016', 'Alquiler de vehiculos', 5, 'M', 'E', '0'),
(260, '510114000', 'GASTOS DE REPRESENTACION EN VIAJES', 4, 'T', 'E', '0'),
(261, '510114001', 'movilidad y transporte', 5, 'M', 'E', '0'),
(262, '510114002', 'Gastos pasajes y viaticos', 5, 'M', 'E', '0'),
(263, '510114003', 'Hoteles y estadia', 5, 'M', 'E', '0'),
(264, '510114004', 'Alimentacion obreros', 5, 'M', 'E', '0'),
(265, '510115000', 'DEPRECIACIONES Y AMORTIZACIONES', 4, 'T', 'E', '0'),
(266, '510115001', 'depreciacion activo fijo', 5, 'M', 'E', '0'),
(267, '510115002', 'Amortizacion activo diferido', 5, 'M', 'E', '0'),
(268, '510115011', 'Deprec. de Maquinaria y Equipos', 5, 'M', 'E', '0'),
(269, '510115012', 'Deprec. Muebles y Enseres', 5, 'M', 'E', '0'),
(270, '510115013', 'Depr. de herramientas', 5, 'M', 'E', '0'),
(271, '510115014', 'Deprec. Equipos de computacion', 5, 'M', 'E', '0'),
(272, '510115015', 'Depreciacion de vehiculos', 5, 'M', 'E', '0'),
(273, '510200000', 'GASTOS FINANCIEROS', 3, 'T', 'E', '0'),
(274, '510201000', 'GASTOS VARIOS FINANCIEROS', 4, 'T', 'E', '0'),
(275, '510201001', 'intereses varios', 5, 'M', 'E', '0'),
(276, '510201002', 'comisiones bancarias', 5, 'M', 'E', '0'),
(277, '510201003', 'Comisiones por transferencias', 5, 'M', 'E', '0'),
(278, '510201004', 'Impuestos IT', 5, 'M', 'E', '0'),
(279, '520000000', 'GASTOS NO OPERATIVOS', 2, 'T', 'E', '0'),
(280, '520300000', 'GASTOS MONETARIOS', 3, 'T', 'E', '0'),
(281, '520301000', 'Perdida en realizacion de valores', 4, 'M', 'E', '0'),
(282, '520302000', 'Perdida en realizacion de activos', 5, 'M', 'E', '0'),
(283, '520303000', 'multas y recargos', 4, 'M', 'E', '0'),
(284, '520304000', 'Otras perdidas extraordinarias', 4, 'M', 'E', '0'),
(285, '520400000', 'GASTOS NO DEDUCIBLES', 3, 'T', 'E', '0'),
(286, '520401000', 'multas y accesorios', 4, 'M', 'E', '0'),
(287, '520402000', 'Depreciacion de activos fijos revaloriza', 4, 'M', 'E', '0'),
(288, '520403000', 'Credito fiscal no declarado', 4, 'M', 'E', '0'),
(289, '520500000', 'GASTOS NO MONETARIOS', 3, 'T', 'E', '0'),
(290, '520501000', 'Ajuste por inflacion y tenencia de biene', 4, 'M', 'E', '0'),
(291, '520502000', 'diferencia por redondeo', 4, 'M', 'E', '0'),
(292, '520503000', 'diferencia de cambio', 4, 'M', 'E', '0'),
(293, '530000000', 'COSTOS BENEFICIADORA DE ARROZ', 2, 'T', 'E', '0'),
(294, '530200000', 'MATERIALES', 3, 'T', 'E', '0'),
(295, '530201000', 'COSTOS BENEFICIADORA DE ARROZ', 4, 'T', 'E', '0'),
(296, '530201001', 'Mano de obra', 5, 'M', 'E', '0'),
(297, '530201002', 'Cemento', 5, 'M', 'E', '0'),
(298, '530201003', 'Grava, Arena y Derivados', 5, 'M', 'E', '0'),
(299, '530201004', 'Aditivos, adhesivos, impermeabilizantes', 5, 'M', 'E', '0'),
(300, '530201005', 'Techos', 5, 'M', 'E', '0'),
(301, '530201006', 'Instalacion electrica', 5, 'M', 'E', '0'),
(302, '530201007', 'puertas y accesorios', 5, 'M', 'E', '0'),
(303, '530201008', 'maderas y formas', 5, 'M', 'E', '0'),
(304, '530201009', 'Hormigon', 5, 'M', 'E', '0'),
(305, '530201010', 'vidrio templado', 5, 'M', 'E', '0'),
(306, '530201011', 'Material de construccion', 5, 'M', 'E', '0'),
(307, '530202000', 'FLETES Y ADICIONALES', 4, 'T', 'E', '0'),
(308, '530202001', 'Transporte de materiales', 5, 'M', 'E', '0'),
(309, '530202002', 'Estibaje y carguio manual', 5, 'M', 'E', '0'),
(310, '530202003', 'Servicio de gruas y adicionales', 5, 'M', 'E', '0'),
(311, '530202004', 'Transporte de maquinaria', 5, 'M', 'E', '0'),
(312, '530202005', 'Transporte de Personas', 5, 'M', 'E', '0'),
(313, '530203000', 'GASTOS DE INSTALACION EN OBRA', 4, 'M', 'E', '0'),
(314, '530203001', 'Construccion de vivienda', 5, 'M', 'E', '0'),
(315, '530203002', 'viviendas de carpa de lona', 5, 'M', 'E', '0'),
(316, '530300000', 'GASTOS GENERALES Y ADMINISTRATIVOS', 3, 'T', 'E', '0'),
(317, '530303000', 'HONORARIOS DEL PERSONAL', 4, 'T', 'E', '0'),
(318, '530303001', 'Honorarios direccin de obra', 5, 'M', 'E', '0'),
(319, '530303002', 'asesoramiento especializado', 5, 'M', 'E', '0'),
(320, '530303005', 'serenaje', 5, 'M', 'E', '0'),
(321, '530303006', 'Compras no reconocidas para credito fisc', 5, 'M', 'E', '0'),
(329, '120106003', 'Prueba', 5, 'M', 'A', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rendicua`
--

CREATE TABLE `rendicua` (
  `idrendicua` int(11) NOT NULL COMMENT 'id de la rendición de cuentas',
  `idca` int(11) NOT NULL COMMENT 'id del comprobante origen del desembolso',
  `fecha` date NOT NULL COMMENT 'fecha del informe',
  `importe` double NOT NULL COMMENT 'importe total del pago del informe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rendicue`
--

CREATE TABLE `rendicue` (
  `idrendicue` int(11) NOT NULL COMMENT 'id de la rendición de cuentas del cuerpo',
  `idrendicua` int(11) NOT NULL COMMENT 'id de la rendicion de cuentas cabecera',
  `fecha` date NOT NULL COMMENT 'fecha del pago de la factura o recibo',
  `idcuenta` int(11) NOT NULL COMMENT 'cuenta contable aplicable',
  `detalle` varchar(100) NOT NULL COMMENT 'detalle del pago realizado',
  `documento` int(11) NOT NULL COMMENT 'numero del documento de pago',
  `idrendidoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rendidoc`
--

CREATE TABLE `rendidoc` (
  `idrendidoc` int(11) NOT NULL,
  `tipodoc` varchar(45) NOT NULL,
  `descri` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `idservices` int(11) NOT NULL COMMENT 'llave de los servicios del SIN',
  `codesin` int(11) NOT NULL COMMENT 'Código de actividades económicas del SIN',
  `description` varchar(250) NOT NULL COMMENT 'nombre de la actividad economica clasificada por el SIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sinacc`
--

CREATE TABLE `sinacc` (
  `idsinacc` int(11) NOT NULL COMMENT 'id de la cuenta',
  `codigo` varchar(6) NOT NULL COMMENT 'codigo generico de la cuenta contable del SIN',
  `nombrecod` varchar(100) NOT NULL COMMENT 'nombre de la cuenta porporcionada por el SIN',
  `nivel` int(1) NOT NULL COMMENT 'nivel de agrupación de la cuenta que va desde 1 a 4, los ultimos 3 dígitos son de movimiento, es decir:\ndigitos 1,2,y3, título, dígitos 4,5 y 6 es el nivel 4 y es de movimiento\n',
  `actividad` varchar(1) NOT NULL COMMENT 'actividad de la cuenta, es decir, si es de agrupación o de movimiento, y se representa como T la arupacion y M de movimiento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sinacc`
--

INSERT INTO `sinacc` (`idsinacc`, `codigo`, `nombrecod`, `nivel`, `actividad`) VALUES
(1, '100000', 'ACTIVOS', 1, 't'),
(2, '110000', 'ACTIVOS CORRIENTES', 2, 't'),
(3, '111000', 'EFECTIVO Y EQUIVALENTES  DE EFECTIVO', 3, 't'),
(4, '111001', 'caja', 4, 'm'),
(5, '111002', 'fondo fijo', 4, 'm'),
(6, '111003', 'bancos', 4, 'm'),
(7, '111004', 'inversiones  temporales', 4, 'm'),
(8, '111100', 'FLUJO DE EFECTIVO EN ACTIVIDADES DE OPERACION', 3, 't'),
(9, '111101', 'utilidad o perdida de la gestion antes del impuesto', 4, 'm'),
(10, '111102', 'impuesto sobre las utilidades', 4, 'm'),
(11, '111103', 'depreciacion del activo fijo', 4, 'm'),
(12, '111104', 'amortizacion del activo intangible', 4, 'm'),
(13, '111105', 'prevision para beneficios sociales', 4, 'm'),
(14, '111106', 'bajas de bienes de uso activos fijos', 4, 'm'),
(15, '111107', 'provision para cuentas incobrables', 4, 'm'),
(16, '111108', 'provision para obsolescencias', 4, 'm'),
(17, '111109', 'otros', 4, 'm'),
(18, '111110', 'ajuste por inflacion y tenencia de bienes', 4, 'm'),
(19, '111111', 'disminucion aumento en cuentas por cobrar comerciales', 4, 'm'),
(20, '111112', 'disminucion aumento en impuestos por recuperar', 4, 'm'),
(21, '111113', 'disminucion aumento en pagos anticipados', 4, 'm'),
(22, '111114', 'disminucion aumento en inventarios', 4, 'm'),
(23, '111115', 'disminucion aumento cuentas por pagar comerciales', 4, 'm'),
(24, '111116', 'disminucion aumento en obligaciones sociales y fiscales', 4, 'm'),
(25, '111117', 'disminucion aumento en provisiones', 4, 'm'),
(26, '111118', 'disminucion aumento en ingresos diferidos', 4, 'm'),
(27, '111200', 'FLUJO DE EFECTIVO EN ACTIVIDADES DE INVERSION', 3, 't'),
(28, '111201', 'adquisiciones de propiedad planta y equipo activos fijos', 4, 'm'),
(29, '111202', 'adquisicion de activos intangibles', 4, 'm'),
(30, '111203', 'venta de propiedad planta y equipo activos fijos', 4, 'm'),
(31, '111204', 'venta de propiedades de inversion', 4, 'm'),
(32, '111205', 'otras adquisiciones', 4, 'm'),
(33, '111206', 'otras ventas', 4, 'm'),
(34, '111300', 'FLUJO DE EFECTIVO EN ACTIVIDADES DE FINANCIAMIENTO', 3, 't'),
(35, '111301', 'prestamos recibidos', 4, 'm'),
(36, '111302', 'pago de otros pasivos financieros', 4, 'm'),
(37, '111303', 'emision de nuevas acciones', 4, 'm'),
(38, '111304', 'pago de dividendos distribucion de utilidades', 4, 'm'),
(39, '111305', 'emision de bonos', 4, 'm'),
(40, '111307', 'otros pagos', 4, 'm'),
(41, '111400', 'AUMENTO DISMINUCION NETA DE EFECTIVO Y EQUIVALENTES DE EFECTIVO', 3, 't'),
(42, '111500', 'EFECTIVO Y EQUIVALENTES DE EFECTIVO AL INICIO DEL EJERCICIO', 3, 't'),
(43, '111600', 'EFECTIVO Y EQUIVALENTES DE EFECTIVO AL FINAL DEL EJERCICIO', 3, 't'),
(44, '112000', 'CUENTAS POR COBRAR', 3, 't'),
(45, '112001', 'cuentas por cobrar comerciales', 4, 'm'),
(46, '112002', 'otras cuentas por cobrar', 4, 'm'),
(47, '112003', 'cuentas por cobrar a empresas relacionadas', 4, 'm'),
(48, '112004', 'anticipo a proveedores', 4, 'm'),
(49, '112005', 'provision para cuentas incobrables', 4, 'm'),
(50, '113000', 'INVENTARIOS', 3, 't'),
(51, '113001', 'inventarios  de productos terminados', 3, 'm'),
(52, '113002', 'inventarios  de productos en proceso', 3, 'm'),
(53, '113003', 'inventarios  de materia prima', 3, 'm'),
(54, '113004', 'inventario en transito', 3, 'm'),
(55, '113005', 'provision para obsolescencias', 3, 'm'),
(56, '113510', 'totales inventario  productos  disponibles  para la venta', 3, 'm'),
(57, '113520', 'totales inventario  materia prima', 3, 'm'),
(58, '113530', 'totales inventario  productos  en proceso', 3, 'm'),
(59, '113540', 'totales inventario  productos  terminados', 3, 'm'),
(60, '114000', 'OTROS ACTIVOS CORRIENTES', 3, 't'),
(61, '114001', 'credito fiscal iva', 4, 'm'),
(62, '114002', 'impuestos por recuperar', 4, 'm'),
(63, '114003', 'pagos anticipados', 4, 'm'),
(64, '114004', 'otros activos', 4, 'm'),
(65, '120000', 'ACTIVOS NO CORRIENTES', 2, 't'),
(66, '121000', 'CUENTAS POR COBRAR A LARGO PLAZO', 3, 't'),
(67, '121001', 'cuentas comerciales  por cobrar a largo plazo', 4, 'm'),
(68, '121002', 'otras cuentas por cobrar', 4, 'm'),
(69, '121003', 'cuentas por cobrar a empresas relacionadas', 4, 'm'),
(70, '121500', 'TOTALES INVENTARIO  PROPIEDAD  PLANTA Y EQUIPO Y O ACTIVOS FIJOS', 3, 't'),
(71, '122000', 'INVENTARIOS  NO CORRIENTES', 3, 't'),
(72, '122001', 'inventarios  de repuestos', 4, 'm'),
(73, '122002', 'otros inventarios', 4, 'm'),
(74, '123000', 'PROPIEDAD PLANTA Y EQUIPO ACTIVO FIJO', 3, 't'),
(75, '123001', 'terrenos', 4, 'm'),
(76, '123002', 'edificios', 4, 'm'),
(77, '123003', 'depreciacion  acumulada edificio', 4, 'm'),
(78, '123004', 'maquinarias', 4, 'm'),
(79, '123005', 'depreciacion  acumulada maquinarias', 4, 'm'),
(80, '123006', 'vehiculos', 4, 'm'),
(81, '123007', 'depreciacion  acumulada vehiculos', 4, 'm'),
(82, '123008', 'muebles y enseres', 4, 'm'),
(83, '123009', 'depreciacion  acumulada muebles y enseres', 4, 'm'),
(84, '123010', 'equipos de computacion', 4, 'm'),
(85, '123011', 'depreciacion  acumulada equipos de computacion', 4, 'm'),
(86, '123510', 'totales inventario  productos  disponibles  para la venta', 4, 'm'),
(87, '124000', 'PROPIEDADES  DE INVERSION', 3, 't'),
(88, '125000', 'ACTIVOS INTANGIBLES', 3, 't'),
(89, '125001', 'patentes y marcas', 4, 'm'),
(90, '125002', 'amortizacion  acumulada patentes y marcas', 4, 'm'),
(91, '125003', 'derechos de llave', 4, 'm'),
(92, '125004', 'amortizacion  acumulada derecho de llave', 4, 'm'),
(93, '126000', 'INVERSIONES  PERMANENTES', 3, 't'),
(94, '127000', 'OTROS ACTIVOS NO CORRIENTES', 3, 't'),
(95, '200000', 'PASIVOS', 1, 't'),
(96, '210000', 'PASIVOS CORRIENTES', 2, 't'),
(97, '211000', 'OBLIGACIONES  BANCARIAS Y FINANCIERAS', 3, 't'),
(98, '211001', 'prestamos bancarios', 4, 'm'),
(99, '211002', 'otros pasivos financieros', 4, 'm'),
(100, '211003', 'intereses por pagar', 4, 'm'),
(101, '212000', 'CUENTAS POR PAGAR', 3, 't'),
(102, '212001', 'cuentas por pagar comerciales', 4, 'm'),
(103, '212002', 'documentos  por pagar', 4, 'm'),
(104, '212003', 'cuentas por pagar a empresas relacionadas', 4, 'm'),
(105, '213000', 'OBLIGACIONES  SOCIALES Y FISCALES', 3, 't'),
(106, '213001', 'sueldos por pagar', 4, 'm'),
(107, '213002', 'beneficios sociales por pagar', 4, 'm'),
(108, '213003', 'cargas sociales', 4, 'm'),
(109, '213004', 'debito fiscal  iva', 4, 'm'),
(110, '213005', 'impuesto a las transacciones por pagar', 4, 'm'),
(111, '213006', 'impuestos sobre las utilidades de las empresas por pagar', 4, 'm'),
(112, '213007', 'retenciones  por pagar', 4, 'm'),
(113, '213008', 'otros impuestos por pagar', 4, 'm'),
(114, '214000', 'PROVISIONES', 3, 't'),
(115, '215000', 'INGRESOS DIFERIDOS', 3, 't'),
(116, '216000', 'OTROS PASIVOS CORRIENTES', 3, 't'),
(117, '220000', 'PASIVOS NO CORRIENTES', 2, 't'),
(118, '221000', 'OBLIGACIONES  BANCARIAS Y FINANCIERAS  A LARGO PLAZO', 3, 't'),
(119, '221001', 'prestamos bancarios a largo plazo', 4, 'm'),
(120, '221002', 'otros pasivos financieros  a largo plazo', 4, 'm'),
(121, '222000', 'CUENTAS POR PAGAR A LARGO PLAZO', 3, 't'),
(122, '222001', 'documentos  por pagar a largo plazo', 4, 'm'),
(123, '222002', 'cuentas por pagar a empresas relacionadas  a largo plazo', 4, 'm'),
(124, '223000', 'PREVISION PARA BENEFICIOS SOCIALES INDEMNIZACIONES AL PERSONAL', 3, 't'),
(125, '224000', 'OTROS PASIVOS NO CORRIENTES', 3, 't'),
(126, '300000', 'PATRIMONIO', 1, 't'),
(127, '310000', 'CAPITAL', 2, 't'),
(128, '310001', 'capital social pagado', 4, 'm'),
(129, '310002', 'aportes por capitalizar', 4, 'm'),
(130, '310003', 'ajuste de capital', 4, 'm'),
(131, '311000', ' CUENTAS DE CAPITAL', 3, 't'),
(132, '311001', ' capital social', 4, 'm'),
(133, '311002', ' aportes por capitalizar', 4, 'm'),
(134, '311003', ' ajuste de capital', 4, 'm'),
(135, '312000', ' AJUSTE DE CAPITAL', 3, 't'),
(136, '312001', ' ajuste de capital', 4, 'm'),
(137, '320000', 'RESERVAS', 2, 't'),
(138, '321000', ' CUENTAS RESERVAS', 3, 't'),
(139, '321001', ' reserva legal', 4, 'm'),
(140, '321002', ' otras reservas', 4, 'm'),
(141, '322000', ' AJUSTE DE RESERVAS PATRIMONIALES', 3, 't'),
(142, '322001', ' ajuste de reservas patrimoniales', 4, 'm'),
(143, '330000', 'RESULTADOS  ACUMULADOS', 2, 't'),
(144, '331000', ' CUENTAS DE RESULTADO', 3, 't'),
(145, '331001', ' resultados acumulados', 4, 'm'),
(146, '331002', ' resultados de la gestion', 4, 'm'),
(147, '332000', ' ACTUALIZACION VALOR CUENTAS DE RESULTADOS', 3, 't'),
(148, '332001', ' resultados acumulados', 4, 'm'),
(149, '400000', 'PERDIDA DEL EJERCICIO', 1, 't'),
(150, '410000', ' INGRESOS NETOS', 2, 't'),
(151, '410001', ' ventas', 4, 'm'),
(152, '410002', ' devoluciones rebajas y descuetos de bienes y o servicios', 4, 'm'),
(153, '420000', ' INGRESOS FINANCIEROS', 2, 't'),
(154, '420001', ' intereses sobre depositos bancarios', 4, 'm'),
(155, '420002', ' intereses de inversiones temporales ', 4, 'm'),
(156, '420003', ' otros ingresos financieros', 4, 'm'),
(157, '430000', ' OTROS INGRESOS', 2, 't'),
(158, '430001', ' ajuste por inflacion y tenencia de bienes', 4, 'm'),
(159, '430002', ' ingresos por venta de valores', 4, 'm'),
(160, '430003', ' otros ingresos 111306 otras emisiones', 4, 'm'),
(161, '500000', ' UTILIDAD DEL EJERCICIO', 1, 't'),
(162, '510000', ' COSTO DE VENTAS', 2, 't'),
(163, '510001', ' costo de productos', 4, 'm'),
(164, '510002', ' fletes y transportes de productos', 4, 'm'),
(165, '510003', ' devolucion en compras', 4, 'm'),
(166, '510004', ' descuentos sobre compras', 4, 'm'),
(167, '510005', ' costo de productos danados', 4, 'm'),
(168, '520000', ' GASTOS DE COMERCIALIZACION', 2, 't'),
(169, '520001', ' sueldos y salarios', 4, 'm'),
(170, '520002', ' beneficios sociales', 4, 'm'),
(171, '520003', ' comisiones sobre ventas', 4, 'm'),
(172, '520004', ' viaticos', 4, 'm'),
(173, '520005', ' pasajes', 4, 'm'),
(174, '520006', ' publicidad', 4, 'm'),
(175, '520007', ' depreciacion de bienes de uso ', 4, 'm'),
(176, '520008', ' perdida en cuentas incobrables ', 4, 'm'),
(177, '520009', ' otros gastos de comercializacion', 4, 'm'),
(178, '530000', ' GASTOS GENERALES DE ADMINISTRACION', 2, 't'),
(179, '530001', ' sueldos y salarios', 4, 'm'),
(180, '530002', ' beneficios sociales', 4, 'm'),
(181, '530003', ' provision aguinaldos', 4, 'm'),
(182, '530004', ' prevision indemnizaciones', 4, 'm'),
(183, '530005', ' viaticos', 4, 'm'),
(184, '530006', ' pasajes', 4, 'm'),
(185, '530007', ' servicios basicos', 4, 'm'),
(186, '530008', ' materiales y suministros', 4, 'm'),
(187, '530009', ' fletes y transporte', 4, 'm'),
(188, '530010', ' mantenimiento y reparacion', 4, 'm'),
(189, '530011', ' depreciacion de bienes de uso', 4, 'm'),
(190, '530012', ' alquileres', 4, 'm'),
(191, '530013', ' seguros', 4, 'm'),
(192, '530014', ' servicio de seguridad ', 4, 'm'),
(193, '530015', ' gastos generales ', 4, 'm'),
(194, '530016', ' otros gastos de administracion ', 4, 'm'),
(195, '540000', ' GASTOS FINANCIEROS ', 2, 't'),
(196, '540001', ' intereses sobre prestamos bancarios ', 4, 'm'),
(197, '540002', ' intereses sobre otras obligaciones financieras', 4, 'm'),
(198, '540003', ' otros intereses', 4, 'm'),
(199, '540004', ' comisiones bancarias', 4, 'm'),
(200, '540005', ' otros gastos financieros', 4, 'm'),
(201, '550000', ' OTROS GASTOS DE OPERACION', 2, 't'),
(202, '560000', ' OTROS GASTOS NO OPERATIVOS', 2, 't'),
(203, '560001', ' ajuste por inflacion y tenencia de bienes ', 4, 'm'),
(204, '560002', ' diferencia de cambio ', 4, 'm'),
(205, '560003', ' otros gastos', 4, 'm'),
(206, '570000', ' IMPUESTO SOBRE LAS UTILIDADES DE LAS EMPRESAS', 2, 't'),
(207, '581000', 'UTILIDAD PREDIDA BRUTA', 3, 't'),
(208, '582000', 'UTILIDAD PERDIDA OPERATIVA', 3, 't'),
(209, '583000', 'UTILIDAD PERDIDA ANTES DE IMPUESTOS', 3, 't'),
(210, '584000', 'UTILIDAD PERDIDA DEL EJERCICIO', 3, 't');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `idsocios` int(11) NOT NULL COMMENT 'clave principal de ID de la tabla',
  `sci` varchar(10) NOT NULL COMMENT 'numero de CI',
  `sciexp` varchar(12) DEFAULT NULL COMMENT 'lugar de expedición del CI',
  `sapellido1` varchar(45) NOT NULL COMMENT 'primer apellido segun CI',
  `sapellido2` varchar(45) DEFAULT NULL COMMENT 'segundo apellido segun CI',
  `snombre` varchar(60) NOT NULL COMMENT 'nombres del socio segun CI',
  `sexo` varchar(1) NOT NULL COMMENT 'sexo Varon Mujer',
  `sfena` date DEFAULT NULL COMMENT 'fecha de nacimiento',
  `snit` varchar(12) DEFAULT NULL COMMENT 'nit del socio',
  `sdireccion` varchar(100) DEFAULT NULL COMMENT 'direccion de domicilio del socio',
  `stelefonos` varchar(45) DEFAULT NULL COMMENT 'numero de telefonos del socio',
  `sfealta` date DEFAULT NULL COMMENT 'fecha de alta en la cooperativa',
  `iduser` int(11) DEFAULT NULL COMMENT 'id de usuario para acceder al sistema',
  `snota` mediumtext COMMENT 'notas adicionales',
  `svar1` varchar(45) DEFAULT NULL COMMENT 'variable auxiliar de texto',
  `svar2` double DEFAULT NULL COMMENT 'variable auxiliar numerico',
  `cosustancia` varchar(20) DEFAULT NULL COMMENT 'codigo de sustancias controladas',
  `idcaraso` int(11) NOT NULL,
  `febaja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`idsocios`, `sci`, `sciexp`, `sapellido1`, `sapellido2`, `snombre`, `sexo`, `sfena`, `snit`, `sdireccion`, `stelefonos`, `sfealta`, `iduser`, `snota`, `svar1`, `svar2`, `cosustancia`, `idcaraso`, `febaja`) VALUES
(2, '12345678', 'La Paz', 'Root', '', 'Admin', 'V', '2018-12-27', '', '', '', '2018-12-27', NULL, '', NULL, NULL, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL COMMENT 'ID de la tabla usuario',
  `idsocios` int(11) NOT NULL COMMENT 'id de cliente del sistema',
  `usnombre` varchar(45) NOT NULL COMMENT 'nombre del usuario',
  `uspass` varchar(80) NOT NULL COMMENT 'contraseña del usuario',
  `ustipo` int(11) NOT NULL COMMENT 'tipo de usario, será definido por roles de cada usuario para acceder a determinados servicios del sistema'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`iduser`, `idsocios`, `usnombre`, `uspass`, `ustipo`) VALUES
(5, 2, 'admin', '0192023a7bbd73250516f069df18b500', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ustipo`
--

CREATE TABLE `ustipo` (
  `idustipo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `menus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ustipo`
--

INSERT INTO `ustipo` (`idustipo`, `descripcion`, `menus`) VALUES
(1, 'Administrador', 'Todo'),
(2, 'Caja', 'caja'),
(5, 'Financiero', 'financiero');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `a0000`
--
ALTER TABLE `a0000`
  ADD PRIMARY KEY (`idcuenta`);

--
-- Indices de la tabla `ca0000`
--
ALTER TABLE `ca0000`
  ADD PRIMARY KEY (`idca`);

--
-- Indices de la tabla `caraso`
--
ALTER TABLE `caraso`
  ADD PRIMARY KEY (`idcaraso`);

--
-- Indices de la tabla `ccosto`
--
ALTER TABLE `ccosto`
  ADD PRIMARY KEY (`idccosto`);

--
-- Indices de la tabla `clasacc`
--
ALTER TABLE `clasacc`
  ADD PRIMARY KEY (`idclas`);

--
-- Indices de la tabla `cu0000`
--
ALTER TABLE `cu0000`
  ADD PRIMARY KEY (`idcu`);

--
-- Indices de la tabla `cuentasi`
--
ALTER TABLE `cuentasi`
  ADD PRIMARY KEY (`idcuentasi`),
  ADD KEY `ccosto_idx` (`idccosto`);

--
-- Indices de la tabla `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`idcustom`),
  ADD KEY `fk_custom_services_idx` (`idservices`);

--
-- Indices de la tabla `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`),
  ADD KEY `in_nit` (`nit_in`);

--
-- Indices de la tabla `mes0000`
--
ALTER TABLE `mes0000`
  ADD PRIMARY KEY (`idmes`);

--
-- Indices de la tabla `nitpublic`
--
ALTER TABLE `nitpublic`
  ADD PRIMARY KEY (`idnitpublic`),
  ADD KEY `fk_nitpublic_services_idx` (`idservices`),
  ADD KEY `in_nitpublic_nit` (`nitpublicnit`);

--
-- Indices de la tabla `nitpublicd`
--
ALTER TABLE `nitpublicd`
  ADD PRIMARY KEY (`idnitpublicd`);

--
-- Indices de la tabla `officeadd`
--
ALTER TABLE `officeadd`
  ADD PRIMARY KEY (`idofficeadd`),
  ADD KEY `idcustom_idx` (`idcustom`),
  ADD KEY `fk_officeadd_services_idx` (`idservices`);

--
-- Indices de la tabla `pagoca`
--
ALTER TABLE `pagoca`
  ADD PRIMARY KEY (`idpagoca`);

--
-- Indices de la tabla `pagocu`
--
ALTER TABLE `pagocu`
  ADD PRIMARY KEY (`idpagocu`);

--
-- Indices de la tabla `publicacc`
--
ALTER TABLE `publicacc`
  ADD PRIMARY KEY (`idpublicacc`);

--
-- Indices de la tabla `rendicua`
--
ALTER TABLE `rendicua`
  ADD PRIMARY KEY (`idrendicua`);

--
-- Indices de la tabla `rendicue`
--
ALTER TABLE `rendicue`
  ADD PRIMARY KEY (`idrendicue`),
  ADD KEY `fk_rendicua_idx` (`idrendicua`),
  ADD KEY `fk_rendidoc_idx` (`idrendidoc`),
  ADD KEY `fk_publicacc_idx` (`idcuenta`);

--
-- Indices de la tabla `rendidoc`
--
ALTER TABLE `rendidoc`
  ADD PRIMARY KEY (`idrendidoc`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`idservices`);

--
-- Indices de la tabla `sinacc`
--
ALTER TABLE `sinacc`
  ADD PRIMARY KEY (`idsinacc`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`idsocios`),
  ADD KEY `fk_caraso_idx` (`idcaraso`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD KEY `fk_ustipo_idx` (`ustipo`),
  ADD KEY `fk_usnombre_idx` (`idsocios`);

--
-- Indices de la tabla `ustipo`
--
ALTER TABLE `ustipo`
  ADD PRIMARY KEY (`idustipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `a0000`
--
ALTER TABLE `a0000`
  MODIFY `idcuenta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'indice de la tabla de cuentas contables del cliente A0000';

--
-- AUTO_INCREMENT de la tabla `ca0000`
--
ALTER TABLE `ca0000`
  MODIFY `idca` int(11) NOT NULL AUTO_INCREMENT COMMENT 'indice de documento contable cabecera', AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de la tabla `caraso`
--
ALTER TABLE `caraso`
  MODIFY `idcaraso` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de la característica del socio', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ccosto`
--
ALTER TABLE `ccosto`
  MODIFY `idccosto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cu0000`
--
ALTER TABLE `cu0000`
  MODIFY `idcu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'índice del cuerpo del comprobante', AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT de la tabla `cuentasi`
--
ALTER TABLE `cuentasi`
  MODIFY `idcuentasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `custom`
--
ALTER TABLE `custom`
  MODIFY `idcustom` int(11) NOT NULL AUTO_INCREMENT COMMENT 'llave primaria de identificacion de los clientes';

--
-- AUTO_INCREMENT de la tabla `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de las facturas de compras';

--
-- AUTO_INCREMENT de la tabla `nitpublic`
--
ALTER TABLE `nitpublic`
  MODIFY `idnitpublic` int(11) NOT NULL AUTO_INCREMENT COMMENT 'indice de nits grabados';

--
-- AUTO_INCREMENT de la tabla `nitpublicd`
--
ALTER TABLE `nitpublicd`
  MODIFY `idnitpublicd` int(11) NOT NULL AUTO_INCREMENT COMMENT 'indice de los nits publicos';

--
-- AUTO_INCREMENT de la tabla `officeadd`
--
ALTER TABLE `officeadd`
  MODIFY `idofficeadd` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de la sucursal o central';

--
-- AUTO_INCREMENT de la tabla `pagoca`
--
ALTER TABLE `pagoca`
  MODIFY `idpagoca` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id comprobante de pago cabecera';

--
-- AUTO_INCREMENT de la tabla `pagocu`
--
ALTER TABLE `pagocu`
  MODIFY `idpagocu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicacc`
--
ALTER TABLE `publicacc`
  MODIFY `idpublicacc` int(11) NOT NULL AUTO_INCREMENT COMMENT 'indice de cuenta contable generico', AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT de la tabla `rendicua`
--
ALTER TABLE `rendicua`
  MODIFY `idrendicua` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de la rendición de cuentas';

--
-- AUTO_INCREMENT de la tabla `rendicue`
--
ALTER TABLE `rendicue`
  MODIFY `idrendicue` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de la rendición de cuentas del cuerpo';

--
-- AUTO_INCREMENT de la tabla `rendidoc`
--
ALTER TABLE `rendidoc`
  MODIFY `idrendidoc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `idservices` int(11) NOT NULL AUTO_INCREMENT COMMENT 'llave de los servicios del SIN';

--
-- AUTO_INCREMENT de la tabla `sinacc`
--
ALTER TABLE `sinacc`
  MODIFY `idsinacc` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de la cuenta', AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `idsocios` int(11) NOT NULL AUTO_INCREMENT COMMENT 'clave principal de ID de la tabla', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID de la tabla usuario', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ustipo`
--
ALTER TABLE `ustipo`
  MODIFY `idustipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuentasi`
--
ALTER TABLE `cuentasi`
  ADD CONSTRAINT `ccosto` FOREIGN KEY (`idccosto`) REFERENCES `ccosto` (`idccosto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `custom`
--
ALTER TABLE `custom`
  ADD CONSTRAINT `fk_custom_services` FOREIGN KEY (`idservices`) REFERENCES `services` (`idservices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nitpublic`
--
ALTER TABLE `nitpublic`
  ADD CONSTRAINT `fk_nitpublic_services` FOREIGN KEY (`idservices`) REFERENCES `services` (`idservices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `officeadd`
--
ALTER TABLE `officeadd`
  ADD CONSTRAINT `fk_officeadd_custom` FOREIGN KEY (`idcustom`) REFERENCES `custom` (`idcustom`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_officeadd_services` FOREIGN KEY (`idservices`) REFERENCES `services` (`idservices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rendicue`
--
ALTER TABLE `rendicue`
  ADD CONSTRAINT `fk_publicacc` FOREIGN KEY (`idcuenta`) REFERENCES `publicacc` (`idpublicacc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rendicua` FOREIGN KEY (`idrendicua`) REFERENCES `rendicua` (`idrendicua`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rendidoc` FOREIGN KEY (`idrendidoc`) REFERENCES `rendidoc` (`idrendidoc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `socios`
--
ALTER TABLE `socios`
  ADD CONSTRAINT `fk_caraso` FOREIGN KEY (`idcaraso`) REFERENCES `caraso` (`idcaraso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_usnombre` FOREIGN KEY (`idsocios`) REFERENCES `socios` (`idsocios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ustipo` FOREIGN KEY (`ustipo`) REFERENCES `ustipo` (`idustipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
