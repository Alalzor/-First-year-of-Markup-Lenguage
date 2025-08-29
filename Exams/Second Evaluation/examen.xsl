<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
<xsl:template match="/">
    <html>
        <header>
            <style>
                div{
                    width: 500px;
                    height: 200px;
                    border: 1px solid black;
                    margin-top: 10px;
                    margin-left: 10px;
                }
                h1{
                    margin-top: 20px;
                    background-color: cadetblue;
                    width: 100%;
                    text-align: center;
                    color: white;
                }
                table{
                    justify-content: center;
                    margin-left: 20px;
            
                }
                table tr th{
                    background-color: cadetblue;
                    text-align: center;
                    color: white;
                }
                table td {
                    text-align: center;
                }
                body{
                    margin: 0px;
                    padding: 0px;
                }

            </style>
        </header>
        <body>
        <div>
        <h1> CFGS Informatica</h1>
        <table border="1">
            <tr>
                <th>Horario</th>
                <th>Nombre</th>
                <th>Nivel</th>
            </tr>
        <!-- No se ha podido quitar la 1 row intentando machear el "@horario"-->
            <xsl:for-each select="/ies/ciclos/ciclo">
            <tr>
                <td>
                    <xsl:value-of select="@horario">
                    </xsl:value-of>
        <!-- He intentado un sort, un if o name ="Diurno" pero no logro llegar al valor del atributo-->
                </td>
                <td>
                    <xsl:value-of select="nombre">
                    </xsl:value-of>
                </td>
                <td>
                    <xsl:value-of select="grado">
                    </xsl:value-of>
                </td>
                </tr>
            </xsl:for-each>
       
        </table>
        </div>
    </body>
    </html>
</xsl:template>

    

</xsl:stylesheet>