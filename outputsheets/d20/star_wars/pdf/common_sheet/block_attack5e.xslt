<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:str="http://xsltsl.sourceforge.net/string.html"
	xmlns:xalan="http://xml.apache.org/xalan"
	>

	<xsl:import href="../../../../xsltsl-1.1/stdlib.xsl"/>
	<xsl:import href="../inc_pagedimensions.xslt"/>

	<!--
====================================
====================================
	TEMPLATE - ATTACK TABLE
====================================
====================================-->
	<!-- Begin Conditional Combat Modifiers -->
	<xsl:template match="attack" mode="conditional">
		<fo:table table-layout="fixed" space-before="2mm">
			<fo:table-column>
				<xsl:attribute name="column-width"><xsl:value-of select="0.55 * $pagePrintableWidth -1" />mm</xsl:attribute>
			</fo:table-column>
			<fo:table-body>
				<xsl:call-template name="attrib">
					<xsl:with-param name="attribute" select="'border'"/>
				</xsl:call-template>
						<fo:table-row>
											<xsl:message>Test</xsl:message>

							<fo:table-cell>
							<xsl:if test="count(conditional_modifiers/savebonus) &gt; 0">
								<fo:block text-align="center" font-size="8pt" font-weight="bold">Conditional Save Modifiers:</fo:block>	
							</xsl:if>
								<xsl:for-each select="conditional_modifiers/savebonus">
									<fo:block font-size="8pt" space-before.optimum="1pt"><xsl:value-of select="description"/></fo:block>
								</xsl:for-each>
							
							<xsl:if test="count(conditional_modifiers/combatbonus) &gt; 0">
								<fo:block text-align="center" font-size="8pt" font-weight="bold">Conditional Combat Modifiers:</fo:block>	
							</xsl:if>
								<xsl:for-each select="conditional_modifiers/combatbonus">
									<fo:block font-size="8pt" space-before.optimum="1pt"><xsl:value-of select="description"/></fo:block>
								</xsl:for-each>
								
							</fo:table-cell>
						</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
<!-- End Conditional Combat Modifiers -->



</xsl:stylesheet>