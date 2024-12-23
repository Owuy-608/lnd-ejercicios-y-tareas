# Ejercicio 2.

## Preguntas.

_Pregunta 1_. Devuelve los nombres de todos los productos.

**Code**

```
for $producto in doc("tienda.xml")/tienda/producto
return $producto/nombre
```

**Resultado**

```
<nombre>Portátil</nombre>
<nombre>Monitor</nombre>
<nombre>Ratón</nombre>
<nombre>Escritorio</nombre>
<nombre>Impresora</nombre>
```

_Pregunta 2_. Devuelve los productos de la categoría "Accesorios".

**Code**

```
for $producto in doc("tienda.xml")/tienda/producto
where $producto/@categoria = "Accesorios"
return $producto/nombre
```

**Resultado**

```
<nombre>Monitor</nombre>
<nombre>Ratón</nombre>
```

_Pregunta 3_. Calcula el precio total de todos los productos.

**Code**

```
let $preciostt := doc("tienda.xml")/tienda/producto/precio
return sum($preciostt)
```

**Resultado**

```
1775
```

_Pregunta 4_. Encuentra productos con un precio mayor a 500 USD.

**Code**

```
for $producto in doc("tienda.xml")/tienda/producto
where $producto/precio > 500
return $producto/nombre
```

**Resultado**

```
<nombre>Portátil</nombre>
<nombre>Escritorio</nombre>
```

_Pregunta 5_. Devuelve los productos y sus precios con un descuento del 10%.

**Code**

```
for $producto in doc("tienda.xml")/tienda/producto
let $descuento := $producto/precio * 0.9
return <procuento>
	<nombres>{$producto/nombre}</nombres>
	<preciod>{$descuento}</preciod>
</procuento>
```

**Resultado**

```
<procuento><nombres><nombre>Portátil</nombre></nombres><preciod>720</preciod></procuento>
<procuento><nombres><nombre>Monitor</nombre></nombres><preciod>180</preciod></procuento>
<procuento><nombres><nombre>Ratón</nombre></nombres><preciod>22.5</preciod></procuento>
<procuento><nombres><nombre>Escritorio</nombre></nombres><preciod>540</preciod></procuento>
<procuento><nombres><nombre>Impresora</nombre></nombres><preciod>135</preciod></procuento>
```

_Pregunta 6_. Lista los productos ordenados por precio de menor a mayor.

**Code**

```
for $producto in doc("tienda.xml")/tienda/producto
order by $producto/precio ascending
return $producto/precio
```

**Resultado**

```
<precio moneda="USD">150</precio>
<precio moneda="USD">200</precio>
<precio moneda="USD">25</precio>
<precio moneda="USD">600</precio>
<precio moneda="USD">800</precio>
```

_Pregunta 7_. Devuelve los productos de la marca "HP".

**Code**

```
for $producto in doc("tienda.xml")/tienda/producto
where $producto/marca = "HP"
return $producto/nombre
```

**Resultado**

```
<nombre>Portátil</nombre>
```

_Pregunta 8_. Devuelve los nombres y categorías de los productos como elementos `<item>`.

**Code**

```
for $producto in doc("tienda.xml")/tienda/producto
return <item>
  <nombre>{$producto/nombre}</nombre>
  <categoria>{$producto/@categoria}</categoria>
</item>

```

**Resultado**

```
<item><nombre><nombre>Portátil</nombre></nombre><categoria categoria="Computadoras"/></item>
<item><nombre><nombre>Monitor</nombre></nombre><categoria categoria="Accesorios"/></item>
<item><nombre><nombre>Ratón</nombre></nombre><categoria categoria="Accesorios"/></item>
<item><nombre><nombre>Escritorio</nombre></nombre><categoria categoria="Computadoras"/></item>
<item><nombre><nombre>Impresora</nombre></nombre><categoria categoria="Impresoras"/></item>
```

_Pregunta 9_. Encuentra el producto más barato.

**Code**

```
let $minPrecio := min(doc("tienda.xml")/tienda/producto/precio)
for $producto in doc("tienda.xml")/tienda/producto
where $producto/precio = $minPrecio
return $producto/nombre
```

**Resultado**

```
<nombre>Ratón</nombre>
```

_Pregunta 10_. Calcula el precio promedio de los productos en la categoría "Computadoras".

**Code**

```
let $precioprom := doc("tienda.xml")/tienda/producto/precio
return avg($precioprom)
```

**Resultado**

```
355
```
