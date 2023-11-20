<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Slideshow -->
    <section class="page-wrapper">
      <!-- service section -->
        <div class="services-section container" id="services">
            <div class="row">
                <div class="spacer-clearfix" style="height: 80px;"></div>
                <div class="services-info col-md-12">
                    <h2 class="section-title">Dịch Vụ Tốt Nhất Của Chúng Tôi</h2>
                    <p class="services-main-text">Natuspa là một thẩm mỹ viện đầy đủ dịch vụ với các chuyên gia về dịch vụ cơ thể,
                     móng tay quan tâm, massage, tẩy lông, chăm sóc da và các phương pháp điều trị khác.
                    </p>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-facial-treatment"></i>
                    </div>
                    <div class="heading text-linear-effect">Da mặt trẻ trung</div>
                    <div class="description">Khuôn mặt này giải quyết hầu hết các mối quan tâm về da phổ biến cho cả nam 
                    giới và phụ nữ bao gồm mất nước, nếp nhăn và mất độ săn chắc.
                    </div>
                    <div class="spacer-clearfix" style="height: 50px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-depilation"></i>
                    </div>
                    <div class="heading text-linear-effect">Tẩy lông tự nhiên</div>
                    <div class="description">Điều này làm giảm đáng kể tình trạng gãy tóc, đau đớn khi trưởng thành lông, 
                    đồng thời cho phép chúng ta loại bỏ 
                    những sợi lông nhỏ hơn, khó lấy hơn.
                    </div>
                    <div class="spacer-clearfix" style="height: 50px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-massage-1"></i>
                    </div>
                    <div class="heading text-linear-effect">Massage đặc trưng</div>
                    <div class="description">Mời Natuspa đến văn phòng hoặc địa điểm kinh doanh của bạn và 
                    giúp đỡ bạn đội thư giãn! tuyệt vời để ghi nhận nhóm, phần thưởng cho việc đạt được mục tiêu.
                    </div>
                    <div class="spacer-clearfix" style="height: 50px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-herbal"></i>
                    </div>
                    <div class="heading text-linear-effect">Điều trị cơ thể</div>
                    <div class="description">Phương pháp điều trị này bắt đầu bằng việc chà nhẹ nhàng bằng đường hoa oải hương, sau đó là
                     Vichy tắm để tẩy tế bào chết và loại bỏ vi khuẩn khỏi lỗ chân lông của chúng ta.
                    </div>
                    <div class="spacer-clearfix" style="height: 0px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-polish"></i>
                    </div>
                    <div class="heading text-linear-effect">Chăm sóc móng tay tự nhiên</div>
                    <div class="description">Natuspa có các chuyên gia được đào tạo bài bản về làm móng tay và móng chân. 
                    Nếu bạn có bất kỳ câu hỏi nào, xin vui lòng liên hệ với chúng tôi.
                    </div>
                    <div class="spacer-clearfix" style="height: 0px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-stone"></i>
                    </div>
                    <div class="heading text-linear-effect">Massage đá nóng</div>
                    <div class="description">Massage đá nóng là phương pháp trị liệu bằng 
                    massage làm ấm cơ thể đá được đặt trên một số khu vực nhất định của cơ thể.
                    </div>
                    <div class="spacer-clearfix" style="height: 0px;"></div>
                </div>
                <div class="spacer-clearfix" style="height: 80px;"></div>
            </div>
        </div>


        <!-- appointment & form section -->
        <div class="appointment-section container-fluid">
            <div class="container">
                <div class="row">
                    <div class="spacer-clearfix" style="height: 90px;"></div>
                    <div class="heading col-12">
                        <div class="pre-heading">Đặt Lịch Hẹn</div>
                        <div class="main-heading">CAO CẤP<br>BỘ SƯU TẬP</div>
                        <div class="sub-heading">Giảm giá tới 50%</div>
                    </div>
                    <div class="spacer-clearfix" style="height: 60px;"></div>
                    <div class="appointment-form col-12">
                        <form action="/action_page.php">
                            <div class="row">
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-name">
                                    <input type="text" name="name" id="name" placeholder="Họ và tên">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-email">
                                    <input type="text" name="email" id="email" placeholder="E-mail">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-phone-number">
                                    <input type="text" name="phone-number" id="phone-number" placeholder="Số điện thoại">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 preferred-date">
                                    <input type="text" name="preferred-date" id="datepicker"
                                        placeholder="Ngày ưa thích" autocomplete="off">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-service">
                                    <div class="current-option" data-value="0">Loại dịch vụ</div>
                                    <div class="error">( <span>*</span> )</div>
                                    <span class="dropdown-icon"><i class="fal fa-chevron-down down"></i></span>
                                    <ul class="option-menu">
                                        <li class="option" data-value="0">Loại dịch vụ</li>
                                        <li class="option" data-value="1">Tẩy lông tự nhiên</li>
                                        <li class="option" data-value="1">Massage đặc trưng</li>
                                        <li class="option" data-value="1">Chăm sóc móng tay tự nhiên</li>
                                        <li class="option" data-value="1">Điều trị cơ thể</li>
                                        <li class="option" data-value="1">Da mặt trẻ trung</li>
                                    </ul>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 submit-btn">
                                    <input value="HẸN NGAY" id="appointment-submit" name="submit"
                                        class="btn book-now-btn" disabled="disabled" style="opacity: 1;">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="spacer-clearfix" style="height: 80px;"></div>
                </div>
            </div>
        </div>


         <!-- team section -->
        <div class="team container">
            <div class="spacer-clearfix" style="height: 70px;"></div>
            <div class="heading">
                <h2 class="section-title">Đội Của Chúng Tôi</h2>
                <div class="sub-heading">
                    <p>Natuspa là thẩm mỹ viện đầy đủ dịch vụ với các chuyên gia về dịch vụ cơ thể,
                     chăm sóc móng, massage, 
                    tẩy lông, chăm sóc da. quan tâm, và các phương pháp điều trị khác.
                    </p>
                </div>
            </div>
            <div class="spacer-clearfix" style="height: 65px;"></div>
            <div class="team-slider">
                <div class="team-item">
                    <img src="/forUser/imgs/team/person-1-370x450.jpg" alt="Person-1">
                    <div class="infomation">
                        <h4 class="name">Emille Jenifer</h4>
                        <div class="position">Nhân viên Massage</div>
                    </div>
                    <ul class="social-media-icons">
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a href="https://fb.com/tuannguyentn2504" class="social-popup-icon" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="team-item">
                    <img src="/forUser/imgs/team/person-2-370x450.jpg" alt="Person-2">
                    <div class="infomation">
                        <h4 class="name">Marsha Hoffman</h4>
                        <div class="position">Nhân viên Trang Điểm</div>
                    </div>
                    <ul class="social-media-icons">
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a href="https://fb.com/tuannguyentn2504" class="social-popup-icon" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="team-item">
                    <img src="/forUser/imgs/team/person-3-370x450.jpg" alt="Person-3">
                    <div class="infomation">
                        <h4 class="name">Emille Jenifer</h4>
                        <div class="position">Nhân viên Massage</div>
                    </div>
                    <ul class="social-media-icons">
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a href="https://fb.com/tuannguyentn2504" class="social-popup-icon" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="spacer-clearfix" style="height: 90px;"></div>
        </div>

    </section>
    
    
 