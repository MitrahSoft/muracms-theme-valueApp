<cfoutput>
  	<cfinclude template="inc/html_head.cfm" />
  	<cfinclude template="inc/navbar.cfm" />
  	<div class="clearfix"></div>
	<div class="well">
		<section id="contact">
			<div class="contact-info">
			    <div class="row"> 
			        <!--======= CONTACT FORM =========-->
			        <div class="col-sm-6 contact_form">
				        <h3>Contact Us</h3>
				        #$.dspObject('form' ,'Contact Us')#
			        </div>
			        <!--======= CONTACT =========-->
			        <div class="col-sm-6 contact_details">
				        <h3>Contact Info</h3>
				        <p class="margin-b-40">Hello we are comre. We are here to provide you the best offers through our coupons. Hello we are comre.</p>
				        <ul class="con-det">
				            <!--======= ADDRESS =========-->
				            <li>
				            	<h6><i class="fa fa-map-marker"></i> ADDRESS</h6>
				          		<p>#$.siteConfig('address')#</p>
				            </li>
				            <!--======= EMAIL =========-->
				            <li>
				            	<h6><i class="fa fa-envelope"></i> EMAIL</h6>
				                <cfloop list="#$.siteConfig('mailID')#" index="getOne">
			               			<a href="mailto:#getOne#">#getOne#</a>
				               </cfloop>
				            </li>
				            <!--======= PHONE =========-->
				            <li>
				            	<h6><i class="fa fa-phone"></i> OUR PHONE</h6>
				            	<cfloop list="#$.siteConfig('phoneNumber')#" index="getOne">
				              		<p>#getOne#</p>
				               </cfloop>
				            </li>
			        	</ul>
			        </div>
			    </div>
			</div>
		</section>
	</div>
    <cfinclude template="footer.cfm" />
    <cfinclude template="inc/html_foot.cfm" />
</cfoutput>

