# Ejercicio 1

## Preguntas.

_Pregunta 1_. Devuelve todos los títulos de los libros.

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
return $libro/titulo
```

**Resultado**

```
<titulo>1984</titulo>
<titulo>Brave New World</titulo>
<titulo>Fahrenheit 451</titulo>
<titulo>To Kill a Mockingbird</titulo>
<titulo>The Great Gatsby</titulo>
```

_Pregunta 2_. Devuelve los títulos de libros cuyo precio es mayor a 15.

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
where $libro/precio > 15
return $libro/titulo
```

**Resultado**

```
<titulo>1984</titulo>
<titulo>To Kill a Mockingbird</titulo>
```

_Pregunta 3_. Lista los autores y sus países de origen.

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
return <autor>
	<nombre>($libro/autor)</nombre>
	<pais>($libro/autor/@pais)</pais>
</autor>
```

**Resultado**

```
<autor><nombre>($libro/autor)</nombre><pais>($libro/autor/@pais)</pais></autor>
<autor><nombre>($libro/autor)</nombre><pais>($libro/autor/@pais)</pais></autor>
<autor><nombre>($libro/autor)</nombre><pais>($libro/autor/@pais)</pais></autor>
<autor><nombre>($libro/autor)</nombre><pais>($libro/autor/@pais)</pais></autor>
<autor><nombre>($libro/autor)</nombre><pais>($libro/autor/@pais)</pais></autor>
```

_Pregunta 4_. Calcula el precio promedio de los libros.

**Código**

```
let $precios := doc("biblioteca.xml")/biblioteca/libro/precio
return avg($precios)
```

**Resultado**

```
15.491999999999999
```

_Pregunta 5_. Devuelve los títulos ordenados alfabéticamente.

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
order by $libro/titulo ascending
return $libro/titulo
```

**Resultado**

```
<titulo>1984</titulo>
<titulo>Brave New World</titulo>
<titulo>Fahrenheit 451</titulo>
<titulo>The Great Gatsby</titulo>
<titulo>To Kill a Mockingbird</titulo>
```

_Pregunta 6_. Devuelve los títulos y precios de los libros en formato XML.

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
return <ticios>
<titulo>{$libro/titulo}</titulo>
<precio>{$libro/precio}</precio>
</ticios>

```

**Resultado**

```
<ticios><titulo><titulo>1984</titulo></titulo><precio><precio moneda="USD">19.99</precio></precio></ticios>
<ticios><titulo><titulo>Brave New World</titulo></titulo><precio><precio moneda="USD">14.99</precio></precio></ticios>
<ticios><titulo><titulo>Fahrenheit 451</titulo></titulo><precio><precio moneda="USD">12.50</precio></precio></ticios>
<ticios><titulo><titulo>To Kill a Mockingbird</titulo></titulo><precio><precio moneda="USD">18.99</precio></precio></ticios>
<ticios><titulo><titulo>The Great Gatsby</titulo></titulo><precio><precio moneda="USD">10.99</precio></precio></ticios>
```

_Pregunta 7_. Encuentra libros del género "Ficción".

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
where $libro/@genero = "Ficción"
return $libro/titulo
```

**Resultado**

```
<titulo>1984</titulo>
<titulo>To Kill a Mockingbird</titulo>
<titulo>The Great Gatsby</titulo>
```

_Pregunta 8_. Devuelve los libros cuyo autor sea de "EE.UU.".

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
where $libro/autor/@pais = "EE.UU."
return $libro/titulo
```

**Resultado**

```
<titulo>Fahrenheit 451</titulo>
<titulo>To Kill a Mockingbird</titulo>
<titulo>The Great Gatsby</titulo>
```

_Pregunta 9_. Lista los libros y su precio total (precio + 5 USD de impuesto).

**Código**

```
for $libro in doc("biblioteca.xml")/biblioteca/libro
let $precioTotal := $libro/precio + 5
return <libro>
  <titulo>{$libro/titulo}</titulo>
  <precioTotal>{$precioTotal}</precioTotal>
</libro>
```

**Resultado**

```
<libro><titulo><titulo>1984</titulo></titulo><precioTotal>24.99</precioTotal></libro>
<libro><titulo><titulo>Brave New World</titulo></titulo><precioTotal>19.990000000000002</precioTotal></libro>
<libro><titulo><titulo>Fahrenheit 451</titulo></titulo><precioTotal>17.5</precioTotal></libro>
<libro><titulo><titulo>To Kill a Mockingbird</titulo></titulo><precioTotal>23.99</precioTotal></libro>
<libro><titulo><titulo>The Great Gatsby</titulo></titulo><precioTotal>15.99</precioTotal></libro>
```

_Pregunta 10_. Devuelve el libro más caro en el catálogo. 

**Código**

```
let $maxPrecio := max(doc("biblioteca.xml")/biblioteca/libro/precio)
for $libro in doc("biblioteca.xml")/biblioteca/libro
where $libro/precio = $maxPrecio
return $libro/titulo
```

**Resultado**

```
<titulo>1984</titulo>
```
