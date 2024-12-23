# Ejercicio 1.

## XML entrada

```
<fruits>
  <fruit>Apple</fruit>
  <fruit>Banana</fruit>
  <fruit>Cherry</fruit>
</fruits>
```

## Salida

```
<ul>
  <li>Apple</li>
  <li>Banana</li>
  <li>Cherry</li>
</ul>
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <ul>
      <xsl:for-each select="fruits/fruit">
        <li>
          <xsl:value-of select="."/>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>
</xsl:stylesheet>
```

# Ejercicio 2.

## XMl entrada

```
<library>
  <book>
    <title>1984</title>
    <author>George Orwell</author>
  </book>
  <book>
    <title>Brave New World</title>
    <author>Aldous Huxley</author>
  </book>
</library>
```

## Salida

```
<table border="1">
  <tr>
    <th>Title</th>
    <th>Author</th>
  </tr>
  <tr>
    <td>1984</td>
    <td>George Orwell</td>
  </tr>
  <tr>
    <td>Brave New World</td>
    <td>Aldous Huxley</td>
  </tr>
</table>
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <table border="1">
      <!-- Fila de encabezados -->
      <tr>
        <th>Title</th>
        <th>Author</th>
      </tr>
      <!-- Bucle para cada nodo <book> -->
      <xsl:for-each select="library/book">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="author"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>		
```

# Ejercicio 3.

# XML

```
<sections>
  <section>
    <title>Introduction</title>
    <content>Welcome to the tutorial.</content>
  </section>
  <section>
    <title>Chapter 1</title>
    <content>This is the first chapter.</content>
  </section>
</sections>
```

# Salida

```
<h2>Introduction</h2>
<p>Welcome to the tutorial.</p>
<h2>Chapter 1</h2>
<p>This is the first chapter.</p>
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>

  	<xsl:template match="/">
  		<xsl:for-each select="sections/section">
  			<h2><xsl:value-of select="title"/></h2>
  			<p><xsl:value-of select="content"/></p>
  		</xsl:for-each>
  	</xsl:template>
</xsl:stylesheet>
```

# Ejercicio 4.

## XML

```
<products>
  <product>
    <name>Laptop</name>
    <price>1000</price>
  </product>
  <product>
    <name>Mouse</name>
    <price>25</price>
  </product>
</products>
```

## Salida

```
<p><b>Laptop</b> - $1000</p>
<p>Mouse - $25</p>
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <xsl:for-each select="products/product">
      <p>
        <xsl:choose>
          <xsl:when test="price &gt; 500">
            <b><xsl:value-of select="name"/></b> - $<xsl:value-of select="price"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="name"/> - $<xsl:value-of select="price"/>
          </xsl:otherwise>
        </xsl:choose>
      </p>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
```

# Ejercicio 5.

## XML

```
<menu>
  <item>Home</item>
  <item>About</item>
  <item>Contact</item>
</menu>
```

## Salida

```
<nav>
  <ul>
    <li>Home</li>
    <li>About</li>
    <li>Contact</li>
  </ul>
</nav>
```

## XSLT 

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<nav>
			<ul>
				<xsl:for-each select="menu/item">
					<li>
						<xsl:value-of select="."/>
					</li>
				</xsl:for-each>
			</ul>
		</nav>
	</xsl:template>
</xsl:stylesheet>
```

# Ejercicio 6.

## XMl.

```
<fruits>
  <fruit>Apple</fruit>
  <fruit>Banana</fruit>
  <fruit>Cherry</fruit>
</fruits>
```

## Salida

```
[
  "Apple",
  "Banana",
  "Cherry"
]
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <xsl:output method="json" indent="yes"/>
  
  <xsl:template match="/">
    <xsl:array>
      <xsl:for-each select="fruits/fruit">
        <xsl:string select="."/>
      </xsl:for-each>
    </xsl:array>
  </xsl:template>
