-- Creamos la accion Total de pedidos para saber la cantidad de ellos en la tabla Pedidos
CREATE DEFINER=`root`@`localhost` FUNCTION `TotalPedidos`( ped INT) RETURNS int

-- determinamos el tipo de funcion
    DETERMINISTIC
    -- Inicio de acciones
BEGIN
	DECLARE Ped INT; 
    SELECT COUNT(*) INTO Ped FROM Pedido;
    RETURN Ped;
END