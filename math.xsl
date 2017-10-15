<xsl:stylesheet version = '1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/"> 
 <html>
        <head>
          <script src='https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML'/>
        </head>
        <body>
          <math>
            <xsl:apply-templates/>
          </math>
        </body>
    </html> 
</xsl:template> 
<xsl:template match="������">
    <mrow>
      <xsl:apply-templates/>
    </mrow>
  </xsl:template>
<xsl:template match="�������">
    <mi>
      <xsl:value-of select="."/>
    </mi>
  </xsl:template>

  <xsl:template match="��������">
    <mo>
      <xsl:value-of select="."/>
    </mo>
  </xsl:template>

  <xsl:template match="������">
    <msqrt>
      <xsl:apply-templates/>
    </msqrt>
  </xsl:template>

  <xsl:template match="�����">
    <mfrac>
      <xsl:apply-templates/>
    </mfrac>
  </xsl:template>

  <xsl:template match="�����">
    <mn>
      <xsl:value-of select="."/>
    </mn>
  </xsl:template>

  <xsl:template match="�������">
    <msubsup>
      <xsl:apply-templates/>
    </msubsup>
  </xsl:template>

  <xsl:template match="����">
    <msup>
      <xsl:apply-templates/>
    </msup>
  </xsl:template>

  <xsl:template match="���">
    <msub>
      <xsl:apply-templates/>
    </msub>
  </xsl:template>
</xsl:stylesheet>