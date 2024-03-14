<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h2>Nombre y apellidos: Ignacio Nuñez</h2>
      <ol>
        <xsl:for-each select="/bib/libro[precio &lt; 100]">
          <li>
            <xsl:value-of select="titulo"/>
          </li>
        </xsl:for-each>
      </ol>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
