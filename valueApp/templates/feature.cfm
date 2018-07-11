<cfoutput>
  	<cfinclude template="inc/html_head.cfm" />
	<cfinclude template="inc/navbar.cfm" />
	<div class="clearfix"></div>
	<section id="myfeatures">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-4" id="productHeader">
					<div class="section-header wow fadeIn" data-wow-duration="1s">
						<h3 class="section-title">#$.content('title')#</h3>
						<span class="section-divider"></span>
					</div>
				</div>
				<div class="col-lg-4 col-md-5 features-img">
					<img src="#$.content().getimageurl()#" alt="" class="wow fadeInLeft">
				</div>
			 	#$.dspMyFeatureFeed(feedname = 'featureFeed',sortDirection='asc')#
			</div>
		</div>
	</section>
    <cfinclude template="footer.cfm" />
    <cfinclude template="inc/html_foot.cfm" />
</cfoutput>