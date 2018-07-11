<cfoutput>
  	<cfinclude template="inc/html_head.cfm" />
  	<cfinclude template="inc/navbar.cfm" />
  		<div class="clearfix"></div>
    	#$.dspTeamFeed(feedname = 'teamFeed',sortdirection ='asc',maxItems=2)#
    <cfinclude template="footer.cfm" />
    <cfinclude template="inc/html_foot.cfm" />
</cfoutput>

