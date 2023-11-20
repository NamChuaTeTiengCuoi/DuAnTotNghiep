<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

 <div class="page-wrapper">
        <!-- Loading ......... -->
    <div class="loader" id="loader">
        <div class="loader-inner">
            <img src="/forUser/imgs/loader-2.svg" alt="Loader" class="loader-img">
        </div>
    </div>

    <!-- overlay for focus -->
    <div id="overlay" style="display: none;"></div>

    <!-- scroll top -->
    <a class="scroll-top link-text" href="#home">Lên Đầu</a>

    <!-- page wrapper -->
    <div class="page-wrapper">
        <!-- Header -->
        <header id="home">
            <!-- Navigation -->
            <nav class="navbar navbar-expand-xl navbar-dark">
                <!-- logo site -->
                <a class="navbar-brand main-logo" href="index.html" rel="home" title="Natuspa">
                    <img src="/forUser/imgs/logo_white.png" alt="Natuspa Logo" width="193" height="76">
                </a>
                <!--  main nav -->
                <button class="navbar-toggler mobile-nav-icon" type="button" data-toggle="collapse"
                    data-target="#main-nav-mobile">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse main-nav">
                    <ul class="navbar-nav menu" id="mainNav">
                        <li class="nav-item menu-item menu-item-current menu-item-has-child">
                            <a class="nav-link"
                            href="index">Trang chủ</a>
                            
                        </li>
                        <li class="nav-item menu-item">
                            <a class="nav-link" href="services">Dịch vụ</a>
                        </li>
                        <li class="nav-item menu-item">
                            <a class="nav-link" href="contactus">Liên hệ</a>
                        </li>
                        <li class="nav-item menu-item menu-item-has-child">
                            <a class="nav-link" href="#">Tin tức</a>
                            <ul class="sub-menu">
                                <li><a href="pageblog">Blog Grid</a></li>
                                <li><a href="pageblogdetails">Blog Details</a></li>
                            </ul>
                        </li>
                        <li class="nav-item menu-item">
                            <a class="nav-link" href="pagepricing">Đánh giá</a>
                        </li>
                        <li class="nav-item menu-item">
                            <a class="nav-link" href="aboutus">Giới thiệu</a>
                        </li>
                        <li class="nav-item menu-item menu-item-has-child">
                            <a class="nav-link" href="#">Tài khoản</a>
                            <ul class="sub-menu">
                                <li><a href="login">Login</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- nav icon -->
                <div class="main-nav-icon">
                    <!-- search -->
                    <a class="search-button">
                        <span class="search-icon nav-icon"><i class="fal fa-search"></i></span>
                    </a>
                    <div class="search-form">
                        <span class="close-search"><i class="fal fa-times-circle"></i></span>
                        <form class="search-input" action="#">
                            <input type="text" name="search" id="searchForm" placeholder="Type and hit enter..."
                                autocomplete="off">
                        </form>
                    </div>
                    <!-- shopping bag -->
                    <a class="bag-button">
                        <span class="bag-icon nav-icon">
                            <i class="fal fa-shopping-bag"><span class="badge badge-danger">2</span></i>
                        </span>
                        <div class="shop-cart">
                            <div class="shop-cart-item">
                                <img src="/forUser/imgs/products/product-1.jpg" alt="product-1">
                                <p class="product-info">
                                    The Ordinary Coverage Foundation<br>
                                    <span class="quantity">1 Ã
                                        <span class="amount">$<span class="price">215.00</span></span>
                                    </span>
                                </p>
                            </div>
                            <div class="shop-cart-item">
                                <img src="/forUser/imgs/products/product-2.jpg" alt="product-2">
                                <p class="product-info">
                                    SkinStore Holiday Collection<br>
                                    <span class="quantity">5 Ã
                                        <span class="amount">$<span class="price">75.99</span></span>
                                    </span>
                                </p>
                            </div>
                            <div class="shop-cart-total">
                                <strong>Subtotal: </strong><span>$594.95</span>
                            </div>
                            <div class="shop-cart-button">
                                <a href="#" class="btn view-btn">view cart</a>
                                <a href="#" class="btn checkout-btn">checkout</a>
                            </div>
                        </div>
                    </a>
                    <!-- bars icon -->
                    <a class="slide-icon">
                        <span class="bars-icon nav-icon"><i class="fal fa-bars"></i></span>
                    </a>
                </div>
            </nav>
            <!-- menu popup -->
            <div class="menu-popup">
                <span class="close-icon"><i class="fal fa-times"></i></span>
                <div class="content-wrap">
                    <h1 class="title">Natuspa</h1>
                    <p class="text">
                        Đối với chúng tôi, 
                        đó là một cuộc hành trình chứ không phải một cuộc chạy đua để xây dựng di sản và danh tiếng là người giỏi nhất, 
                        mang đến những gì tốt nhất và tạo ra một nền văn hóa Natuspa mà chúng tôi tự hào mỗi ngày.
                    </p>
                    <span class="menu-popup-img"><img src="/forUser/imgs/summer-sale.jpg" alt="Sale"></span>
                    <div class="contact-popup-info">
                        <h2 class="title">Contact Us</h2>
                        <div class="address">
                            <span>145 Trần Hưng Đạo, DX01, Hồ Chính Minh</span>
                        </div>
                        <div class="email">
                            <span>Natuspa@email-themes.com</span>
                        </div>
                        <div class="phone">
                            <span>+84 933 1235 113</span>
                        </div>
                        <div class="social-media-icons">
                            <div class="social-media">
                                <a class="social-popup-icon" target="_blank" href="#"><i
                                        class="fab fa-linkedin-in"></i></a>
                            </div>
                            <div class="social-media">
                                <a class="social-popup-icon" target="_blank" href="https://fb.com/Tuannguyentn2504"><i
                                        class="fab fa-facebook-f"></i></a>
                            </div>
                            <div class="social-media">
                                <a class="social-popup-icon" target="_blank" href="#"><i
                                        class="fab fa-twitter"></i></i></a>
                            </div>
                            <div class="social-media">
                                <a class="social-popup-icon" target="_blank" href="#"><i
                                        class="fab fa-google-plus-g"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slides -->
            <div class="slide-wrap">
                <div class="slide-inner">
                    <div class="slide-item active">
                        <img src="/forUser/imgs/slide_1.jpg" alt="slide one">
                        <div class="slide-text">
                            <h3>Chào mừng đến với Natuspa!</h3>
                            <h1>Tốt nhất cho bạn</h1>
                            <p>Bước vào một bầu không khí thư giãn thoải mái. 
                            Natuspa là nơi ẩn náu yên bình khỏi lối sống phức tạp và căng thẳng cao độ của bạn. 
                            Để lại cảm giác sảng khoái, xinh đẹp và thư thái hơn bao giờ hết.
                            </p>
                            <button class="btn book-now-btn">Đặt bây giờ</button>
                        </div>
                    </div>
                    <div class="slide-item">
                        <img src="/forUser/imgs/slide_2.jpg" alt="slide two">
                        <div class="slide-text" style="text-align: left;">
                            <h3>Chào mừng đến với Natuspa!</h3>
                            <h1>Tốt nhất cho bạn</h1>
                            <p>Bạn xứng đáng được nghỉ ngơi. 
                            Khám phá lại ý nghĩa của việc thoải mái, 
                            cảm thấy tốt hơn và tận hưởng những lợi ích lâu dài của trải nghiệm spavia.
                            </p>
                            <button class="btn book-now-btn">Đặt bây giờ</button>
                        </div>
                    </div>
                    <div class="slide-item">
                        <img src="/forUser/imgs/slide_3.jpg" alt="slide three">
                        <div class="slide-text" style="text-align: right;">
                            <h3>Chào mừng đến với Natuspa!</h3>
                            <h1>Tốt nhất cho bạn</h1>
                            <p>Hãy gác lại sự hỗn loạn trong thói quen hàng ngày của bạn
                             và dành thời gian cho bản thân để nhóm spavia nạp lại năng lượng và
                              tập trung lại cơ thể và tâm trí của bạn.
                            </p>
                            <button class="btn book-now-btn">Đặt bây giờ</button>
                        </div>
                    </div>
                </div>
                <a href="#" class="slide-control" id="prev-slide"></a>
                <a href="#" class="slide-control" id="next-slide"></a>
                <ol class="slide-dot">
                    <li class="active"></li>
                    <li></li>
                    <li></li>
                </ol>
            </div>
        </header>
    </div>
    </div>
   
