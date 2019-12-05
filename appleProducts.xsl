<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">	
	<table id="DeviceTable" border="1" class="indent">
		<tr>
			<th>Type</th>
            <th>Size</th>
            <th>Storage</th>
			<th>Colour</th>
			<th>Price</th>
			
		</tr>

		<xsl:for-each select="/appleProducts/product">

		<tr>
			 <td colspan="5" align="center">
				
           		 <xsl:value-of select="@name" />
           </td>		
		</tr>

			<xsl:for-each select="device">
		<tr id="{position()}">

			<td><xsl:value-of select="type" /></td>
            <td><xsl:value-of select="size" /></td>
            <td><xsl:value-of select="storage" /></td>
			<td><xsl:value-of select="colour" /></td>
			<td><xsl:value-of select="price" /></td>

			<td align="center">
                <input name="item0" type="checkbox" />
            </td>
		</tr>	
			</xsl:for-each>
		</xsl:for-each>
	</table>
</xsl:template>
</xsl:stylesheet>