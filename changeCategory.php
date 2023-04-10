<?php include "./statics/header.php";
include "./controllers/CategoryController.php";
if (isset($_POST["category_name"])) {
    addCategory($_POST["category_name"]);
}

?>

<body>
    <div class="row " style="justify-content: center;">
        <div class="col-6 ">
            <h2>Thêm Danh Mục</h2>
            <form method="post" action="changeCategory.php">
                <div class="form-group">
                    <label for="exampleInputEmail1">Tên Danh Mục</label>
                    <input name="category_name" type="text" class="form-control" id="exampleInputEmail1">
                </div>
                <button type="submit" class="btn btn-primary">Thay đổi</button>
            </form>
        </div>
    </div> <?php $categories = getAllCategory();
            foreach ($categories as $row) { ?> <div class="row mt-5" style="justify-content: center;">
        <div class="col-1"><?php echo $row->id ?></div>
        <div class="col-6"><?php echo $row->category_name ?></div>
        <div class="col-2">
            <a href="#"><button class="btn btn-warning">Sửa</button></a>
            <a href="addCategory.php?delete=<?php echo $row->id ?>"><button class="btn btn-primary">Xóa</button></a>
        </div>
    </div><?php }; ?> < <?php include "./statics/footer.php" ?> </body>

        </html>