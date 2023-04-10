<?php $path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/BanSach/controllers/CategoryController.php";
include_once($path);
$categories = getAllCategory(); ?><ul> <?php foreach ($categories as $row) { ?> <li><a href="<?php echo "/BanSach/shop-grid.php?category=" . $row->id ?>"> <?php echo $row->category_name ?> </a></li> <?php } ?> </ul>