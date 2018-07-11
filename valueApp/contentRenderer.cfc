<!---
	This file is part of Mura CMS.

	Mura CMS is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, Version 2 of the License.

	Mura CMS is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Mura CMS. If not, see <http://www.gnu.org/licenses/>.

	Linking Mura CMS statically or dynamically with other modules constitutes
	the preparation of a derivative work based on Mura CMS. Thus, the terms
	and conditions of the GNU General Public License version 2 ("GPL") cover
	the entire combined work.

	However, as a special exception, the copyright holders of Mura CMS grant
	you permission to combine Mura CMS with programs or libraries that are
	released under the GNU Lesser General Public License version 2.1.

	In addition, as a special exception, the copyright holders of Mura CMS
	grant you permission to combine Mura CMS with independent software modules
	(plugins, themes and bundles), and to distribute these plugins, themes and
	bundles without Mura CMS under the license of your choice, provided that
	you follow these specific guidelines:

	Your custom code

	• Must not alter any default objects in the Mura CMS database and
	• May not alter the default display of the Mura CMS logo within Mura CMS and
	• Must not alter any files in the following directories:

		/admin/
		/tasks/
		/config/
		/requirements/mura/
		/Application.cfc
		/index.cfm
		/MuraProxy.cfc

	You may copy and distribute Mura CMS with a plug-in, theme or bundle that
	meets the above guidelines as a combined work under the terms of GPL for
	Mura CMS, provided that you include the source code of that other code when
	and as the GNU GPL requires distribution of source code.

	For clarity, if you create a modified version of Mura CMS, you are not
	obligated to grant this special exception for your modified version; it is
	your choice whether to do so, or to make such modified version available
	under the GNU General Public License version 2 without this exception.  You
	may, if you choose, apply this exception to your own modified versions of
	Mura CMS.
