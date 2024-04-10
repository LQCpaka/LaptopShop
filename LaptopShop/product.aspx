<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="LaptopShop.product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <!-- ================HEADER================= -->
    <header class="header" id="header">
        <nav class="nav container">
            <a href="index.aspx" class="nav__logo">
                <i class="ri-computer-line"></i> VI GEAR
            </a>

            

            <div class="nav__actions">
                <!-- Search Button -->
                <i class="ri-search-line search-button" id="search-button"></i>

                <!-- Login Button -->
                <i class="ri-user-line login-button" id="login-button"></i>

                <!-- Cart Button-->
                <a href="order.aspx"><i class="ri-shopping-cart-line" id="cart-button">:1</i></a>

                <!-- Theme Button -->
                <i class="ri-moon-line change-theme" id="theme-button"></i>
            </div>
        </nav>
    </header>

    <!-- ================SEARCH================= -->
    <div class="search" id="search-content">
        <form action="submit" class="search__form">
            <i class="ri-search-line search__icon""></i>
            <input type=" search" placeholder="Bạn muốn tìm kiếm sản phẩm nào?" class="search__input">
        </form>

        <i class="ri-close-line search__close" id="search-close"></i>
    </div>
    <!-- ================LOGIN================= -->
    <div class="login grid" id="login-content">
        <form action="" class="login__form grid">
            <h3 class="login__title">Đăng Nhập</h3>

            <div class="login__group grid">
                <div>
                    <label for="login-email" class="login__label">Email</label>
                    <input type="email" id="login-email" placeholder="Nhập email của bạn" class="login__input">
                </div>

                <div>
                    <label for="login-pass" class="login__label">Mật Khẩu</label>
                    <input type="password" placeholder="Nhập mật khẩu của bạn" id="login-pass" class="login__input">
                </div>
            </div>
            <div>
                <span class="login__signup">
                    Chưa có tài khoản? <a href="#">Đăng Ký</a>
                </span>
                <a href="#" class="login__forgot">
                    Quên mật khẩu
                </a>

                <button type="submit" href="#" class="login__button button">Đăng Nhập</button>
            </div>
        </form>

        <i class="ri-close-line login__close" id="login-close"></i>
    </div>



    <!-- ================MAIN================= -->
    <main class="main">
        <section class="top__title section">
            <div class="border__top container ">
                <p>Sản Phẩm ></p>
            </div>
        </section>
        <div class="category__container container grid">
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
            <div class="box">
                <img class="product__img" src="img/aa12.jpg" alt="">
                <h3 class="product__title">Sản Phẩm 1</h3>
                <p class="product__description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur blanditiis veritatis impedit iste vitae excepturi?</p>
                <a href="productdetail.aspx" class="button">Thểm Vào Giỏ</a>
            </div>
        </div>
    </main>
</asp:Content>
