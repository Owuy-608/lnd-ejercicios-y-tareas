# Ejercicio 1.

## XML.

```
<bookstore>
  <book id="101">
    <title>Clean Code</title>
    <author>Robert C. Martin</author>
    <genre>Programming</genre>
    <price currency="USD">32.99</price>
    <stock>20</stock>
  </book>
  <book id="102">
    <title>The Pragmatic Programmer</title>
    <author>Andrew Hunt</author>
    <genre>Programming</genre>
    <price currency="USD">40.50</price>
    <stock>15</stock>
  </book>
  <book id="103">
    <title>1984</title>
    <author>George Orwell</author>
    <genre>Fiction</genre>
    <price currency="USD">12.99</price>
    <stock>50</stock>
  </book>
  <book id="104">
    <title>The Art of War</title>
    <author>Sun Tzu</author>
    <genre>Philosophy</genre>
    <price currency="USD">9.99</price>
    <stock>30</stock>
  </book>
  <book id="105">
    <title>Thinking, Fast and Slow</title>
    <author>Daniel Kahneman</author>
    <genre>Psychology</genre>
    <price currency="USD">20.00</price>
    <stock>10</stock>
  </book>
</bookstore>
```

## Preguntas.

_Pregunta 1_. Selecciona todos los títulos de los libros `//title/text()`.

```
Text='Clean Code'
Text='The Pragmatic Programmer'
Text='1984'
Text='The Art of War'
Text='Thinking, Fast and Slow'
```

_Pregunta 2_. Selecciona los autores de los libros en el género "Programming" `//book[genre="Programming"]/author/text()`.

```
Text='Robert C. Martin'
Text='Andrew Hunt'
```

_Pregunta 3_. Selecciona el precio del libro "The Art of War" `//book[title='The Art of War']/price/text()`.

```
Text='9.99'
```

_Pregunta 4_. Cuenta cuántos libros tienen más de 20 en stock `count(//book[stock>20])/text()`.

```
Int64='2'
```

_Pregunta 5_. Selecciona todos los géneros únicos disponibles en la tienda `distinct-values(//genre)`.

```
UntypedAtomic='Programming'
UntypedAtomic='Fiction'
UntypedAtomic='Philosophy'
UntypedAtomic='Psychology'
```

_Pregunta 6_. Selecciona el autor cuyo libro cuesta más `//book[price=max(//price)]/author/text()`.

```
Text='Andrew Hunt'
```

_Pregunta 7_. Selecciona el título del libro más barato `//book[price=min(//price)]/title/text`.

```
Text='The Art of War'
```

_Pregunta 8_. Selecciona todos los libros cuyo precio esté entre 10 y 30 `//book[price > 10 and price < 30]/title/text()`.

```
Text='1984'
Text='Thinking, Fast and Slow'
```

_Pregunta 9_. Selecciona todos los libros que tengan menos de 20 unidades en stock `//book[stock<20]`

```
Element='<book id="102">
    <title>The Pragmatic Programmer</title>
    <author>Andrew Hunt</author>
    <genre>Programming</genre>
    <price currency="USD">40.50</price>
    <stock>15</stock>
  </book>'
Element='<book id="105">
    <title>Thinking, Fast and Slow</title>
    <author>Daniel Kahneman</author>
    <genre>Psychology</genre>
    <price currency="USD">20.00</price>
    <stock>10</stock>
  </book>'
```

_Pregunta 10_. Selecciona el atributo id de todos los libros `//book/@id`.

```
Attribute='id=101'
Attribute='id=102'
Attribute='id=103'
Attribute='id=104'
Attribute='id=105'
```
