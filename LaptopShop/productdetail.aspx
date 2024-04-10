<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="productdetail.aspx.cs" Inherits="LaptopShop.productdetail" %>
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
        <form action="" class="search__form">
            <i class="ri-search-line search__icon""></i>
            <input type=" search" placeholder="Bạn muốn tìm kiếm sản phẩm nào?" class="search__input">
        </form>

        <i class="ri-close-line search__close" id="search-close"></i>
    </div>
    <!-- ================LOGIN================= -->
    <div class="login grid" id="login-content">
        <form action="submit" class="login__form grid">
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
                <p>Sản Phẩm > Acer Nitro 5</p>
            </div>
        </section>
        <section class="home" id="home">
            <div class="home__container container grid">
                <asp:Repeater ID="rpProductByProductID" runat="server" DataSourceID="dsProductByProductID">
                    <ItemTemplate>
                        <div class="home__images">
                            <div class="">
                                <article class="">
                                    <img src="img/laptop/<%# Eval("ImageUrl") %>" alt="image" class="product__img">
                                </article>
                            </div>
                        </div>

                        <div class="home__data">
                            <h1 class="product__title">
                                <%# Eval("NameProduct") %>
                            </h1>

                            <p class="home__description">
                                Tìm kiếm chiếc máy tốt nhất theo sở thích của bạn, khám phá hàng
                                trăm mẫu mã khác nhau, các hãng khác nhau.
                            </p>
                            <div class="table-container">
                                <table class="productdetail__table bordered">
                                  <tbody>
                                    <tr>
                                      <td class="highlight">Loại</td>
                                      <td>Laptop</td>
                                    </tr>
                                    <tr>
                                      <td class="highlight">Sản Phẩm</td>
                                      <td>Laptop</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            <a href="#" class="button button__product">Thêm Vào Giỏ Hàng</a>
                        </div>
                    </ItemTemplate>

                </asp:Repeater>
                
            </div>
        </section>
    </main>
    <asp:SqlDataSource ID="dsProductByProductID" runat="server" ConnectionString="<%$ ConnectionStrings:LaptopShopConnectionString %>" 
        SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
