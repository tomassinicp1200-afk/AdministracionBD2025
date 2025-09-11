-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql211.byetcluster.com
-- Tiempo de generación: 11-09-2025 a las 12:27:46
-- Versión del servidor: 11.4.7-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_39865557_Semana03`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LicenciaFuncionamiento`
--

CREATE TABLE `LicenciaFuncionamiento` (
  `nroLicencia` char(6) NOT NULL,
  `fechaEmisión` datetime NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `nroDecretoAlcaldia` char(6) NOT NULL,
  `actividad` varchar(30) NOT NULL,
  `representanteLegal` varchar(30) NOT NULL,
  `nroNegocio` char(18) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Negocio`
--

CREATE TABLE `Negocio` (
  `nroNegocio` char(18) NOT NULL,
  `razonSocial` char(18) DEFAULT NULL,
  `direccion` char(18) DEFAULT NULL,
  `fechaRegistro` char(18) DEFAULT NULL,
  `capacidad` char(18) DEFAULT NULL,
  `tipoAcceso` char(18) DEFAULT NULL,
  `nroLote` char(18) DEFAULT NULL,
  `codTipoNeg` char(18) DEFAULT NULL,
  `codPlano` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `NegocioxPropietario`
--

CREATE TABLE `NegocioxPropietario` (
  `codPropietario` char(6) NOT NULL,
  `nombreProp` varchar(30) NOT NULL,
  `apellidosProp` varchar(30) NOT NULL,
  `razonSocial` varchar(30) DEFAULT NULL,
  `nroNegocio` char(18) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagoImpuestos`
--

CREATE TABLE `PagoImpuestos` (
  `nroPago` char(6) NOT NULL,
  `fechaPago` datetime NOT NULL,
  `concepto` varchar(30) NOT NULL,
  `montoPago` decimal(19,4) DEFAULT NULL,
  `periodoPredial` varchar(30) NOT NULL,
  `multa` decimal(19,4) DEFAULT NULL,
  `descuento` decimal(19,4) DEFAULT NULL,
  `totalPago` char(18) NOT NULL,
  `codPropietario` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PlanoCiudad`
--

CREATE TABLE `PlanoCiudad` (
  `codPlano` char(6) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `zonificacion` varchar(30) NOT NULL,
  `longitud` int(11) NOT NULL,
  `nroCuadras` int(11) NOT NULL,
  `codTipoPlano` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Predios`
--

CREATE TABLE `Predios` (
  `nroPredio` char(18) NOT NULL,
  `tipoPredio` varchar(30) NOT NULL,
  `catgorizacion` varchar(30) NOT NULL,
  `pisos` int(11) NOT NULL,
  `fechaConstruccion` datetime NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `extension` char(18) NOT NULL,
  `material` char(18) NOT NULL,
  `nroRegistro` char(6) NOT NULL,
  `numPredio` char(6) NOT NULL,
  `codPlano` char(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrediosxPropietarios`
--

CREATE TABLE `PrediosxPropietarios` (
  `nombreProp` varchar(30) NOT NULL,
  `apellidosProp` varchar(30) NOT NULL,
  `porcTitularidad` int(11) NOT NULL,
  `nroPredio` char(18) NOT NULL,
  `codPropietario` char(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Propietarios`
--

CREATE TABLE `Propietarios` (
  `codPropietario` char(6) NOT NULL,
  `nombreProp` varchar(30) NOT NULL,
  `apellidosProp` varchar(30) NOT NULL,
  `dniProp` char(8) NOT NULL,
  `telefonoRef` varchar(12) NOT NULL,
  `rucProp` char(11) NOT NULL,
  `edadProp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RegistroMorosos`
--

CREATE TABLE `RegistroMorosos` (
  `nroRegMorosos` char(6) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `motivoMorosidad` varchar(30) NOT NULL,
  `montodeuda` decimal(19,4) NOT NULL,
  `Situacion` char(18) NOT NULL,
  `periodoAdecuado` char(18) NOT NULL,
  `codPropietario` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipoNegocio`
--

CREATE TABLE `TipoNegocio` (
  `codTipoNeg` char(18) NOT NULL,
  `denominacion` char(6) DEFAULT NULL,
  `rubroGeneral` varchar(30) DEFAULT NULL,
  `porcImpuesto` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipoPlanos`
--

CREATE TABLE `TipoPlanos` (
  `codTipoPlano` char(6) NOT NULL,
  `denominacionPlano` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `LicenciaFuncionamiento`
--
ALTER TABLE `LicenciaFuncionamiento`
  ADD PRIMARY KEY (`nroLicencia`),
  ADD KEY `R_23` (`nroNegocio`);

--
-- Indices de la tabla `Negocio`
--
ALTER TABLE `Negocio`
  ADD PRIMARY KEY (`nroNegocio`),
  ADD KEY `R_22` (`codTipoNeg`),
  ADD KEY `R_26` (`codPlano`);

--
-- Indices de la tabla `NegocioxPropietario`
--
ALTER TABLE `NegocioxPropietario`
  ADD PRIMARY KEY (`codPropietario`,`nroNegocio`),
  ADD KEY `R_19` (`nroNegocio`);

--
-- Indices de la tabla `PagoImpuestos`
--
ALTER TABLE `PagoImpuestos`
  ADD PRIMARY KEY (`nroPago`),
  ADD KEY `R_16` (`codPropietario`);

--
-- Indices de la tabla `PlanoCiudad`
--
ALTER TABLE `PlanoCiudad`
  ADD PRIMARY KEY (`codPlano`),
  ADD KEY `R_24` (`codTipoPlano`);

--
-- Indices de la tabla `Predios`
--
ALTER TABLE `Predios`
  ADD PRIMARY KEY (`nroPredio`),
  ADD KEY `R_29` (`codPlano`);

--
-- Indices de la tabla `PrediosxPropietarios`
--
ALTER TABLE `PrediosxPropietarios`
  ADD PRIMARY KEY (`nroPredio`,`codPropietario`),
  ADD KEY `R_13` (`codPropietario`);

--
-- Indices de la tabla `Propietarios`
--
ALTER TABLE `Propietarios`
  ADD PRIMARY KEY (`codPropietario`);

--
-- Indices de la tabla `RegistroMorosos`
--
ALTER TABLE `RegistroMorosos`
  ADD PRIMARY KEY (`nroRegMorosos`),
  ADD KEY `R_14` (`codPropietario`);

--
-- Indices de la tabla `TipoNegocio`
--
ALTER TABLE `TipoNegocio`
  ADD PRIMARY KEY (`codTipoNeg`);

--
-- Indices de la tabla `TipoPlanos`
--
ALTER TABLE `TipoPlanos`
  ADD PRIMARY KEY (`codTipoPlano`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
