# Ejercicio 3.

## Preguntas.

_Pregunta 1_. Devuelve todos los títulos de los álbumes.

**Code**

```
for $album in doc("musica.xml")/catalogo/album
return $album/titulo
```

**Resultado**

```
<titulo>The Dark Side of the Moon</titulo>
<titulo>Thriller</titulo>
<titulo>Abbey Road</titulo>
<titulo>Kind of Blue</titulo>
```

_Pregunta 2_. Devuelve los álbumes cuyo precio es mayor a 18.

**Code**

```
for $album in doc("musica.xml")/catalogo/album
where $album/precio > 18
return $album/titulo
```

**Resultado**

```
<titulo>The Dark Side of the Moon</titulo>
<titulo>Abbey Road</titulo>
```

_Pregunta 3_. Lista los títulos y géneros de todos los álbumes.

**Code**

```
for $album in doc("musica.xml")/catalogo/album
return <tineros>
	<titulos>{$album/titulo}</titulos>
	<generos>{$album/@genero}</generos>
</tineros>
```

**Resultado**

```
<tineros><titulos><titulo>The Dark Side of the Moon</titulo></titulos><generos genero="Rock"/></tineros>
<tineros><titulos><titulo>Thriller</titulo></titulos><generos genero="Pop"/></tineros>
<tineros><titulos><titulo>Abbey Road</titulo></titulos><generos genero="Rock"/></tineros>
<tineros><titulos><titulo>Kind of Blue</titulo></titulos><generos genero="Jazz"/></tineros>
```

_Pregunta 4_. Calcula el precio promedio de los álbumes (usa `let`).

**Code**

```
let $precioprom := doc("musica.xml")/catalogo/album/precio
return avg($precioprom)
```

**Resultado**

```
19.5
```

_Pregunta 5_. Encuentra los álbumes de género "Rock".

**Code**

```
for $album in doc("musica.xml")/catalogo/album
where $album/@genero = "Rock"
return /$album/titulo
```

**Resultado**

```
<titulo>The Dark Side of the Moon</titulo>
<titulo>Abbey Road</titulo>
```

_Pregunta 6_. Ordena los álbumes por año de lanzamiento.

**Code**

```
for $album in doc("musica.xml")/catalogo/album
order by $album/anio ascending
return $album/anio
```

**Resultado**

```
<anio>1959</anio>
<anio>1969</anio>
<anio>1973</anio>
<anio>1982</anio>
```

_Pregunta 7_. Devuelve el álbum más caro.

**Code**

```
let $preciomax := max(doc("musica.xml")/catalogo/album/precio)
for $album in doc("musica.xml")/catalogo/album
where $album/precio = $preciomax
return $album/titulo
```

**Resultado**

```
<titulo>Abbey Road</titulo>
```

_Pregunta 8_. Devuelve los títulos y los precios con un descuento del 20%.

**Code**

```
for $album in doc("musica.xml")/catalogo/album
let $preciodes := $album/precio * 0.8
return <ticios>
	<titulos>{$album/titulo}</titulos>
	<precios>{$preciodes}</precios>
</ticios>
```

**Resultado**

```
for $album in doc("musica.xml")/catalogo/album
let $preciodes := $album/precio * 0.8
return <ticios>
	<titulos>{$album/titulo}</titulos>
	<precios>{$preciodes}</precios>
</ticios>
```

_Pregunta 9_. Devuelve los álbumes lanzados antes de 1975.

**Code**

```
for $album in doc("musica.xml")/catalogo/album
where $album/anio < "1975"
return $album/titulo
```

**Resultado**

```
<titulo>The Dark Side of the Moon</titulo>
<titulo>Abbey Road</titulo>
<titulo>Kind of Blue</titulo>
```

_Pregunta 10_. Calcula el precio total de todos los álbumes.

**Code**

```
let $preciosum := doc("musica.xml")/catalogo/album/precio
return sum($preciosum)
```

**Resultado**

```
78
```
