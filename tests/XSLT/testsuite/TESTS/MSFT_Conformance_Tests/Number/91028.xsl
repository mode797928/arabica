<!-- XSLT - Numbering - Additional counting tests - level = "single" & "multiple" & "any"  - count - from -->
<!-- Created : Khalil Jabrane -->
<!-- Date: 04/19/2000 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:my="http://my.com">
<xsl:output encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>

	<xsl:template match="/">

        <xsl:text>&#13;&#10;&#13;&#10;Counting Tests&#13;&#10;</xsl:text>
        <xsl:apply-templates select="//title | //my:title" mode="counting-tests"/>

	</xsl:template>

    <!-- Test level, count, from attributes -->
    <xsl:template match="title | my:title" mode="counting-tests">

        <xsl:text>&#13;&#10;</xsl:text>
        <xsl:number level="single" count="book | my:book | magazine | my:magazine"/><xsl:text>, </xsl:text>
        <xsl:number level="single" count="title | my:title" from="my:book"/><xsl:text>, </xsl:text>
        <xsl:number level="single"/><xsl:text>, </xsl:text>
        <xsl:number level="single" count="unknown"/><xsl:text>, </xsl:text>

        <xsl:number level="multiple" count="book | my:book | magazine | my:magazine | title | bookstore | /"/><xsl:text>, </xsl:text>
        <xsl:number level="multiple" count="book | my:book | magazine | my:magazine | title | bookstore | /" from="bookstore"/><xsl:text>, </xsl:text>
        <xsl:number level="multiple" count="book | my:book | magazine | my:magazine | title | bookstore | /" from="unknown"/><xsl:text>, </xsl:text>

        <xsl:number level="any" count="*"/><xsl:text>, </xsl:text>
        <xsl:number level="any" count="*" from="book"/><xsl:text>, </xsl:text>
        <xsl:number level="any" count="*" from="unknown"/><xsl:text>, </xsl:text>
        <xsl:number level="any" count="unknown" from="*"/><xsl:text>, </xsl:text>

    </xsl:template>

</xsl:stylesheet>
	
 
 