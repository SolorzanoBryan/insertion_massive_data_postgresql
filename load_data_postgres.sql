INSERT INTO public.oficina(
	codigo_oficina, ciudad, pais, region, codigo_postal, telefono, linea_direccion1, linea_direccion2)
	VALUES ('cd'||generate_series(1, 750000),'ciudad', 'pais', 'region','234-533', 'telefono', 'linea_direccion1', 'linea_direccion2');
	
INSERT INTO public.empleado(
	nombre, apellido1, apellido2, extension, email, codigo_oficina, puesto)
	VALUES ('Empleado'||generate_series(1, 750000), 'Apellido1', 'Apellido2', 'Extensión', 'emai@gmail.com', 'cd'||generate_series(1, 750000), 'Puesto');

INSERT INTO public.gama_producto(
	gama, descripcion_texto, descripcion_html, imagen)
	VALUES ('Gama'||generate_series(1, 750000), 'Descripción', '', '');

INSERT INTO public.cliente(
	nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, linea_direccion1, linea_direccion2, ciudad, region, pais, codigo_postal, codigo_empleado_rep_ventas, limite_credito)
	VALUES ('cliente'||generate_series(1, 750000), 'NombreContacto', 'ApellidoContacto', 'telefono', 'fax', 'linea_direccion1', 'linea_direccion2', 'ciudad', 'region', 'pais', '234-53', generate_series(1, 750000), 2000);
	
INSERT INTO public.pedido(
	codigo_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, codigo_cliente)
	VALUES (generate_series(1, 750000) , '02/01/2021', '02/07/2022', '02/02/2021', 'Bueno', 'Comentarios', generate_series(1, 750000));
	
INSERT INTO public.producto(
	codigo_producto, nombre, gama, dimensiones, proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor)
	VALUES ('Codigo'||generate_series(1, 750000), 'Producto'||generate_series(1, 750000), 'Gama'||generate_series(1, 750000), 'dimensiones', 'Proveedor'||generate_series(1, 750000), 'Descripción', 100, 2000, 1100);
	
INSERT INTO public.detalle_pedido(
	codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea)
	VALUES (generate_series(1, 750000), 'Codigo'||generate_series(1, 750000), 2, 1000, 1);
	
INSERT INTO public.pago(
	codigo_cliente, forma_pago, id_transaccion, fecha_pago, total)
	VALUES (generate_series(1, 750000), 'Efectivo', 'transaccion'||generate_series(1, 750000), '2022-07-01', 2000);