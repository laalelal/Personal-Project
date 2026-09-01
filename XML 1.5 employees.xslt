<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:employee="http://example.com/employee">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <PayrollData xmlns:employee="http://example.com/employee">

            <xsl:apply-templates select="employees/employee:employee"/>

        </PayrollData>
    </xsl:template>


    <xsl:template match="employee:employee">

        <EmployeeRecord>

            <EmpID>
                <xsl:value-of select="@id"/>
            </EmpID>

            <LastName>
                <xsl:value-of select="employee:personalInfo/employee:lastName"/>
            </LastName>

            <FirstName>
                <xsl:value-of select="employee:personalInfo/employee:firstName"/>
            </FirstName>

            <Dept>
                <xsl:value-of select="employee:employment/employee:department"/>
            </Dept>

            <AnnualSalary>
                <xsl:value-of select="employee:employment/employee:salary"/>
            </AnnualSalary>

            <Currency>
                <xsl:value-of select="employee:employment/employee:salary/@currency"/>
            </Currency>

        </EmployeeRecord>

    </xsl:template>

</xsl:stylesheet>
