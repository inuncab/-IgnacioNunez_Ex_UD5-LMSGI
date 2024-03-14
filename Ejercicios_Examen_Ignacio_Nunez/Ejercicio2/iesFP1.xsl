<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Nombre y apellidos: Ignacio Nuñez</h2>

          <xsl:apply-templates select="//ciclo"/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="ciclo">
    <li>
      <xsl:text>"</xsl:text><xsl:value-of select="nombre"/><xsl:text>"</xsl:text>
    </li>
  </xsl:template>

</xsl:stylesheet>
