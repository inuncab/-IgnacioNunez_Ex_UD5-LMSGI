<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Nombre y apellidos: Ignacio Nuñez:</h2>
        <ol>
          <xsl:apply-templates select="//autor">
            <xsl:sort select="apellido"/>
          </xsl:apply-templates>
        </ol>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="autor">
    <li>
      <xsl:value-of select="concat(apellido, ', ', nombre)"/>
    </li>
  </xsl:template>

</xsl:stylesheet>