--->
<cfcomponent extends="mura.cfobject">

	<cfscript>

		// GENERAL
		this.jsLib = "jquery";
		this.jsLibLoaded = true;
		this.suppressWhitespace = true;
		this.generalWrapperClass = "";

		// dsp_folder.cfm
		this.folderWrapperClass="";
		
		// pagination vars
		this.ulPaginationClass = "pagination";

		// nav and list item vars
		this.liCurrentClass = "active";
		this.aCurrentClass = "active";
		
	</cfscript>

	<cffunction name="dspTestimonialsFeed" output="yes">
		<cfargument name="feedName" type="any" default="">
		<cfargument name="SortDirection" type="any" default="">
		<cfargument name="MaxItems" type="any" default="">

    	<cfsavecontent variable="ret">
			<cfoutput>
				<section id="testiminials">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
	                            <h1 class="text-center mb-2"><i class="fa  fa-quote-left  text-success"></i></h1>
	                            <cfset feed=$.getBean('feed').loadBy(name='#arguments.feedName#').setSortDirection('#arguments.SortDirection#')>
	                            <cfset iterator=feed.getIterator()>
	                            <!--- Only display the following if there are items in the iterator --->
	                            <cfset loopCount = 1>
	                            <cfif iterator.hasNext()>
	                                <div id="testimonial-slider" class="owl-carousel">
	                                    <cfloop condition="iterator.hasNext()">
	                                        <cfset item=iterator.next()>
	                                        <cfif trim(item.getSubtype()) eq 'Testimonial' AND loopCount lte arguments.MaxItems>
	                                            <div class="testimonial">
	                                                <div class="pic">
	                                                    <img src="#item.getImageURL()#" alt="">
	                                                </div>
	                                                <div class="testimonial-profile">
	                                                    <h3 class="title"> #item.getTitle()#</h3>
	                                                    <span class="post">#item.getsummary()#</span>
	                                                </div>
	                                                <p class="description">#replace(replace(item.getbody(),"<p>",""),"</p>","")#</p>
	                                            </div>
	                                            <cfset loopCount ++>
	                                        </cfif>
	                                    </cfloop>
	                                </div>
	                            </cfif>
                            </div>
                        </div>
                    </div>
                </section>
			</cfoutput>
	    </cfsavecontent>

		<cfreturn ret>
	</cffunction>

	<cffunction name="dspOurFeatureFeed" output="yes">
		<cfargument name="feedName" default="">
		<cfargument name="sortDirection" default="">
		<cfargument name="maxItems" default="">
		<cfsavecontent variable="ret">
			<cfoutput>
				<cfset feed=$.getBean('feed').loadBy( name = '#arguments.feedName#' ).setSortDirection('#arguments.sortDirection#')>
				<cfset iterator=feed.getIterator()>
				<!--- Only display the following if there are items in the iterator --->
				<cfif iterator.hasNext()>
					<cfset loopCount = 0>
					<div class="col-sm-12 col-md-6 pt-4">
						<div class="header-right-contents">
		                  <!--- Title --->
		                    <h4 class="text-gray text-xxlarge">Features availalbe with Easy perfect free app</h4>
		                    <!--======= FEATURE =========-->
		                    <ul class="list-unstyled mt-5 feature-listing">
								<cfloop condition="iterator.hasNext()">
									<cfset item=iterator.next()>
									<cfif trim(item.getSubtype()) eq 'HomeFeature' AND loopCount lte arguments.MaxItems>
										<li>
											<span class="text-success text-large">#item.getTitle()#</span>
											<p>#item.getSummary()#</p>
										</li>
										<cfset loopCount++>
									</cfif>
								</cfloop>
							</ul>
						</div>
					</div>
				</cfif>
			</cfoutput>
		</cfsavecontent>

		<cfreturn ret>

	</cffunction>

    <cffunction name="dsphomeSlideShowsFeed" output="Yes">
		<cfargument name="feedName" type="any" default="" />
		<cfargument name="SortDirection" type="any" default="" />
		<cfargument name="maxItems" default="">
			<cfsavecontent variable="ret">
			<cfoutput>
		        <cfset feed=$.getBean('feed').loadBy(name='#arguments.feedName#').setSortDirection('#arguments.SortDirection#')>
		        <cfset iterator=feed.getIterator()>
		        <cfset isactive = true>
		        <!--- Only display the following if there are items in the iterator --->
		         <div class="col-sm-12 col-md-5">
		         	<div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
		         		<ol class="carousel-indicators">
                            <li data-target="##carouselExampleIndicators1" data-slide-to="0" class="active"></li>
                            <li data-target="##carouselExampleIndicators1" data-slide-to="1"></li>
                            <li data-target="##carouselExampleIndicators1" data-slide-to="2"></li>
                        </ol>
		         		<div class="carousel-inner">
					        <cfif iterator.hasNext()>
					        	<cfset loopCount = 0>
				                <cfloop condition="iterator.hasNext()">
				                    <cfset item=iterator.next()>
				                    <cfif trim(item.getSubtype()) eq 'HomeCarousal' AND loopCount lte arguments.MaxItems>
                        				<div class="carousel-item <cfif isactive>active</cfif>">
					                    	<img class="d-block w-100" src="#item.getImageURL()#" alt="">
					                    </div>
					                    <cfset isactive = false>
					                    <cfset loopCount++>
						           </cfif>
				                </cfloop>
					        </cfif>
		    			</div>
		        	</div>
		        </div>
			</cfoutput>
	    </cfsavecontent>

		<cfreturn ret />

	</cffunction>

	<cffunction name="dspfeatureSlideShowsFeed" output="Yes">
		<cfargument name="feedName" type="any" default="" />
		<cfargument name="SortDirection" type="any" default="" />
		<cfargument name="maxItems" default="">
		<cfsavecontent variable="ret">
			<cfoutput>
				<cfset feed=$.getBean('feed').loadBy(name='#arguments.feedName#').setSortDirection('#arguments.SortDirection#')>
		        <cfset iterator=feed.getIterator()>
		        <cfset isactive = true>
		        <!--- Only display the following if there are items in the iterator --->
		        <div class="col-sm-12 col-md-6 pt-4">
		         	<div id="carouselExampleIndicators" class="carousel slide features" data-ride="carousel">
		         		<ol class="carousel-indicators">
                            <li data-target="##carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="##carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="##carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
		         		<div class="carousel-inner">
					        <cfif iterator.hasNext()>
					        	<cfset loopCount = 0>
				                <cfloop condition="iterator.hasNext()">
				                    <cfset item=iterator.next()>
				                    <cfif trim(item.getSubtype()) eq 'featurecarousal'  AND loopCount lte arguments.MaxItems>
                        				<div class="carousel-item <cfif isactive>active</cfif>">
					                    	<img class="d-block w-100" src="#item.getImageURL()#" alt="">
					                    </div>
					                    <cfset isactive = false>
					                     <cfset loopCount++>
						           </cfif>
				                </cfloop>
					        </cfif>
		    			</div>
		        	</div>
		        </div>
    		</cfoutput>
	    </cfsavecontent>

		<cfreturn ret />

	</cffunction>

	<cffunction name="dspServiceFeed" output="Yes">
		<cfargument name="feedName" type="any" default="" />
		<cfargument name="SortDirection" type="any" default="" />
		<cfargument name="maxItems" default="">
		<cfsavecontent variable="ret">
			<cfoutput>
				<section id="services" class="bg-success text-white mt-1">
			        <div class="container">
			            <div class="row">
			                <div class="col-sm-12 text-center">
			                    <h2 class="mt-4">Clean and simple Landing page for Apps</h2>
			                    <p class="pt-2 pb-4">
			                        Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum In publishing and graphic design, lorem ipsum is a a document or visual presentation.generator.
			                    </p>
			                </div>
			            </div>
						<cfset feed=$.getBean('feed').loadBy(name='#arguments.feedName#').setSortDirection('#arguments.SortDirection#')>
				        <cfset iterator=feed.getIterator()>
				        <cfset loopCount =1 >
				        <!--- Only display the following if there are items in the iterator --->
				        <div class="row text-center pt-4">
					        <cfif iterator.hasNext()>
				                <cfloop condition="iterator.hasNext()">
				                    <cfset item=iterator.next()>
				                    <cfif trim(item.getSubtype()) eq 'service' and loopCount lte arguments.maxItems>
				        	 			<div class="col-md-4 col-sm-6 mb-5">
			                				<i class="#item.getserviceIcon()# fa-5x mb-4"></i>
						                    <h3 class="pb-2">#item.gettitle()#</h3>
			                				<p>#item.getsummary()#</p>
				        				</div>
				        				<cfset loopCount ++>
							        </cfif>
				                </cfloop>
					        </cfif>
				        </div>
				    </div>
				</section>
    		</cfoutput>
	    </cfsavecontent>

		<cfreturn ret />

	</cffunction>


	<cffunction name="dspPlanFeed" output="Yes">
		<cfargument name="feedName" type="any" default="" />
		<cfargument name="SortDirection" type="any" default="" />
		<cfsavecontent variable="ret">
			<cfoutput>
				<cfset feed=$.getBean('feed').loadBy(name='#arguments.feedName#')>
		        <cfset iterator=feed.getIterator()>
				<div class="colorblock block priceblock">
					<div id="price" class="block-container">
						<h2 class="title plans_head_title">#$.content('title')#</h2>
						<div class="description">#$.content('summary')#</div>
						<div class="pricetable">
							<cfset loopcount = 1 >
							<cfif iterator.hasNext()>
				                <cfloop condition="iterator.hasNext()">
				                    <cfset item=iterator.next()>
				                    <cfif trim(item.getSubtype()) eq 'Plan'>
			                    		<div class="priceitem" >
											<div class="wrapper  <cfif loopcount mod 2 is 0 >Priceplan</cfif>">
												<h3 class="title">#item.gettitle()#</h3>
												<div class="services-list">
													<div class="service include">
														<i class="fa #item.geticon1()#"></i>
														<span>#item.getSchema1()#</span>
													</div>
													<div class="service include">
														<i class="fa #item.geticon2()#"></i>
														<span>#item.getSchema2()#</span>
													</div>
													<div class="service exclude">
														<i class="fa #item.geticon3()#"></i>
														<span>#item.getSchema3()#</span>
													</div>
													<div class="service exclude">
														<i class="fa #item.geticon4()#"></i>
														<span>#item.getSchema4()#</span>
													</div>
												</div>
												<div class="cost">
													<div class="container">
														<h1>$#item.getAmount()#</h1>
														<span class="line">/month</span>
													</div>
												</div>
												<a href="#item.getBuy_link()#" class="button">Buy now</a>
											</div>
										</div>
										<cfset loopCount ++>
							        </cfif>
				                </cfloop>
				        	</cfif>
						</div>
					</div>
				</div>
    		</cfoutput>
	    </cfsavecontent>

		<cfreturn ret />

	</cffunction>


	<cffunction name="dspTeamFeed" output="Yes">
		<cfargument name="feedName" type="any" default="" />
		<cfargument name="sortdirection" type="any" default="" />
		<cfargument name="maxItems" default="">
		<cfsavecontent variable="ret">
			<cfoutput>
				<section data-customizer-section-id="portum_repeatable_section" data-section="7">
			        <div class="ewf-section__content">
			            <div class="container">
			                <div class="row">
			                    <div class="col-md-12">
			                        <div class="headline" style="text-Align:center !important;color:grey;">
			                            <h2 style="font-weight:bold">MEET OUR TEAM</h2>
			                            <h3>Meet the people behind the scene</h3>
			                        </div>
			                    </div>
			                 	<div class="col-md-12">
									<cfset feed=$.getBean('feed').loadBy(name='#arguments.feedName#')>
							        <cfset iterator=feed.getIterator()>
							        <!--- Only display the following if there are items in the iterator --->
							        <cfif iterator.hasNext()>
							        <cfset loopCount = 0>
						                <cfloop condition="iterator.hasNext()">
						                    <cfset item=iterator.next()>
						                    <cfif trim(item.getSubtype()) eq 'team' and loopCount lt arguments.maxItems>
						       					<div class="team-members-item">
							                    	<div class="portrait">
						                                <img src="#item.getImageURL()#" alt="" />
						                                <div class="overlay"></div>
						                            </div>
						                            <div class="details" style="color:black">
						                                <h5>#item.gettitle()#</h5>
						                                <p>#item.getsummary()#</p>
						                            </div>
						                            <ul class="social-team">
						                                <li>
						                                    <a href="#item.getfacebook()#">
						                                    <i class="fa fa-facebook" aria-hidden="true"></i> </a>
						                                </li>
						                                <li>
						                                    <a href="#item.gettwitter()#">
						                                    <i class="fa fa-twitter" aria-hidden="true"></i> </a>
						                                </li>
						                                <li>
						                                    <a href="#item.getpinterest()#">
						                                    <i class="fa fa-pinterest" aria-hidden="true"></i> </a>
						                                </li>
						                                <li>
						                                    <a href="#item.getlinkedin()#">
						                                    <i class="fa fa-linkedin" aria-hidden="true"></i> </a>
						                                </li>
						                            </ul>
							        			</div>
						        				<cfset loopCount ++ >
					        				<cfelseif (trim(item.getSubtype()) eq 'team')>
				        						<div class="team-members-item right">
						                            <div class="details" style="color:black">
						                                <h5>#item.gettitle()#</h5>
						                                <p>#item.getsummary()#</p>
						                            </div>
						        					<div class="portrait">
						                                <img src="#item.getImageURL()#" alt="" />
						                                <div class="overlay"></div>
						                            </div>
							        	 			<ul class="social-team">
						                                <li>
						                                    <a href="#item.getfacebook()#">
						                                    <i class="fa fa-facebook" aria-hidden="true"></i> </a>
						                                </li>
						                                <li>
						                                    <a href="#item.gettwitter()#">
						                                    <i class="fa fa-twitter" aria-hidden="true"></i> </a>
						                                </li>
						                                <li>
						                                    <a href="#item.getpinterest()#">
						                                    <i class="fa fa-pinterest" aria-hidden="true"></i> </a>
						                                </li>
						                                <li>
						                                    <a href="#item.getlinkedin()#">
						                                    <i class="fa fa-linkedin" aria-hidden="true"></i> </a>
						                                </li>
						                            </ul>
							        			</div>
					        					<cfif loopCount gt arguments.maxItems>
							        				<cfset loopCount = 0 >
								        		<cfelse>
							        				<cfset loopCount ++ >
					        					</cfif>
										   	</cfif>
						                </cfloop>
							        </cfif>
							    </div>
							</div>
						</div>
				    </div>
				</section>
    		</cfoutput>
	    </cfsavecontent>

		<cfreturn ret />

	</cffunction>

	<cffunction name="dspPortfolioFeed" output="Yes">
		<cfargument name="feedName" type="any" default=" "/>
		<cfargument name="sortdirection" type="any" default="" />
		<cfargument name="maxItems" default="">
		<cfsavecontent variable="ret">
			<cfoutput>
				<section class="portfolio" id="portfolio">
					<div class="container">
						<h2 class="text-center mt-4">Portfolio</h2><br>
						<cfset feed=$.getBean('feed').loadBy(name='#arguments.feedName#').setSortDirection('#arguments.sortdirection#')>
				        <cfset iterator=feed.getIterator()>
				        <cfset portfolioModal = 1>
				        <!--- Only display the following if there are items in the iterator --->
				        <div class="row">
					        <cfif iterator.hasNext()>
				                <cfloop condition="iterator.hasNext()">
				                    <cfset item=iterator.next()>
				                    <cfif trim(item.getSubtype()) eq 'Portfolio'>
				        	 			<div class="col-md-6 col-lg-4">
											<a class="portfolio-item d-block mx-auto" href="##portfolio-modal-#portfolioModal#">
												<div class="portfolio-item-caption d-flex position-absolute h-100 w-100 ">
													<div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
														<i class="fa fa-search-plus fa-3x"></i>
													</div>
												</div>
												<img class="img-fluid" src="#item.getimageurl()#" alt="">
											</a>
				        				</div>
				        				<div class="portfolio-modal mfp-hide" id="portfolio-modal-#portfolioModal#">
											<div class="portfolio-modal-dialog bg-white">
												<a class="close-button d-none d-md-block portfolio-modal-dismiss" href="##">
													<i class="fa fa-3x fa-times"></i>
												</a>
												<div class="container text-center">
													<div class="row">
														<div class="col-lg-8 mx-auto">
															<h2 class="text-secondary text-uppercase mb-0">#item.gettitle()#</h2>
															<hr class="star-dark mb-5">
															<img class="img-fluid mb-5" src="#item.getimageurl()#" alt="">
															<p class="mb-5">#item.getSummary()#</p>
															<a class="btn btn-success btn-lg rounded-pill portfolio-modal-dismiss" href="##">
																<i class="fa fa-close"></i>
																Close Project</a>
														</div>
													</div>
												</div>
											</div>
										</div>
				        				<cfset portfolioModal ++>
							        </cfif>
				                </cfloop>
					        </cfif>
				        </div>
				    </div>
				</section>
    		</cfoutput>
	    </cfsavecontent>

		<cfreturn ret />

	</cffunction>

	<cffunction name="dspMyFeatureFeed" output="yes">
		<cfargument name="feedName" default="">
		<cfargument name="sortDirection" default="">
		<cfargument name="maxItems" default="">
		<cfsavecontent variable="ret">
			<cfoutput>
				<cfset feed=$.getBean('feed').loadBy( name = '#arguments.feedName#' )>
				<cfset iterator=feed.getIterator()>
				<!--- Only display the following if there are items in the iterator --->
				<cfif iterator.hasNext()>
					<div class="col-lg-8 col-md-7">
						<div class="row">
							<cfset loopCount = 0>
							<cfloop condition="iterator.hasNext()">
								<cfset item=iterator.next()>
								<cfif trim(item.getSubtype()) eq 'Feature'>
									<div class="col-lg-6 col-md-6 box wow fadeInRight" <cfif
									val(loopCount)> data-wow-delay="#loopCount#s"</cfif>>
										<div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
										<h4 class="feature_title"><a href="">#item.gettitle()#</a></h4>
										<div class="feature_descritpion">#item.getSummary()#</div>
									</div>
									<cfset loopCount = loopCount +0.1>
								</cfif>
							</cfloop>
						</div>
					</div>
				</cfif>
			</cfoutput>
		</cfsavecontent>

		<cfreturn ret>

	</cffunction>

</cfcomponent>
