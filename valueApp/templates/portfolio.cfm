<cfoutput>
    <cfinclude template="inc/html_head.cfm" />
    <cfinclude template="inc/navbar.cfm" />
    <div class="clearfix"></div>
        #$.dspPortfolioFeed(feedname = 'PortfolioFeed',sortDirection = 'asc')#
    <cfinclude template="footer.cfm" />
    <cfinclude template="inc/html_foot.cfm" />
</cfoutput>

