-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2022 a las 06:32:47
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `minimarket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nom_cate` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nom_cate`, `descripcion`) VALUES
(1, 'Carnicos', 'productos carnicos'),
(2, 'Lacteos', 'productos lacteos'),
(3, 'Abarrotes', 'productos abarrotes'),
(4, 'Aseo', 'productos de aseo'),
(5, 'Bebidas', 'productos bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nom_ciudad` varchar(45) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_producto`
--

CREATE TABLE `compra_producto` (
  `id_compra` int(11) NOT NULL,
  `date_compra` datetime NOT NULL,
  `cantidad` int(11) NOT NULL,
  `prec_buy` int(11) NOT NULL,
  `prec_sell` int(11) NOT NULL,
  `total_comprap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE `correo` (
  `id_correo` int(11) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `id_usuarioc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nom_departamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle_fac` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `v_uni_product` float NOT NULL,
  `totalx_producto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id_direccion` int(11) NOT NULL,
  `num_casa` varchar(100) NOT NULL,
  `id_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `cod_tdocument` int(11) NOT NULL,
  `nom_document` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nom_estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `date_fact` date NOT NULL,
  `subt_fact` int(11) NOT NULL,
  `descuento` float NOT NULL,
  `impuesto` float NOT NULL,
  `total_fac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_pago`
--

CREATE TABLE `form_pago` (
  `idform_pago` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_pago_has_factura`
--

CREATE TABLE `form_pago_has_factura` (
  `form_pago_idform_pago` int(11) NOT NULL,
  `factura_id_factura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `existencias` int(11) NOT NULL,
  `costo` int(11) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `stock_maximo` int(11) NOT NULL,
  `cant_entradas` int(11) NOT NULL,
  `cant_salidas` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`idlogin`, `login`, `pass`) VALUES
(1, 'giussep', '123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nom_marca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_abarrotes`
--

CREATE TABLE `producto_abarrotes` (
  `id_product` int(11) NOT NULL,
  `nom_product` varchar(45) NOT NULL,
  `img_product` varchar(45) DEFAULT NULL,
  `date_elaboration` date NOT NULL,
  `date_vencimiento` date NOT NULL,
  `id_cate` int(11) DEFAULT NULL,
  `id_unid_medida` int(11) DEFAULT NULL,
  `id_estadop` int(11) DEFAULT NULL,
  `id_usuario` int(20) DEFAULT NULL,
  `precio` int(15) NOT NULL,
  `existencias` int(8) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `id_proveedor` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto_abarrotes`
--

INSERT INTO `producto_abarrotes` (`id_product`, `nom_product`, `img_product`, `date_elaboration`, `date_vencimiento`, `id_cate`, `id_unid_medida`, `id_estadop`, `id_usuario`, `precio`, `existencias`, `descripcion`, `id_proveedor`) VALUES
(63, 'Aceite', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 30000, 11, '2 de litros de aceite girasol', NULL),
(68, 'Arroz', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 2000, 47, 'libra de arroz roa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_aseo`
--

CREATE TABLE `producto_aseo` (
  `id_product` int(15) NOT NULL,
  `nom_product` varchar(20) NOT NULL,
  `img_product` varchar(100) DEFAULT NULL,
  `date_ingreso` date DEFAULT NULL,
  `date_vencimiento` date DEFAULT NULL,
  `id_cate` int(15) DEFAULT NULL,
  `id_proveedor` int(15) DEFAULT NULL,
  `id_unid_medida` int(15) DEFAULT NULL,
  `id_estadop` int(15) DEFAULT NULL,
  `id_usuario` int(15) DEFAULT NULL,
  `precio` bigint(16) NOT NULL,
  `existencias` int(6) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_aseo`
--

INSERT INTO `producto_aseo` (`id_product`, `nom_product`, `img_product`, `date_ingreso`, `date_vencimiento`, `id_cate`, `id_proveedor`, `id_unid_medida`, `id_estadop`, `id_usuario`, `precio`, `existencias`, `descripcion`) VALUES
(1, 'Detergente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 12, '2 litros de detergente a1'),
(2, 'Jabon ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2500, 87, 'barra de jabon rey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_bebidas`
--

CREATE TABLE `producto_bebidas` (
  `id_product` int(15) NOT NULL,
  `nom_product` varchar(20) NOT NULL,
  `img_product` varchar(100) DEFAULT NULL,
  `date_ingreso` date DEFAULT NULL,
  `date_vencimiento` date DEFAULT NULL,
  `id_cate` int(15) DEFAULT NULL,
  `id_proveedor` int(15) DEFAULT NULL,
  `id_unid_medida` int(15) DEFAULT NULL,
  `id_estadop` int(15) DEFAULT NULL,
  `id_usuario` int(15) DEFAULT NULL,
  `precio` bigint(16) NOT NULL,
  `existencias` int(6) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_bebidas`
--

INSERT INTO `producto_bebidas` (`id_product`, `nom_product`, `img_product`, `date_ingreso`, `date_vencimiento`, `id_cate`, `id_proveedor`, `id_unid_medida`, `id_estadop`, `id_usuario`, `precio`, `existencias`, `descripcion`) VALUES
(1, 'Cocacola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7000, 15, 'botella de 3l de gaseosa cocacola'),
(2, 'Jugo Hit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 30, 'botella de jugo hit ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_carnicos`
--

CREATE TABLE `producto_carnicos` (
  `id_product` int(15) NOT NULL,
  `nom_product` varchar(20) NOT NULL,
  `img_product` varchar(100) DEFAULT NULL,
  `date_ingreso` date DEFAULT NULL,
  `date_vencimiento` date DEFAULT NULL,
  `id_cate` int(15) DEFAULT NULL,
  `id_proveedor` int(15) DEFAULT NULL,
  `id_unid_medida` int(15) DEFAULT NULL,
  `id_estadop` int(15) DEFAULT NULL,
  `id_usuario` int(15) DEFAULT NULL,
  `precio` bigint(16) NOT NULL,
  `existencias` int(6) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_carnicos`
--

INSERT INTO `producto_carnicos` (`id_product`, `nom_product`, `img_product`, `date_ingreso`, `date_vencimiento`, `id_cate`, `id_proveedor`, `id_unid_medida`, `id_estadop`, `id_usuario`, `precio`, `existencias`, `descripcion`) VALUES
(1, 'Salchicha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4300, 44, 'salchichas de cerdo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_lacteos`
--

CREATE TABLE `producto_lacteos` (
  `id_product` int(15) NOT NULL,
  `nom_product` varchar(20) NOT NULL,
  `img_product` varchar(100) DEFAULT NULL,
  `date_ingreso` date DEFAULT NULL,
  `date_vencimiento` date DEFAULT NULL,
  `id_cate` int(15) DEFAULT NULL,
  `id_proveedor` int(15) DEFAULT NULL,
  `id_unid_medida` int(15) DEFAULT NULL,
  `id_estadop` int(15) DEFAULT NULL,
  `id_usuario` int(15) DEFAULT NULL,
  `precio` bigint(16) NOT NULL,
  `existencias` int(6) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_lacteos`
--

INSERT INTO `producto_lacteos` (`id_product`, `nom_product`, `img_product`, `date_ingreso`, `date_vencimiento`, `id_cate`, `id_proveedor`, `id_unid_medida`, `id_estadop`, `id_usuario`, `precio`, `existencias`, `descripcion`) VALUES
(1, 'Leche ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3100, 19, 'litro de leche alqueria'),
(2, 'Queso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 12, 'libra de queso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_proveedor`
--

CREATE TABLE `producto_proveedor` (
  `id` int(15) NOT NULL,
  `id_product` int(15) DEFAULT NULL,
  `id_proveedor` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nit_proveedor` int(11) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `num_fijo` int(11) DEFAULT NULL,
  `num_cel` int(11) DEFAULT NULL,
  `compra_producto_id_compra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nit_proveedor`, `razon_social`, `direccion`, `correo`, `num_fijo`, `num_cel`, `compra_producto_id_compra`) VALUES
(4, 123456789, 'bimbo', 'carrera3 55 -55 ', 'correo@correo.com', 123456789, 2147483647, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nom_rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nom_rol`) VALUES
(1, 'administrador'),
(2, 'empleado'),
(3, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `num_telefono` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ttelefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotelefono`
--

CREATE TABLE `tipotelefono` (
  `id_ttelefono` int(11) NOT NULL,
  `tipos_tel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id_unidmedida` int(11) NOT NULL,
  `unidad_medida` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `num_document` int(11) NOT NULL,
  `cod_tidocument` int(11) NOT NULL,
  `nombre_1` varchar(45) NOT NULL,
  `nombre_2` varchar(45) DEFAULT NULL,
  `apellido_1` varchar(45) NOT NULL,
  `apellido_2` varchar(45) DEFAULT NULL,
  `id_direccion` int(11) NOT NULL,
  `id_sex` varchar(15) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `contraseña` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_has_factura`
--

CREATE TABLE `usuario_has_factura` (
  `usuario_id_usuario` int(11) NOT NULL,
  `factura_id_factura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_depar_idx` (`id_departamento`);

--
-- Indices de la tabla `compra_producto`
--
ALTER TABLE `compra_producto`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `correo`
--
ALTER TABLE `correo`
  ADD PRIMARY KEY (`id_correo`),
  ADD KEY `id_user_idx` (`id_usuarioc`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD KEY `detalle fac_idx` (`id_detalle_fac`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id_direccion`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`cod_tdocument`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `form_pago`
--
ALTER TABLE `form_pago`
  ADD PRIMARY KEY (`idform_pago`);

--
-- Indices de la tabla `form_pago_has_factura`
--
ALTER TABLE `form_pago_has_factura`
  ADD PRIMARY KEY (`form_pago_idform_pago`,`factura_id_factura`),
  ADD KEY `fk_form_pago_has_factura_factura1_idx` (`factura_id_factura`),
  ADD KEY `fk_form_pago_has_factura_form_pago1_idx` (`form_pago_idform_pago`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD KEY `inventario_id_idx` (`id_inventario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_product` (`id_product`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idlogin`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `producto_abarrotes`
--
ALTER TABLE `producto_abarrotes`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `categoria_idx` (`id_cate`),
  ADD KEY `unid_medida_idx` (`id_unid_medida`),
  ADD KEY `estado_idx` (`id_estadop`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `existencias` (`existencias`),
  ADD KEY `indx-provee` (`id_proveedor`);

--
-- Indices de la tabla `producto_aseo`
--
ALTER TABLE `producto_aseo`
  ADD PRIMARY KEY (`id_product`);

--
-- Indices de la tabla `producto_bebidas`
--
ALTER TABLE `producto_bebidas`
  ADD PRIMARY KEY (`id_product`);

--
-- Indices de la tabla `producto_carnicos`
--
ALTER TABLE `producto_carnicos`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `product_usuario` (`id_usuario`),
  ADD KEY `product-estado` (`id_estadop`),
  ADD KEY `product_medida` (`id_unid_medida`),
  ADD KEY `product-proveedor` (`id_proveedor`);

--
-- Indices de la tabla `producto_lacteos`
--
ALTER TABLE `producto_lacteos`
  ADD PRIMARY KEY (`id_product`);

--
-- Indices de la tabla `producto_proveedor`
--
ALTER TABLE `producto_proveedor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indx_product` (`id_product`),
  ADD KEY `indx_prove` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `fk_proveedor_compra_producto1_idx` (`compra_producto_id_compra`),
  ADD KEY `proveedor_idx` (`id_proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_telefono`),
  ADD KEY `id_user_idx` (`id_user`);

--
-- Indices de la tabla `tipotelefono`
--
ALTER TABLE `tipotelefono`
  ADD PRIMARY KEY (`id_ttelefono`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id_unidmedida`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `direccion_idx` (`id_direccion`),
  ADD KEY `id_rol_idx` (`id_rol`),
  ADD KEY `cod_tdocument_idx` (`cod_tidocument`),
  ADD KEY `estado_idx` (`id_estado`);

--
-- Indices de la tabla `usuario_has_factura`
--
ALTER TABLE `usuario_has_factura`
  ADD PRIMARY KEY (`usuario_id_usuario`,`factura_id_factura`),
  ADD KEY `fk_usuario_has_factura_factura1_idx` (`factura_id_factura`),
  ADD KEY `fk_usuario_has_factura_usuario1_idx` (`usuario_id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compra_producto`
--
ALTER TABLE `compra_producto`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `correo`
--
ALTER TABLE `correo`
  MODIFY `id_correo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id_direccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `form_pago`
--
ALTER TABLE `form_pago`
  MODIFY `idform_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `idlogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto_abarrotes`
--
ALTER TABLE `producto_abarrotes`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `producto_aseo`
--
ALTER TABLE `producto_aseo`
  MODIFY `id_product` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto_bebidas`
--
ALTER TABLE `producto_bebidas`
  MODIFY `id_product` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto_carnicos`
--
ALTER TABLE `producto_carnicos`
  MODIFY `id_product` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `producto_lacteos`
--
ALTER TABLE `producto_lacteos`
  MODIFY `id_product` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto_proveedor`
--
ALTER TABLE `producto_proveedor`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipotelefono`
--
ALTER TABLE `tipotelefono`
  MODIFY `id_ttelefono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id_unidmedida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `id_depar` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`),
  ADD CONSTRAINT `nom_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `direccion` (`id_direccion`);

--
-- Filtros para la tabla `correo`
--
ALTER TABLE `correo`
  ADD CONSTRAINT `id_users` FOREIGN KEY (`id_usuarioc`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle fac` FOREIGN KEY (`id_detalle_fac`) REFERENCES `factura` (`id_factura`);

--
-- Filtros para la tabla `form_pago_has_factura`
--
ALTER TABLE `form_pago_has_factura`
  ADD CONSTRAINT `fk_form_pago_has_factura_factura1` FOREIGN KEY (`factura_id_factura`) REFERENCES `factura` (`id_factura`),
  ADD CONSTRAINT `fk_form_pago_has_factura_form_pago1` FOREIGN KEY (`form_pago_idform_pago`) REFERENCES `form_pago` (`idform_pago`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `producto_abarrotes` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_id` FOREIGN KEY (`id_inventario`) REFERENCES `producto_abarrotes` (`id_product`);

--
-- Filtros para la tabla `producto_abarrotes`
--
ALTER TABLE `producto_abarrotes`
  ADD CONSTRAINT `categoria` FOREIGN KEY (`id_cate`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `estadop` FOREIGN KEY (`id_estadop`) REFERENCES `estado` (`id_estado`),
  ADD CONSTRAINT `producto_abarrotes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unid_medida` FOREIGN KEY (`id_unid_medida`) REFERENCES `unidad_medida` (`id_unidmedida`);

--
-- Filtros para la tabla `producto_proveedor`
--
ALTER TABLE `producto_proveedor`
  ADD CONSTRAINT `fk_producto_proveedor` FOREIGN KEY (`id_product`) REFERENCES `producto_abarrotes` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prove-produ` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_proveedor_compra_producto1` FOREIGN KEY (`compra_producto_id_compra`) REFERENCES `compra_producto` (`id_compra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `tipotelefono`
--
ALTER TABLE `tipotelefono`
  ADD CONSTRAINT `id_tel` FOREIGN KEY (`id_ttelefono`) REFERENCES `telefono` (`id_telefono`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `cod_tdocument` FOREIGN KEY (`cod_tidocument`) REFERENCES `documento` (`cod_tdocument`),
  ADD CONSTRAINT `direccion` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id_direccion`),
  ADD CONSTRAINT `estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  ADD CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `usuario_has_factura`
--
ALTER TABLE `usuario_has_factura`
  ADD CONSTRAINT `fk_usuario_has_factura_factura1` FOREIGN KEY (`factura_id_factura`) REFERENCES `factura` (`id_factura`),
  ADD CONSTRAINT `fk_usuario_has_factura_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
