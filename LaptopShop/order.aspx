<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="LaptopShop.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <!-- ================HEADER================= -->
    <header class="header" id="header">
        <nav class="nav container">
            <a href="index.html" class="nav__logo">
                <i class="ri-computer-line"></i> VI GEAR
            </a>

            <div class="nav__menu">
                <ul class="nav__list">
                    <li class="nav__item">
                        <a href="#home" class="nav__link active-link">
                            <i class="ri-home-line"></i>
                            <span>Trang Chủ</span>
                        </a>
                    </li>

                    <li class="nav__item">
                        <a href="#featured" class="nav__link">
                            <i class="ri-macbook-line"></i>
                            <span>Nổi Bật</span>
                        </a>
                    </li>

                    <li class="nav__item">
                        <a href="#dicount" class="nav__link">
                            <i class="ri-price-tag-line"></i>
                            <span>Giá</span>
                        </a>
                    </li>

                    <li class="nav__item">
                        <a href="#new" class="nav__link">
                            <i class="ri-instance-line"></i>
                            <span>Mới</span>
                        </a>
                    </li>

                    <li class="nav__item">
                        <a href="#testimonial" class="nav__link">
                            <i class="ri-menu-line"></i>
                            <span>Loại</span>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="nav__actions">
                <!-- Search Button -->
                <i class="ri-search-line search-button" id="search-button"></i>

                <!-- Login Button -->
                <i class="ri-user-line login-button" id="login-button"></i>

                <!-- Cart Button-->
                <i class="ri-shopping-cart-line" id="cart-button">:1</i>

                <!-- Theme Button -->
                <i class="ri-moon-line change-theme" id="theme-button"></i>
            </div>
        </nav>
    </header>

    <!-- ================SEARCH================= -->
    <div class="search" id="search-content">
        <form action="" class="search__form">
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
        <section class="order section">
            <div class="order__container container cart-page">
                <!-- Product price -->
                <table>
                    <!-- Header -->
                    <tr>
                        <th>Sản Phẩm</th>
                        <th>Xóa</th>
                        <th>Số Lượng</th>
                        <th>Tổng Tiền</th>
                    </tr>
                    <!-- Row -->
                    <tr>
                        <td>
                            <div class="cart__info">
                                <img src="img/aa12.jpg" alt="image">
                                <div>
                                    <p>Acer Nitro 5 A12339</p>
                                    <small>Price: $50.00</small>
                                </div>
                            </div>
                        </td>
                        <td> <a href=""><i class="ri-delete-bin-line delete"></i></a> </td>
                        <td><input class="order__input" type="number" value="1"></td>
                        <td><p class="price">$50.00</p></td>
                        
                    </tr>

                    <tr>
                        <td>
                            <div class="cart__info">
                                <img src="img/aa12.jpg" alt="image">
                                <div>
                                    <p>Acer Nitro 5 A12339</p>
                                    <small>Price: $50.00</small>
                                </div>
                            </div>
                        </td>
                        <td> <a href=""><i class="ri-delete-bin-line delete"></i></a> </td>
                        <td><input class="order__input" type="number" value="1"></td>
                        <td><p class="price">$50.00</p></td>
                    </tr>

                    <tr>
                        <td>
                            <div class="cart__info">
                                <img src="img/a1.jpeg" alt="image">
                                <div>
                                    <p>Acer Nitro 5 A12339</p>
                                    <small>Price: $50.00</small>
                                </div>
                            </div>
                        </td>
                        <td> <a href=""><i class="ri-delete-bin-line delete"></i></a> </td>
                        <td><input class="order__input" type="number" value="1"></td>
                        <td><p class="price">$50.00</p></td>
                    </tr>
                </table>
                <!-- Total Price -->
                <div class="total__price">
                    <table>
                        <tr>
                            <td>Tổng Phụ</td>
                            <td><p class="price">$50.00</p></td>
                        </tr>
                        <tr>
                            <td>Giảm Giá</td>
                            <td><p class="price">$50.00</p></td>
                        </tr>
                        <tr>
                            <td>Tổng Tiền</td>
                            <td><p class="price">$50.00</p></td>
                        </tr>
                    </table>
                </div>
                
            </div>
            
        </section>
    </main>
</asp:Content>
