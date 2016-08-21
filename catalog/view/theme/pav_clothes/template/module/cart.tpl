<span style="color:#008000;"><span style="font-size: 16px;">Hotline: &nbsp;</span></span>
<span style="color:#FF0000;"><span style="font-size: 22px;"><span style="color:#FF0000;"><span style="font-size: 22px;"><strong><span style="font-size:18px;">0903005138 (HCM) 0983294179 (HN)</span></strong></span></span></span></span>
<div id="cart" class="pull-right">
  <div class="media-body heading">
    <a><span id="cart-total" class="icon-cart"><span class="hidden-xs hidden-sm"><?php echo $text_items; ?></span></span></a>    
  <div class="content">
  <h4><?php echo $heading_title; ?></h4>    
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>


              <?php if ($product['recurring']): ?>
              - <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
              <?php endif; ?>


            </div></td>
          <td class="quantity">x&nbsp;<?php echo $product['quantity']; ?></td>
          <td class="total"><?php echo $product['total']; ?></td>
          <td class="remove"><img src="catalog/view/theme/default
/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity">x&nbsp;1</td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
          <td class="remove"><img src="catalog/view/theme/default
/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total">
      <table>
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="right"><b><?php echo $total['title']; ?>:</b></td>
          <td class="right"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkout"><a class="button" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a> | <a class="button" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
</div>
</div>