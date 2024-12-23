# Ejercicio 5.

## XML.

```
<inventory>
  <product id="P001">
    <name>Chair</name>
    <category>Furniture</category>
    <price currency="USD">49.99</price>
    <stock>200</stock>
  </product>
  <product id="P002">
    <name>Table</name>
    <category>Furniture</category>
    <price currency="USD">129.99</price>
    <stock>50</stock>
  </product>
  <product id="P003">
    <name>Lamp</name>
    <category>Lighting</category>
    <price currency="USD">19.99</price>
    <stock>100</stock>
  </product>
  <product id="P004">
    <name>Desk</name>
    <category>Furniture</category>
    <price currency="USD">249.99</price>
    <stock>20</stock>
  </product>
  <product id="P005">
    <name>Ceiling Light</name>
    <category>Lighting</category>
    <price currency="USD">79.99</price>
    <stock>30</stock>
  </product>
</inventory>
```

## Preguntas.

__Pregunta 1__. Selecciona los nombres de todos los productos `//name/text()`.

```
Text='Chair'
Text='Table'
Text='Lamp'
Text='Desk'
Text='Ceiling Light'
```

__Pregunta 2__. Selecciona todos los productos de la categoría "Furniture" `//product[category="Furniture"]`.

```
Element='<product id="P001">
    <name>Chair</name>
    <category>Furniture</category>
    <price currency="USD">49.99</price>
    <stock>200</stock>
  </product>'
Element='<product id="P002">
    <name>Table</name>
    <category>Furniture</category>
    <price currency="USD">129.99</price>
    <stock>50</stock>
  </product>'
Element='<product id="P004">
    <name>Desk</name>
    <category>Furniture</category>
    <price currency="USD">249.99</price>
    <stock>20</stock>
  </product>'
```

__Pregunta 3__. Selecciona el precio del producto "Lamp" `//product[name="Lamp"]/price/text()`.

```
Text='19.99'
```

__Pregunta 4__. Cuenta cuántos productos tienen más de 50 en stock `count(//product[stock>50])`

```
Int64='2'
```

__Pregunta 5__. Selecciona el producto más caro `//product[price=max(//price)]`.

```
Element='<product id="P004">
    <name>Desk</name>
    <category>Furniture</category>
    <price currency="USD">249.99</price>
    <stock>20</stock>
  </product>'
```

__Pregunta 6__. Selecciona los nombres de los productos con menos de 30 en stock `//product[stock<30]/name/text()`.

```
Text='Desk'
```

__Pregunta 7__. Selecciona todos los precios en USD `//price[@currency="USD"]`.

```
Element='<price currency="USD">49.99</price>'
Element='<price currency="USD">129.99</price>'
Element='<price currency="USD">19.99</price>'
Element='<price currency="USD">249.99</price>'
Element='<price currency="USD">79.99</price>'
```

__Pregunta 8__. Selecciona el ID de todos los productos de la categoría "Lighting" `//product[category="Lighting"]/@id`.

```
Attribute='id=P003'
Attribute='id=P005'
```

__Pregunta 9__. Selecciona el precio del producto más barato `//product[price=min(//price)]/price/text()`.

```
Text='19.99'
```

__Pregunta 10__. Selecciona los nombres y precios de todos los productos ordenados por precio `//product[price]/name/text() | //product[price]/price/text()`.

```
Text='Chair'
Text='49.99'
Text='Table'
Text='129.99'
Text='Lamp'
Text='19.99'
Text='Desk'
Text='249.99'
Text='Ceiling Light'
Text='79.99'
```
