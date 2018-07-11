<cfoutput>
	<!doctype html>
	<html lang="en">
		<head>
		    <meta charset="UTF-8">
		    <title>ValueApp</title>
		    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		</head>
		<a href="#$.siteConfig('siteFacebook')#">
	  	<body id="top-page" class="index">
	    	<div id="navbarouter" class="navbarouter nopadding bg-success">
		        <nav id="navbarprimary" class="navbar navbar-expand-md navbarprimary nopadding">
		            <div class="container nopadding">
		                <!-- for responsive layout -->
		                <div class="navbar-header">
		                    <div class="icons-top-responsive">
		                        <span class="sf_icons_ctmzr">
		                            <a title="" target="_blank" href="#$.siteConfig("facebook")#" data-original-title="Facebook">
		                                <span class="fa fa-facebook bgtoph-icon-clr" aria-hidden="true"></span>
		                            </a>
		                            <a title="" target="_blank" href="#$.siteConfig("Twitter")#" data-original-title="Twitter">
		                                <span class="fa fa-twitter bgtoph-icon-clr" aria-hidden="true"></span>
		                            </a>
		                            <a title="" target="_blank" href="#$.siteConfig("YouTube")#" data-original-title="YouTube">
		                                <span class="fa fa-youtube bgtoph-icon-clr" aria-hidden="true"></span>
		                            </a>
		                        </span>
		                    </div>

		                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="##collapse-navbarprimary">
		                        <span class="navbar-toggler-icon"></span>
		                    </button>

		                </div>
		                <div id="collapse-navbarprimary" class="collapse navbar-collapse">
		                    <ul id="primary-menu" class="nav navbar-nav primary-menu">
		                        <li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item current_page_item">
				                    <cf_CacheOMatic key="dspPrimaryNav">
												<!---
												For information on dspPrimaryNav(), visit:
												http://docs.getmura.com/v6/front-end/template-variables/document-body/
												--->
												#$.dspPrimaryNav(
												viewDepth=1
												, id='navPrimary'
												, class='nav navbar-nav'
												, displayHome='always'
												, closeFolders=false
												, showCurrentChildrenOnly=false
												, liHasKidsClass='dropdown'
												, liHasKidsAttributes=''
												, liCurrentClass='active_menu'
												, liCurrentAttributes=''
												, liHasKidsNestedClass='dropdown-submenu'
												, aHasKidsClass=''
												, aCurrentClass=''
												, aCurrentAttributes=''
												, ulNestedClass='dropdown-menu'
												, ulNestedAttributes=''
												, aNotCurrentClass=''
												, siteid=$.event('siteid')
												)#
									</cf_CacheOMatic>
		                        </li>
							</ul>
		                </div>
		                <div class="icons-top">
		                    <span class="sf_icons_ctmzr">
		                        <a title="" target="_blank" href="#$.siteConfig("facebook")#" data-original-title="Facebook" class="icons">
		                            <span class="fa fa-facebook bgtoph-icon-clr" aria-hidden="true"></span>
		                        </a>
		                        <a title="" target="_blank" href="#$.siteConfig("Twitter")#" data-original-title="Twitter" class="icons">
		                            <span class="fa fa-twitter bgtoph-icon-clr" aria-hidden="true"></span>
		                        </a>
		                        <a title="" target="_blank" href="#$.siteConfig("YouTube")#" data-original-title="YouTube" class="icons">
		                            <span class="fa fa-youtube bgtoph-icon-clr" aria-hidden="true"></span>
		                        </a>
		                    </span>
		                </div>
		            </div>
		        </nav>
    		</div>
		</body>
	</html>
</cfoutput>
