<?php
/**
 * 搜索框
 */
?>

<form role="search" class="search" method="get" action="<?php echo esc_url( home_url( '/' ) ); ?>">
    <input type="text" name="s" value="搜索..."/">
    <div class="submit-search"><i class="fa fa-search fa-fw"></i></div>
</form>