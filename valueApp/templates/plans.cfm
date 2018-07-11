<cfoutput>
	<cfinclude template="inc/html_head.cfm" />
	<cfinclude template="inc/navbar.cfm" />
	<body>
		#$.dspPlanFeed(feedname = 'planFeed',sortDirection='asc')#
	</body>
    <cfinclude template="footer.cfm" />
    <cfinclude template="inc/html_foot.cfm" />
</cfoutput>

