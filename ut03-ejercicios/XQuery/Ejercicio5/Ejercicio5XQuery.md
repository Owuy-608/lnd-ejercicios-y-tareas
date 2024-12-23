# Ejercicios 5.

## Preguntas.

_Ejercicio 1_. Devuelve los nombres de los clientes.

**Code**

```
for $pedido in doc("pedidos.xml")/pedidos/pedido
return $pedido/@cliente
```

**Resultado**

```
cliente="Juan"
cliente="María"
cliente="Pedro"
cliente="Ana"
```


_Ejercicio 2_. Devuelve los productos con precio total (cantidad × precio).

**Code**

```
for $pedido in doc("pedidos.xml")/pedidos/pedido
let $preciototal := $pedido/cantidad + $pedido/precio
return <protol>
	<productos>{$pedido/producto}</productos>
	<preciotal>{$preciototal}</preciotal>
</protol>
```

**Resultado**

```
<protol><productos><producto>Televisor</producto></productos><preciotal>401</preciotal></protol>
<protol><productos><producto>Teléfono</producto></productos><preciotal>202</preciotal></protol>
<protol><productos><producto>Ratón</producto></productos><preciotal>30</preciotal></protol>
<protol><productos><producto>Teclado</producto></productos><preciotal>33</preciotal></protol>
```

_Ejercicio 3_. Filtra los pedidos cuyo precio total sea mayor a 100.

**Code**

```
for $pedido in doc("pedidos.xml")/pedidos/pedido
let $preciototal := $pedido/cantidad + $pedido/precio
where $preciototal > 100
return $pedido/producto
```

**Resultado**

```
<producto>Televisor</producto>
<producto>Teléfono</producto>
```

_Ejercicio 4_. Calcula el precio promedio de todos los pedidos.

**Code**

```
let $precioprom := doc("pedidos.xml")/pedidos/pedido/precio
return avg($precioprom)
```

**Resultado**

```
163.75
```

_Ejercicio 5_. Devuelve el pedido más caro.

**Code**

```
let $pedidomax := max(doc("pedidos.xml")/pedidos/pedido/precio)
for $pedido in doc("pedidos.xml")/pedidos/pedido
where $pedidomax = $pedido/precio
return $pedido/producto
```

**Resultado**

```
<producto>Televisor</producto>
```

_Ejercicio 6_. Ordena los pedidos por cliente alfabéticamente.

**Code**

```
for $pedido in doc("pedidos.xml")/pedidos/pedido
order by $pedido/@cliente ascending
return $pedido/@cliente
```

**Resultado**

```
cliente="Ana"
cliente="Juan"
cliente="María"
cliente="Pedro"
```

_Ejercicio 7_. Calcula el precio total de todos los pedidos.

**Code**

```
for $pedido in doc("pedidos.xml")/pedidos/pedido
let $preciototal := $pedido/cantidad + $pedido/precio
return $preciototal
```

**Resultado**

```
401
202
30
33
```

_Ejercicio 8_. Devuelve los nombres de los clientes que compraron más de 3 unidades.

**Code**

```
for $pedido in doc("pedidos.xml")/pedidos/pedido
where $pedido/cantidad > 3
return $pedido/@cliente
```

**Resultado**

```
cliente="Pedro"
```

_Ejercicio 9_. Devuelve los productos y sus precios con un descuento del 15% (usa `let`).

**Code**

```
for $pedido in doc("pedidos.xml")/pedidos/pedido
let $pedidodes := $pedido/precio * 0.85
return <procuento>
	<productos>{$pedido/producto}</productos>
	<descuento>{$pedidodes}</descuento>
</procuento>
```

**Resultado**

```
<procuento><productos><producto>Televisor</producto></productos><descuento>340</descuento></procuento>
<procuento><productos><producto>Teléfono</producto></productos><descuento>170</descuento></procuento>
<procuento><productos><producto>Ratón</producto></productos><descuento>21.25</descuento></procuento>
<procuento><productos><producto>Teclado</producto></productos><descuento>25.5</descuento></procuento>
```

_Ejercicio 10_. Cuenta el número total de pedidos.

**Code**

```
count(doc("pedidos.xml")/pedidos/pedido)
```

**Resultado**

```
4
```

