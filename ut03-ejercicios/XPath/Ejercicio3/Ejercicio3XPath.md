# Ejercicio 3.

## XML.

```
<library>
  <book id="301">
    <title>The Catcher in the Rye</title>
    <author>J.D. Salinger</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>
  <book id="302">
    <title>To Kill a Mockingbird</title>
    <author>Harper Lee</author>
    <genre>Fiction</genre>
    <available>false</available>
  </book>
  <book id="303">
    <title>The Great Gatsby</title>
    <author>F. Scott Fitzgerald</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>
  <book id="304">
    <title>1984</title>
    <author>George Orwell</author>
    <genre>Dystopian</genre>
    <available>true</available>
  </book>
  <book id="305">
    <title>Moby Dick</title>
    <author>Herman Melville</author>
    <genre>Adventure</genre>
    <available>false</available>
  </book>
</library>
```

## Preguntas.

__Pregunta 1__. Selecciona todos los títulos de los libros `//title/text()`.

```
Text='The Catcher in the Rye'
Text='To Kill a Mockingbird'
Text='The Great Gatsby'
Text='1984'
Text='Moby Dick'
```

__Pregunta 2__. Selecciona todos los libros disponibles (con available="true") `//book[available = "true"]`.

```
Element='<book id="301">
    <title>The Catcher in the Rye</title>
    <author>J.D. Salinger</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>'
Element='<book id="303">
    <title>The Great Gatsby</title>
    <author>F. Scott Fitzgerald</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>'
Element='<book id="304">
    <title>1984</title>
    <author>George Orwell</author>
    <genre>Dystopian</genre>
    <available>true</available>
  </book>'
```

__Pregunta 3__. Selecciona el autor del libro "1984" `//book[title="1984"]/author/text()`.

```
Text='George Orwell'
```

__Pregunta 4__. Selecciona todos los géneros de libros únicos `distinct-values(//genre)`.

```
UntypedAtomic='Fiction'
UntypedAtomic='Dystopian'
UntypedAtomic='Adventure'
```

__Pregunta 5__. Cuenta cuántos libros están disponibles `count(//book[available="true"])`.

```
count(//book[available="true"])
```

__Pregunta 6__. Selecciona los títulos de los libros que no están disponibles `//book[available="false"]/title/text()`.

```
Text='To Kill a Mockingbird'
Text='Moby Dick'
```

__Pregunta 7__. Selecciona los autores cuyos libros están disponibles `//book[available="true"]/author/text()`.

```
Text='J.D. Salinger'
Text='F. Scott Fitzgerald'
Text='George Orwell'
```

__Pregunta 8__. Selecciona el ID del libro "The Great Gatsby" `//book[title="The Great Gatsby"]/@id`.

```
Attribute='id=303'
```

__Pregunta 9__. Selecciona todos los libros del género "Fiction" `//book[genre="Fiction"]`.

```
Element='<book id="301">
    <title>The Catcher in the Rye</title>
    <author>J.D. Salinger</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>'
Element='<book id="302">
    <title>To Kill a Mockingbird</title>
    <author>Harper Lee</author>
    <genre>Fiction</genre>
    <available>false</available>
  </book>'
Element='<book id="303">
    <title>The Great Gatsby</title>
    <author>F. Scott Fitzgerald</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>'
```

__Pregunta 10__. Selecciona los títulos de los libros cuyo autor es "Herman Melville" `//book[author="Herman Melville"]/title/text()`.

```
Text='Moby Dick'
```

