SELECT id_cliente, nombre, direccion FROM clientes;

/* Apodando los campos */
SELECT id_cliente, nombre AS Nombre_Cliente, direccion AS Direccion_Cliente FROM clientes;


/* Apodando nombre tablas */
SELECT id_cliente, Clientess.nombre, Clientess.direccion  FROM clientes Clientess;

/* Listar todos los campoos */
SELECT * FROM clientes;
