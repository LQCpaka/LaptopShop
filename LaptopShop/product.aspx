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
                <i class="ri-user-line login-button" id="login-button">
                    <asp:Label ID="txtEmailUser" CssClass="login--infor" runat="server" Text=""></asp:Label>
                </i>

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
        <form class="login__form grid" runat="server">
            <h3 class="login__title">Đăng Nhập</h3>

            <div class="login__group grid">
                <div>
                    <label for="login-email" class="login__label">Email</label>
                    <asp:TextBox ID="loginEmail" runat="server" CssClass="login__input" placeholder="Nhập email của bạn" TextMode="Email" />
                </div>
                <div>
                    <label for="login-pass" class="login__label">Mật Khẩu</label>
                    <asp:TextBox ID="loginPass" runat="server" CssClass="login__input" placeholder="Nhập mật khẩu của bạn" TextMode="Password" />
                </div>
            </div>
            <div>
                <asp:Label ID="txtthongbao" runat="server" Text=""></asp:Label>
                <span class="login__signup">
                    Chưa có tài khoản? <a href="#">Đăng Ký</a>
                </span>
                <a href="#" class="login__forgot">
                    Quên mật khẩu
                </a>
                <asp:Button ID="btnLogin" CssClass="button" runat="server" Text="Đăng Nhập" OnClick="btnLogin_Click" />
                <%--<asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" CssClass="login__input button"   />--%>
                <%--<button type="submit" href="#" class="login__button button">Đăng Nhập</button>--%>
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
        <div class="category__container grid container ">
            <asp:Repeater ID="rpProduct" runat="server" DataSourceID="dsProducts">
                <ItemTemplate>
                    <div class="box">
                        <img class="category__img" src="img/laptop/<%# Eval("ImageUrl") %>" alt="">
                        <h3 class="product__title"><%# Eval("NameProduct") %></h3>
                        <p class="product__description"><%# Eval("Price") %></p>
                        <a href="productdetail.aspx?ProductID=<%# Eval("ProductID") %>" class="button">Thêm Vào Giỏ</a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </main>

    <asp:SqlDataSource ID="dsProducts" runat="server" 
    ConnectionString="<%$ ConnectionStrings:LaptopShopConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:LaptopShopConnectionString.ProviderName %>" 
    SelectCommand="SELECT * FROM [Products]">
</asp:SqlDataSource>
</asp:Content>