</xsl:stylesheet>
```

# Ejercicio 7.

## XML

```
<products>
  <product>
    <name>Laptop</name>
    <price>1000</price>
  </product>
  <product>
    <name>Mouse</name>
    <price>25</price>
  </product>
</products>
```

## Salida

```
[
  {
    "name": "Laptop",
    "price": 1000
  },
  {
    "name": "Mouse",
    "price": 25
  }
]
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" indent="yes"/>
  
  <xsl:template match="/">
    [
      <xsl:for-each select="products/product">
        {
          "name": "<xsl:value-of select="name"/>",
          "price": <xsl:value-of select="price"/>
        }<xsl:if test="position() != last()">,</xsl:if>
      </xsl:for-each>
    ]
  </xsl:template>
</xsl:stylesheet>

```
# Ejercicio 8.

## XML

```
<users>
  <user>
    <id>1</id>
    <name>John Doe</name>
    <email>john@example.com</email>
  </user>
  <user>
    <id>2</id>
    <name>Jane Smith</name>
    <email>jane@example.com</email>
  </user>
</users>
```

## Salida

```
[
  {
    "id": "1",
    "name": "John Doe",
    "email": "john@example.com"
  },
  {
    "id": "2",
    "name": "Jane Smith",
    "email": "jane@example.com"
  }
]
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" indent="yes"/>
  
  <xsl:template match="/">
    [
      <xsl:for-each select="users/user">
        {
          "id": "<xsl:value-of select="id"/>",
          "name": "<xsl:value-of select="name"/>",
          "email": "<xsl:value-of select="email"/>"
        }<xsl:if test="position() != last()">,</xsl:if>
      </xsl:for-each>
    ]
  </xsl:template>
</xsl:stylesheet>

```

# Ejercicio 9.

## XML

```
<store>
  <category name="Electronics">
    <product>
      <name>Laptop</name>
      <price>1000</price>
    </product>
    <product>
      <name>Smartphone</name>
      <price>700</price>
    </product>
  </category>
  <category name="Books">
    <product>
      <name>1984</name>
      <price>15.99</price>
    </product>
    <product>
      <name>Brave New World</name>
      <price>12.49</price>
    </product>
  </category>
</store>
```

## Salida

```
{
  "Electronics": [
    {
      "name": "Laptop",
      "price": 1000
    },
    {
      "name": "Smartphone",
      "price": 700
    }
  ],
  "Books": [
    {
      "name": "1984",
      "price": 15.99
    },
    {
      "name": "Brave New World",
      "price": 12.49
    }
  ]
}
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" indent="yes"/>
  
  <xsl:template match="/">
    {
      <xsl:for-each select="store/category">
        "<xsl:value-of select="@name"/>": [
          <xsl:for-each select="product">
            {
              "name": "<xsl:value-of select="name"/>",
              "price": <xsl:value-of select="price"/>
            }<xsl:if test="position() != last()">,</xsl:if>
          </xsl:for-each>
        ]<xsl:if test="position() != last()">,</xsl:if>
      </xsl:for-each>
    }
  </xsl:template>
</xsl:stylesheet>

```

# Ejercicio 10.

## XML

```
<document>
  <section>
    <title>Introduction</title>
    <content>Welcome to this tutorial.</content>
  </section>
  <section>
    <title>Chapter 1</title>
    <content>This is the first chapter.</content>
  </section>
</document>
```

## Salida

```
[
  {
    "title": "Introduction",
    "content": "Welcome to this tutorial."
  },
  {
    "title": "Chapter 1",
    "content": "This is the first chapter."
  }
]
```

## XSLT

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" indent="yes"/>
  
  <xsl:template match="/">
    [
      <xsl:for-each select="document/section">
        {
          "title": "<xsl:value-of select="title"/>",
          "content": "<xsl:value-of select="content"/>"
        }<xsl:if test="position() != last()">,</xsl:if>
      </xsl:for-each>
    ]
  </xsl:template>
</xsl:stylesheet>
```
