<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>MathJAX XSL by Kazim Gadjiev</title>
                <script>
                    window.MathJax = {
                        MathML: {
                            extensions: ["mml3.js", "content-mathml.js"]
                        }
                    };
                </script>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=MML_HTMLorMML"></script>
            </head>
            <body>
                <math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
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

    <xsl:template match="�������">
        <munderover>
            <xsl:apply-templates/>
        </munderover>
    </xsl:template>

    <xsl:template match="���">
        <msub>
            <xsl:apply-templates/>
        </msub>
    </xsl:template>

    <xsl:template match="����">
        <msup>
            <xsl:apply-templates/>
        </msup>
    </xsl:template>

    <xsl:template match="�������">
        <mi><xsl:value-of select="."/></mi>
    </xsl:template>

    <xsl:template match="��������">
        <mo><xsl:value-of select="."/></mo>
    </xsl:template>

    <xsl:template match="�����">
        <mn><xsl:value-of select="."/></mn>
    </xsl:template>
</xsl:stylesheet>