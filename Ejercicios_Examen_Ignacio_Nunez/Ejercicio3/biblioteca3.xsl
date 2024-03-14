<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          tr:nth-child(even) {
            background-color: #f2f2f2;
          }
          tr:nth-child(odd) {
            background-color: #ffffff;
          }
          .highlight {
            background-color: red;
          }
        </style>
      </head>
      <body>
        <h2>Nombre y apellidos: Ignacio Nuñez</h2>
        <table>
        
          <xsl:apply-templates select="bib/libro">
            <xsl:sort select="precio"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <xsl:variable name="precio" select="precio"/>
    <xsl:variable name="color">
      <xsl:choose>
        <xsl:when test="$precio &gt; 100">highlight</xsl:when>
        <xsl:otherwise>normal</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <tr class="{$color}">
      <td><xsl:value-of select="precio"/></td>
      <td><xsl:value-of select="titulo"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
