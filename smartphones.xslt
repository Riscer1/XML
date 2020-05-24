<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">

<html>
<head>
<meta charset="utf-8"/>
<title>Smartfony Xiaomi</title>
<link rel="stylesheet" href="smartphones.css" />
</head>

<body>
	<h2>Xiaomi Smartphones</h2>
	<table>
		<tr><th>Name:</th>
		<th>Display:</th>
		<th>Processor</th>
		<th>RAM</th>
		<th>Camera</th>
		<th>Photo</th>
	</tr>
	<xsl:for-each select="smartphones/smartphone">
		<tr>
	<xsl:choose>
	<xsl:when test="@type='Mi'">
	
	<td bgcolor="red"><xsl:value-of select="name"/></td>
	<td bgcolor="red"><xsl:value-of select="display"/></td>
	<td bgcolor="red"><xsl:value-of select="processor"/></td>
	<td bgcolor="red"><xsl:value-of select="RAM"/></td>
	<td bgcolor="red"><xsl:value-of select="camera"/></td>
	<td bgcolor="red"><img><xsl:attribute name="src">
	<xsl:value-of select="photo"/>
	</xsl:attribute></img></td>
	
	</xsl:when>

	<xsl:when test="@type='MiNote'">
	 
	<td bgcolor="green"><xsl:value-of select="name"/></td>
	<td bgcolor="green"><xsl:value-of select="display"/></td>
	<td bgcolor="green"><xsl:value-of select="processor"/></td>
	<td bgcolor="green"><xsl:value-of select="RAM"/></td>
	<td bgcolor="green"><xsl:value-of select="camera"/></td>
	<td bgcolor="green"><img><xsl:attribute name="src">
	<xsl:value-of select="photo"/>
	</xsl:attribute></img></td>
	
	</xsl:when>
	<xsl:otherwise>
	
	<td bgcolor="blue"><xsl:value-of select="name"/></td>
	<td bgcolor="blue"><xsl:value-of select="display"/></td>
	<td bgcolor="blue"><xsl:value-of select="processor"/></td>
	<td bgcolor="blue"><xsl:value-of select="RAM"/></td>
	<td bgcolor="blue"><xsl:value-of select="camera"/></td>
	<td bgcolor="blue"><img><xsl:attribute name="src">
	<xsl:value-of select="photo"/>
	</xsl:attribute></img></td>
	
	</xsl:otherwise>

	</xsl:choose>
</tr>
	</xsl:for-each>
</table>
	
</body>
</html>

</xsl:template>
</xsl:stylesheet>