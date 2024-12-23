let $precioprom := doc("pedidos.xml")/pedidos/pedido/precio
return avg($precioprom)