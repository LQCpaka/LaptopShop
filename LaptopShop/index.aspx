<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LaptopShop.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <!-- ================HEADER================= -->
<header class="header" id="header">
    <nav class="nav container">
        <a href="index.aspx" class="nav__logo">
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
                    <a href="#new" class="nav__link">
                        <i class="ri-price-tag-line"></i>
                        <span>Sản Phẩm</span>
                    </a>
                </li>

                <li class="nav__item">
                    <a href="#testimonial" class="nav__link">
                        <i class="ri-instance-line"></i>
                        <span>Đánh Giá</span>
                    </a>
                </li>

                <li class="nav__item">
                    <a href="product.aspx" class="nav__link">
                        <i class="ri-menu-line"></i>
                        <span>Thể Loại</span>
                    </a>
                </li>

            </ul>
        </div>

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
            <asp:Button ID="btnLogin" OnClick="btnLogin_Click" CssClass="button" runat="server" Text="Đăng Nhập" />
            <%--<asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" CssClass="login__input button"   />--%>
            <%--<button type="submit" href="#" class="login__button button">Đăng Nhập</button>--%>
        </div>
    </form>

    <i class="ri-close-line login__close" id="login-close"></i>
</div>
        <!-- ================MAIN================= -->
    <main class="main">
        <!-- ================HOME================= -->
        <section class="home section" id="home">
            <div class="home__container container grid">
                <div class="home__data">
                    <h1 class="home__title">
                        Tìm Tốt <br>
                        Chọn Hay
                    </h1>

                    <p class="home__description">
                        Tìm kiếm chiếc máy tốt nhất theo sở thích của bạn, khám phá hàng
                        trăm mẫu mã khác nhau, các hãng khác nhau!
                    </p>

                    <a href="#" class="button">Khám Phá Ngay</a>
                </div>


                <div class="home__images">
                    <div class="home__swiper swiper">
                        <div class="swiper-wrapper">
                            <asp:Repeater ID="rpHome" runat="server" DataSourceID="dsProducts">
                                <ItemTemplate>
                                    <article class="home__article swiper-slide">
                                        <img src="img/laptop/laptopSwiper.jpg" alt="image" class="home__img">
                                    </article>
                                </ItemTemplate>
                            </asp:Repeater>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ========================= SERVICES ========================= -->
        <section class="services section">
            <div class="services__container container grid">
                <article class="services__card">
                    <i class="ri-truck-line"></i>
                    <h3 class="services__title">FREE SHIP</h3>
                    <p class="services__description">Cho mọi đơn hàng trên 1tr</p>
                </article>

                <article class="services__card">
                    <i class="ri-lock-2-line"></i>
                    <h3 class="services__title">Bảo mật giao dịch</h3>
                    <p class="services__description">100% bảo mật giao dịch</p>
                </article>

                <article class="services__card">
                    <i class="ri-customer-service-2-line"></i>
                    <h3 class="services__title">Hỗ trợ 24/7</h3>
                    <p class="services__description">Luôn sẵn sàng lắng nghe bạn</p>
                </article>
            </div>
        </section>


        <!-- ========================= FEATURES ========================= -->
        <section class="featured section" id="featured">
            <h2 class="section__title">
                Sản phẩm hot
            </h2>
            <div class="featured__container container">
                <div class="featured__swiper swiper ">
                    <div class="swiper-wrapper">
                        <!-- 1 -->
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsProductByNew">
                            <ItemTemplate>
                                <article class="featured__card swiper-slide">
                                    <img src="img/laptop/<%# Eval("ImageUrl") %>" alt="image" class="featured__img">

                                    <h2 class="featured__title"><%# Eval("NameProduct") %></h2>
                                    <div class="featured__prices">
                                        <span class="featured__discount"><%# Eval("Price") %>vnd</span>
                                        <%--<span class="featured__price">99$</span>--%>
                                    </div>

                                    <a href="productdetail.aspx?ProductID=<%# Eval("ProductID") %>" class="button">Thêm Vào Giỏ</a>

                                    <div class="featured__actions">
                                        <button><i class="ri-heart-line"></i></button>
                                        <button><i class="ri-eye-line"></i></button>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                        
                    </div>
                    <div class="swiper-button-prev"><i class="ri-arrow-left-s-line"></i></div>
                    <div class="swiper-button-next"><i class="ri-arrow-right-s-line"></i></div>
                </div>
            </div>
        </section>


        <!-- ========================= NEW PRODUCTS ========================= -->
        <section class="new section" id="new">
            <h2 class="section__title">
                Sản Phẩm Mới
            </h2>

            <div class="new__container container">
                <div class="new__swiper swiper">          
                    <div class="swiper-wrapper">
                        <!-- 1 -->
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="dsProductByNew">
                            <ItemTemplate>
                                <a href="productdetail.aspx?ProductID=<%# Eval("ProductID") %>" class="new__card swiper-slide">
                                    <img src="img/laptop/<%# Eval("ImageUrl") %>" alt="image" class="new__img">


                                    <div>
                                        <h2 class="new__title"><%# Eval("NameProduct") %></h2>
                                        <div class="new__prices">
                                            <%--<span class="new__discount"><%# Eval("Price") %></span>--%>
                                            <%--<span class="new__price"><%# Eval("Price") %></span>--%>
                                        </div>

                                        <div class="new__stars">
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-half-fill"></i>
                                        </div>
                                    </div>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="new__swiper swiper">
                    <div class="swiper-wrapper">
                        <!-- 1 -->
                       <asp:Repeater ID="Repeater3" runat="server" DataSourceID="dsProductByNew">
                            <ItemTemplate>
                                <a href="productdetail.aspx?ProductID=<%# Eval("ProductID") %>" class="new__card swiper-slide">
                                    <img src="img/laptop/<%# Eval("ImageUrl") %>" alt="image" class="new__img">


                                    <div>
                                        <h2 class="new__title"><%# Eval("NameProduct") %></h2>
                                        <div class="new__prices">
                                            <span class="new__discount"><%# Eval("Price") %></span>
                                            <%--<span class="new__price"><%# Eval("Price") %></span>--%>
                                        </div>

                                        <div class="new__stars">
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-fill"></i>
                                            <i class="ri-star-half-fill"></i>
                                        </div>
                                    </div>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </div>
                </div>
            </div>
        </section>

        <!-- ========================= TESTIMONIAL ========================= -->
        <section class="testimonial section" id="testimonial">
            <div class="testimonial">
                <h2 class="section__title">
                    Đánh Giá Người Dùng
                </h2>

                <div class="testimonial__container container">
                    <div class="testimonial__swiper swiper">
                        <div class="swiper-wrapper">
                            <article class="testimonial__card swiper-slide">
                                <img src="/img/avatar/avt1.png" alt="image" class="testimonial__img">
                                <h2 class="testimonial__title">Rial Loz</h2>
                                <p class="testimonial__description">
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni inventore fugiat beatae expedita excepturi veritatis repellendus illum perferendis alias, consequuntur exercitationem similique quos hic nihil, totam natus numquam, quae esse aspernatur cum tenetur officiis! Nisi voluptatem eum rem, culpa consectetur officia ab fugit dolore molestiae illo, neque, hic placeat provident!
                                </p>
                                <div class="testtimonial__stars">
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-half-fill"></i>
                                </div>
                            </article>
                            <article class="testimonial__card swiper-slide">
                                <img src="/img/avatar/avt1.png" alt="image" class="testimonial__img">
                                <h2 class="testimonial__title">Rial Loz</h2>
                                <p class="testimonial__description">
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni inventore fugiat beatae expedita excepturi veritatis repellendus illum perferendis alias, consequuntur exercitationem similique quos hic nihil, totam natus numquam, quae esse aspernatur cum tenetur officiis! Nisi voluptatem eum rem, culpa consectetur officia ab fugit dolore molestiae illo, neque, hic placeat provident!
                                </p>
                                <div class="testtimonial__stars">
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-half-fill"></i>
                                </div>
                            </article>
                            <article class="testimonial__card swiper-slide">
                                <img src="/img/avatar/avt1.png" alt="image" class="testimonial__img">
                                <h2 class="testimonial__title">Rial Loz</h2>
                                <p class="testimonial__description">
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni inventore fugiat beatae expedita excepturi veritatis repellendus illum perferendis alias, consequuntur exercitationem similique quos hic nihil, totam natus numquam, quae esse aspernatur cum tenetur officiis! Nisi voluptatem eum rem, culpa consectetur officia ab fugit dolore molestiae illo, neque, hic placeat provident!
                                </p>
                                <div class="testtimonial__stars">
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-half-fill"></i>
                                </div>
                            </article>
                            <article class="testimonial__card swiper-slide">
                                <img src="/img/avatar/avt1.png" alt="image" class="testimonial__img">
                                <h2 class="testimonial__title">Rial Loz</h2>
                                <p class="testimonial__description">
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni inventore fugiat beatae expedita excepturi veritatis repellendus illum perferendis alias, consequuntur exercitationem similique quos hic nihil, totam natus numquam, quae esse aspernatur cum tenetur officiis! Nisi voluptatem eum rem, culpa consectetur officia ab fugit dolore molestiae illo, neque, hic placeat provident!
                                </p>
                                <div class="testtimonial__stars">
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-fill"></i>
                                    <i class="ri-star-half-fill"></i>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <asp:SqlDataSource ID="dsProducts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LaptopShopConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:LaptopShopConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Products]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="dsProductByNew" runat="server" ConnectionString="<%$ ConnectionStrings:LaptopShopConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([Featured] = @Featured)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="3" Name="Featured" QueryStringField="dsNew" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%--Login section--%>
    <asp:SqlDataSource ID="dsLogin" runat="server" 
    ConnectionString="<%$ ConnectionStrings:LaptopShopConnectionString.ProviderName %>"
    SelectCommand="SELECT COUNT(*) FROM UserAccounts WHERE UserEmail = @Email AND UserPassword = @Password">
    <SelectParameters>
        <asp:ControlParameter ControlID="loginEmail" Name="Email" PropertyName="Text" />
        <asp:ControlParameter ControlID="loginPass" Name="Password" PropertyName="Text" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>


