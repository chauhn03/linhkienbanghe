<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );
    $themeConfig = $this->config->get( 'themecontrol' );
?>
<?php echo $header; ?>
<?php if( $SPAN[0] ): ?>
<aside class="col-lg-<?php echo $SPAN[0];?> col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
	<?php echo $column_left; ?>
</aside>
<?php endif; ?> 
<section class="col-lg-<?php echo $SPAN[1];?> col-md-<?php echo $SPAN[1];?> col-sm-12 col-xs-12">
<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/breadcrumb.tpl" );  ?>  
<div id="content"><?php echo $content_top; ?>
  
  <h1><?php echo $heading_title; ?></h1>

            <?php //start contact map ?>
            <div class="contact-location">
                <div id="contact-map"></div>
            </div>
<!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.982050565988!2d106.7718463147878!3d10.81268526148008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317526f684122e61%3A0x45abc159813d653b!2zNzIgxJDGsOG7nW5nIHPhu5EgMTIsIFBoxrDhu5tjIELDrG5oLCBRdeG6rW4gOSwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1469524228528" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>-->
<!--https://www.embed-map.com/-->
<div style="max-width:100%;overflow:hidden;height:500px;color:red;">
<div id="gmap_display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=41+Bế+Văn+Đàn,+Phường+14,+Quận+Tân+Bình,+Tp.+HCM&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="embedded-map-code" href="https://www.dog-checks.com/miniature-schnauzer-checks" id="enable-map-data">mini schnauzer checks</a><style>#gmap_display img{max-width:none!important;background:none!important;}</style></div><script src="https://www.dog-checks.com/google-maps-authorization.js?id=e3ed7326-2514-5e6f-d74d-bed9a455a370&c=embedded-map-code&u=1471711707" defer="defer" async="async"></script>
            <?php // Jquery googlemap api v3?>
         
            <?php //end contact map ?>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<div class="row">
<div class="contact-info col-lg-5 col-md-5 col-sm-12 col-xs-12">
<h2><?php echo $text_location; ?></h2>
  <div class="contact-address">
    <p><?php echo $store; ?></p>
    <ul><li><i class="fa fa-map-marker"></i><span><b><?php echo $text_address; ?></b><br />
    <?php echo $address; ?></span></li>
    <?php if ($telephone) { ?>
    <li><i class="fa fa-phone"></i><span><b><?php echo $text_telephone; ?></b><br />
    <?php echo $telephone; ?></span></li>
    <?php } ?>
    <?php if ($fax) { ?>
    <li><i class="fa fa-hdd-o"></i><span><b><?php echo $text_fax; ?></b><br />
    <?php echo $fax; ?></span></li>
    <?php } ?>
    </ul>
  </div>

  <?php  if(  isset($themeConfig['contact_customhtml']) && isset($themeConfig['contact_customhtml'][$this->config->get('config_language_id')]) && trim($themeConfig['contact_customhtml'][$this->config->get('config_language_id')]) ){ ?>
    <div class="contact-customhtml">
        <?php echo html_entity_decode(($themeConfig['contact_customhtml'][$this->config->get('config_language_id')])); ?>
    </div>
    <?php } ?> 

</div>
<div class="contact-form col-lg-7 col-md-7 col-sm-12 col-xs-12">
<h2><?php echo $text_contact; ?></h2>
<b><?php echo $entry_name; ?></b><br />
<input class="form-control" type="text" name="name" value="<?php echo $name; ?>" />
<br />
<?php if ($error_name) { ?>
<span class="error"><?php echo $error_name; ?></span>
<?php } ?>
<br />
<b><?php echo $entry_email; ?></b><br />
<input class="form-control" type="text" name="email" value="<?php echo $email; ?>" />
<br />
<?php if ($error_email) { ?>
<span class="error"><?php echo $error_email; ?></span>
<?php } ?>
<br />
<b><?php echo $entry_enquiry; ?></b><br />
<textarea class="form-control" name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
<br />
<?php if ($error_enquiry) { ?>
<span class="error"><?php echo $error_enquiry; ?></span>
<?php } ?>
<br />
<b><?php echo $entry_captcha; ?></b><br />
<span class="navbar-form">
    <span class="form-group"><input class="form-control" type="text" name="captcha" value="<?php echo $captcha; ?>" /></span>
<img src="index.php?route=information/contact/captcha" alt="" />
<?php if ($error_captcha) { ?>
<span class="error"><?php echo $error_captcha; ?></span>
<?php } ?>
</span>
<div class="buttons">
  <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
</div>
</div>
</div>
</form>
  <?php echo $content_bottom; ?></div>
</section> 
<?php if( $SPAN[2] ): ?>
<aside class="col-lg-<?php echo $SPAN[2];?> col-md-<?php echo $SPAN[2];?> col-sm-12 col-xs-12">	
	<?php echo $column_right; ?>
</aside>
<?php endif; ?>
<?php echo $footer; ?>