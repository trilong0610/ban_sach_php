<?php
include "./header.php";
?>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- Header Section Begin --> <?php
                                    include "./header_menu.php";
                                    ?>
    <!-- Header Section End -->
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Đăng Ký</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Trang chủ</a>
                            <span>Đăng ký</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <h4>Thông tin tài khoản</h4>
                <form action="#" method="post">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <label for="username" class="font--bold">Tên Đăng Nhập</label>
                                        <input class="required" name="username" id="username" type="text" data-name="Tên Đăng Nhập">
                                        <p class="posi--absolute text-danger err-msg"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <label for="phone" class="font--bold">Số Điện Thoại</label>
                                        <input class="required" name="phone" id="phone" type="tel" placeholder="03xxx" data-name="Số Điện Thoại">
                                        <p class="posi--absolute text-danger err-msg"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <label for="email" class="font--bold">Email</label>
                                <input class="required" name="email" id="email" type="email" data-name="Email">
                                <p class="posi--absolute text-danger err-msg"></p>
                            </div>
                            <div class="checkout__input">
                                <label for="name" class="font--bold">Họ và Tên</label>
                                <input class="required" name="name" id="name" type="text" data-name="Họ và Tên">
                                <p class="posi--absolute text-danger err-msg"></p>
                            </div>
                            <div class="checkout__input">
                                <label for="address" class="font--bold">Địa Chỉ</label>
                                <input class="required" name="address" id="address" type="text" data-name="Địa Chỉ">
                                <p class="posi--absolute text-danger err-msg"></p>
                            </div>
                            <!-- <div class="checkout__input__checkbox">
                                <label for="acc"> Create an account? <input type="checkbox" id="acc">
                                    <span class="checkmark"></span>
                                </label>
                            </div> -->
                            <div class="checkout__input">
                                <label for="password" class="font--bold">Mật khẩu</label>
                                <input class="required" name="password" id="password" type="password" placeholder="Lớn hơn 8 kí tự. Gồm chữ thường, chữ in hoa, số, kí tự đặc biệt" data-name="Mật khẩu">
                                <p class="posi--absolute text-danger err-msg"></p>
                            </div>
                            <div class="checkout__input">
                                <label for="password2" class="font--bold">Nhập Lại Mật Khẩu</label>
                                <input class="required" name="password2" id="password2" type="password" placeholder="Lớn hơn 8 kí tự. Gồm chữ thường, chữ in hoa, số, kí tự đặc biệt" data-name="Nhập Lại Mật Khẩu">
                                <p class="posi--absolute text-danger err-msg"></p>
                            </div>
                            <div>
                                <button type="submit" class="site-btn">ĐĂNG KÝ</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
    <!-- Footer Section Begin --> <?php
                                    include "./footer.php" ?> <script src="js/validate.js"></script>
</body>

</html>