<?xml version="1.0" encoding="utf-8"?>

<!-- this file: LendingRecallEmailLetter.xsl -->
<!-- Historique de mise à jour Campus Condorcet
	 2021-04-22 JCS : adaptation pour le 3e confinement non-confiné (période COVID-19)
	 2021-04-28 JCS : réactivation du footer
	 2021-07-02 JCS : suppression du lien evento Covid
	 2022-12-08 JCS : renommage GED en Humathèque
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:include href="header.xsl" />
<xsl:include href="senderReceiver.xsl" />
<xsl:include href="mailReason.xsl" />
<xsl:include href="footer.xsl" />
<xsl:include href="style.xsl" />
<xsl:include href="recordTitle.xsl" />
<xsl:template match="/">
	<html>
		<xsl:if test="notification_data/languages/string">
			<xsl:attribute name="lang">
				<xsl:value-of select="notification_data/languages/string"/>
			</xsl:attribute>
		</xsl:if>

		<head>
			<title>
				<xsl:value-of select="notification_data/general_data/subject"/>
			</title>

			<xsl:call-template name="generalStyle" />
		</head>
		<body>
			<xsl:attribute name="style">
				<xsl:call-template name="bodyStyleCss" />
				<!-- style.xsl -->
			</xsl:attribute>
			<xsl:call-template name="head" />
			<!-- header.xsl -->

		    <table role='presentation'  cellspacing="0" cellpadding="5" border="0">
				<tr>
					<td>
						@@header@@
					</td>
				</tr>
			</table>

			<div class="messageArea">
				<div class="messageBody">
					<table role='presentation'  cellspacing="0" cellpadding="5" border="0">

						<tr>
							<td>
								@@recall_message@@
							</td>
						</tr>
					</table>

					<table cellpadding="5" class="listing">
						<xsl:attribute name="style">
							<xsl:call-template name="mainTableStyleCss" /> <!-- style.xsl -->
						</xsl:attribute>
						<tr>
							<th>@@title@@</th>
							<th>@@author@@</th>
							<th>@@old_due_date@@</th>
							<th>@@due_date@@</th>
						</tr>

						<tr>
							<td><xsl:value-of select="notification_data/request/display/title"/></td>
							<td><xsl:value-of select="notification_data/request/display/author"/></td>
							<td><xsl:value-of select="notification_data/original_due_date"/></td>
							<td><xsl:value-of select="notification_data/request/due_date"/></td>
						</tr>


            		</table>
                    <br/>
					<!-- 
            		<table role='presentation' >

					    <tr><strong>
							<td>@@request_id@@</td>
                            <td>
								<xsl:value-of select="notification_data/request/external_request_id" />
							</td>
                            </strong>
						</tr>



					</table>
                    <br/>
					-->


					<table role='presentation' >

						<tr>
							<td>@@signature@@</td>
						</tr>
						<tr>
							<td>Humathèque Condorcet</td>
						</tr>
						<!--
						<tr>
							<td>
								<xsl:value-of select="notification_data/library/name" />
							</td>
						</tr>
						<xsl:if test="notification_data/library/address/line1 !=''">
							<tr>
								<td>
									<xsl:value-of select="notification_data/library/address/line1" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="notification_data/library/address/line2 !=''">
							<tr>
								<td>
									<xsl:value-of select="notification_data/library/address/line2" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="notification_data/library/address/line3 !=''">
							<tr>
								<td>
									<xsl:value-of select="notification_data/library/address/line3" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="notification_data/library/address/line4 !=''">
							<tr>
								<td>
									<xsl:value-of select="notification_data/library/address/line4" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="notification_data/library/address/line5 !=''">
							<tr>
								<td>
									<xsl:value-of select="notification_data/library/address/line5" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="notification_data/library/address/city !=''">
							<tr>
								<td>
									<xsl:value-of select="notification_data/library/address/city" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="notification_data/library/address/country !=''">
							<tr>
								<td>
									<xsl:value-of select="notification_data/library/address/country" />
								</td>
							</tr>

						</xsl:if>
						-->
					</table>
				</div>
			</div>
			
			<xsl:call-template name="lastFooter" />
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
