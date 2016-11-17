<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <h2>My CD Collection</h2>
    <table border="1">
      <tr style="background-color:blue">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Artist</th>
        <th style="text-align:left;background-color:#F2D872">Year</th>
      </tr>
      <xsl:for-each select="catalog/cd">
        <xsl:sort select="year" data-type="number" order="descending"/>
      <tr>
        <td style="background-color:green"><xsl:value-of select="title"/></td>
        <td style="background-color:yellow"><xsl:value-of select="artist"/></td>
        <td style="background-color:red"><xsl:value-of select="year"/></td>
          
      </tr>
      </xsl:for-each>
    </table>
    <table border="1">
        <span>Seleccionanos el numero 4 de la lista</span>
        <tr>
          <td style="background-color:green"><xsl:value-of select="catalog/cd[4]/title"/></td>
          <td style="background-color:yellow"><xsl:value-of select="catalog/cd[4]/artist"/></td>
          <td style="background-color:red"><xsl:value-of select="catalog/cd[4]/year"/></td>
      </tr>
    </table>
    <table border="1">
      <span>los que sean artist="Bob Dylan"</span>
      <xsl:for-each select="catalog/cd[artist='Bob Dylan']">
        <tr>
          <td style="background-color:green"><xsl:value-of select="title"/></td>
          <td style="background-color:yellow"><xsl:value-of select="artist"/></td>
          <td style="background-color:red"><xsl:value-of select="year"/></td>
      </tr>
    </xsl:for-each>
    </table>

    <table border="1">
      <span>ordenado por year descendentemente y que year mayor 1982 y menor 1995</span>
      <xsl:for-each select="catalog/cd">
        <xsl:sort select="year" data-type="number" order="descending"/>
        <xsl:if test="year &gt; 1980 and year &lt; 1995" >
          <tr>
              <td style="background-color:green"><xsl:value-of select="title"/></td>
              <td style="background-color:yellow"><xsl:value-of select="artist"/></td>
              <td style="background-color:red"><xsl:value-of select="year"/></td>
          </tr>
        </xsl:if>
    </xsl:for-each>
    </table>
    <table border="1">
      <span>colorear los que tengan precio mayor de 10</span>
        <tr style="background-color:blue">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Artist</th>
        <th style="text-align:left;background-color:#F2D872">Year</th>
      </tr>
        <xsl:for-each select="catalog/cd">
        <tr>
            <xsl:choose>
                <xsl:when test="price &gt; 10">
                    <td bgcolor="#ff00ff">
                    <xsl:value-of select="title"/></td>
                </xsl:when>
                <xsl:otherwise>
                    <td><xsl:value-of select="title"/></td>
                </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="artist"/></td>
            <td><xsl:value-of select="year"/></td>
        </tr>
        </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>
