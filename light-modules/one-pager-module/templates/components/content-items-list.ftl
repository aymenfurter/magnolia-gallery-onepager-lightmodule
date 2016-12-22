<div class="component-section" id="${content.@uuid}">
    <div class="container">
        <div class="gallery" id="Work">
                <div class="portfolio-main">
                    <div class="port-folio-top">
                        <h3>GALLERY</h3>
                        <h4>A couple of hand picked impressions of my favorite photos, 2016.</h4>
                    </div>
                    <div class="port-folio-bottom">
                            <div id="portfoliolist">

                                [#if content.galleryelementsFolderRef??]
                                    [#assign galleryFolder = cmsfn.contentById(content.galleryelementsFolderRef, "galleryelements")]                
                                    [#if galleryFolder??]
                                        [#assign galleryList = cmsfn.children(galleryFolder, "mgnl:galleryelement")]
                                        [#if galleryList?has_content]
                                            [#list galleryList as galleryentry]                                            
                                                [#assign asset = damfn.getAsset(galleryentry.image!"") /]
                                                [#if asset??]
                                                    [#assign galeryTitle = galleryentry.title!asset.title!asset.name /]
                                                     <div class="col-md-3 portfolio-wrapper">        
                                                        [#if galleryentry.image?has_content]
                                                            [#assign imgRef = damfn.getAssetLink(galleryentry.image, "large")!]
                                                            [#if imgRef?has_content]
                                                                <a href="${imgRef}" class="b-link-stripe b-animate-go  swipebox">
                                                                <img src="${imgRef}" alt=""><div class="b-wrapper">
                                                            [/#if]
                                                        [/#if]                                                
                                                         <h2 class="b-animate b-from-left    b-delay03"><img src="${ctx.contextPath}/.resources/one-pager-module/webresources/images/plus.png" alt=""/></h2>
                                                            </div></a>
                                                    </div>  
                                                [/#if]
                                            [/#list]
                                        [/#if]
                                    [/#if]
                                [/#if]                                
                            <div class="clearfix"> </div>
                    </div>
                  <div class="clearfix"> </div>       
                  <span class="port-line"> </span>
            </div>
          </div>
        </div>
    </div>
</div>
