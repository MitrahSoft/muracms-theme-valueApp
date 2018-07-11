<cfoutput>
	<cfinclude template="inc/html_head.cfm" />
	<body>
		<cfinclude template="inc/navbar.cfm" />
		<div class="clearfix"></div>
	  	<section id="header">
	        <div class="container">
	            <div class="row">
	            	#$.dsphomeSlideShowsFeed(feedname = 'HomescreenFeed',sortDirection = 'asc',maxItems = 3)#
	                <div class="col-sm-12 col-md-7 pt-4 text-sm-center text-md-left text-center">
	                    <div class="header-right-contents pt-5">
	                        <img class="img-fluid mb-5" src="#m.content().getImageURL()#" alt="Value App" />
	                        <h1 class="text-large pt-1 mb-5">#$.content('summary')#</h1>
	                        <p>
	                            <button type="button" class="btn btn-outline-success btn-lg px-5 text-uppercase mr-md-4 mr-sm-0 btn-rounded strong mb-3">Download</button>
	                            <button type="button" class="btn btn-outline-secondary btn-lg px-5 text-uppercase btn-rounded strong mb-3">Learn More</button>
	                        </p>
	                        <div class="icons">
	                            <a href="##!"><i class="fa fa-apple fa-2x text-success mr-5"></i></a>
	                            <a href="##!"><i class="fa fa-android fa-2x text-success mr-5"></i></a>
	                            <a href="##!"><i class="fa fa-windows fa-2x text-success"></i></a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
    	</section>
	  	#$.dspServiceFeed(feedname = 'HomescreenFeed',sortDirection = 'asc',maxItems = 3)#
	  	<section id="features" class="bg-lgray">
			<div class="container">
				<div class="row">
				    #$.dspfeatureSlideShowsFeed(feedname = 'HomescreenFeed',sortDirection = 'asc',maxItems=3)#
					#$.dspOurFeatureFeed(feedname = 'HomescreenFeed',sortDirection = 'asc',maxItems=4)#
				</div>
			</div>
		</section>
		<div class="desgned-by text-center p-5 bg-success text-white">
			<a class="btn btn-danger btn-lg text-white" href="https://www.fiverr.com/sunlimetech/design-and-fix-your-bootstrap-4-issues" target="_blank" role="button">Buy now in $10</a>
		</div>
		#$.dspTestimonialsFeed(feedname = 'HomescreenFeed',sortDirection = 'asc', maxItems=3)#
		<section id="sunscription" class="bg-lgray">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 text-center">
	                    <i class="fa fa-envelope fa-4x text-green  mb-3"></i>
	                    <h3 class="text-gray">Get Notified of any updates!</h3>
	                    <p>Subscribe to our newsletter to be notified about new version release</p>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-lg-3"></div>
	                <div class="col-lg-6">
	                    <div class="input-group input-group-lg">
	                        <input type="email" class="form-control" placeholder="mitrahsoft@gmail.com" aria-label="Search for...">
	                        <span class="input-group-btn">
	                            <button class="btn btn-success Subscribe" type="button">Subscribe</button>
	                        </span>
	                    </div>
	                </div>
	                <div class="col-lg-3"></div>
	            </div>
	        </div>
    	</section>
	</body>
	<cfinclude template="footer.cfm" />
	<cfinclude template="inc/html_foot.cfm" />
</cfoutput>
