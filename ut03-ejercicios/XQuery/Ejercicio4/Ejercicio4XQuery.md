# Ejercicio 4.

## Preguntas.

_Pregunta 1_. Devuelve los nombres de los estudiantes.

**Code**

```
for $estudiante in doc("estudiantes.xml")/estudiantes/estudiante
return $estudiante/nombre
```

**Resultado**

```
<nombre>Juan</nombre>
<nombre>María</nombre>
<nombre>Pedro</nombre>
<nombre>Ana</nombre>
```

_Pregunta 2_. Filtra los estudiantes con una nota mayor a 8.

**Code**

```
for $estu in doc("estudiantes.xml")/estudiantes/estudiante
where $estu/nota > 8
return $estu/nombre
```

**Resultado**

```
<nombre>Juan</nombre>
<nombre>María</nombre>
<nombre>Ana</nombre>
```

_Pregunta 3_. Devuelve los nombres y las carreras de los estudiantes.

**Code**

```
for $estu in doc("estudiantes.xml")/estudiantes/estudiante
return <nomras>
	<nombres>{$estu/nombre}</nombres>
	<carreras>{$estu/@carrera}</carreras>
</nomras>
```

**Resultado**

```
<nomras><nombres><nombre>Juan</nombre></nombres><carreras carrera="Ingeniería"/></nomras>
<nomras><nombres><nombre>María</nombre></nombres><carreras carrera="Derecho"/></nomras>
<nomras><nombres><nombre>Pedro</nombre></nombres><carreras carrera="Medicina"/></nomras>
<nomras><nombres><nombre>Ana</nombre></nombres><carreras carrera="Ingeniería"/></nomras>
```

_Pregunta 4_. Calcula la nota promedio de los estudiantes (usa let).

**Code**

```
let $notaprom := doc("estudiantes.xml")/estudiantes/estudiante/nota
return avg($notaprom)
```

**Resultado**

```
8.45
```

_Pregunta 5_. Devuelve los estudiantes de la carrera "Ingeniería".

**Code**

```
for $estu in doc("estudiantes.xml")/estudiantes/estudiante
where $estu/@carrera = "Ingeniería"
return $estu/nombre
```

**Resultado**

```
<nombre>Juan</nombre>
<nombre>Ana</nombre>
```

_Pregunta 6_. Ordena a los estudiantes por edad.

**Code**

```
for $estu in doc("estudiantes.xml")/estudiantes/estudiante
order by $estu/edad ascending
return $estu/nombre
```

**Resultado**

```
<nombre>Pedro</nombre>
<nombre>Juan</nombre>
<nombre>Ana</nombre>
<nombre>María</nombre>
```

_Pregunta 7_. Devuelve el estudiante más joven.

**Code**

```
let $minEdad := min(doc("estudiantes.xml")/estudiantes/estudiante/edad)
for $estudiante in doc("estudiantes.xml")/estudiantes/estudiante
where $estudiante/edad = $minEdad
return $estudiante/nombre
```

**Resultado**

```
<nombre>Pedro</nombre>
```

_Pregunta 8_. Devuelve los nombres y las notas incrementadas en 0.5.

**Code**

```
for $estudiante in doc("estudiantes.xml")/estudiantes/estudiante
let $notain := $estudiante/nota * 0.5
return <nomtas>
	<nombres>{$estudiante/nombre}</nombres>
	<notas>{$notain}</notas>
</nomtas>
```

**Resultado**

```
<nomtas><nombres><nombre>Juan</nombre></nombres><notas>4.25</notas></nomtas>
<nomtas><nombres><nombre>María</nombre></nombres><notas>4.5</notas></nomtas>
<nomtas><nombres><nombre>Pedro</nombre></nombres><notas>3.75</notas></nomtas>
<nomtas><nombres><nombre>Ana</nombre></nombres><notas>4.4</notas></nomtas>
```

_Pregunta 9_. Devuelve los estudiantes cuya nota es mayor a 8 y pertenecen a Ingeniería.

**Code**

```
for $estudiante in doc("estudiantes.xml")/estudiantes/estudiante
where $estudiante/nota > 8 and $estudiante/@carrera = "Ingeniería"
return $estudiante/nombre
```

**Resultado**

```
<nombre>Juan</nombre>
<nombre>Ana</nombre>
```

_Pregunta 10_. Cuenta cuántos estudiantes hay en total.

**Code**

```
count(doc("estudiantes.xml")/estudiantes/estudiante)
```

**Resultado**

```
4
```
