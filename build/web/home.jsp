<%-- 
    Document   : home.jsp
    Created on : Oct 17, 2024, 5:52:49 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/stylehome.css">
        <script src="js/homepage.js" defer></script>
        <title>Home-Page</title>
    </head>
    <body>
        
            <!--Header-->
        <div class="header-container">
            <div class="logo-container">
                <p>capytravel</p>
            </div>

            <div class="header-right-container">

                <div class="header-item language-container">
                    <img src="imgs/home-img/internet.png" alt="">
                    <select name="Language" class="support-container">
                        <option value="EN">EN|USD</option>
                        <option value="VN">VN|VND</option>
                    </select>
                </div>
                <div class="other-contain">

                    <div class="header-item">
                        <select name="Support" class="support-container">
                            <option value="contact">Contact Us</option>
                            <option value="help">Help Center</option>
                        </select>
                    </div>
                    <div class="header-item">
                        <p>Bookings</p>
                    </div>
                </div>
                <div class="header-item login">
                    <img src="imgs/home-img/user.png">
                    <div class="login-container">
                        <p>Login</p>
                    </div>
                </div>

                <div class="header-item">
                    <p>Register</p>
                </div>

            </div>

        </div>
        <div class="header-img">
            <img src="imgs/home-img/headerIMG.jpg" alt="">
        </div>
        <div name="slogan">
            <h1>Peacefull like a capybara <br> reaching every corner of the country!</h1>
        </div>
            
        <!--form chọn điểm đi về vv    -->

        <form action="CapyTravelController" method="POST" name="">
            <div class="select-container">
                <label for="departure" class="select-label">From</label>
                <select id="departure" name="location" class="select-input" required>
                    <option value="SGN" selected>Ho Chi Minh City (SGN) - Tân Sơn Nhất</option>
                 
                </select>

                <label for="destination" class="select-label">To</label>
                <select id="destination" name="location" class="select-input" required>
                    <option value="SGN" selected>Ho Chi Minh City (SGN) - Tân Sơn Nhất</option>
               
                </select>
                <button type="button" name = "" value="" class="search-btn" onclick="searchFlights()">Search</button>
            </div>
        </form>
            
            
    <!--Header end-->    
        
        <div class="content-wrapper">
            <div class="content">
                <!-- start Body 1 -->
                <div class="offer">
                    <h2>Offers</h2>
                    <p>Promotions, deals, and special offers for you</p>
                    <div class="deal-container">
                        <!-- Deal 1 -->
                        <div class="deal-box">
                            <img src="imgs/home-img/offer_IMG1.jpg" alt="Capybara Sanctuary" class="large-image">
                            <div class="deal-content">
                                <h2>Seize the moment!</h2>
                                <p>Save 15% or more when you book and visit the Capybara Sanctuary</p>
                                <a href="#" class="deal-button">Find Getaway Deals</a>
                            </div>
                        </div>

                        <!-- Deal 2 -->
                        <div class="deal-box">
                            <div class="deal-content">
                                <h2>Go for a good time, not a long time</h2>
                                <p>Finish your year with a mini break. Save 15% or more when you book and stay by January 7,
                                    2025.</p>
                                <a href="#" class="deal-button">Find Late Escape Deals</a>
                            </div>
                            <img src="imgs/home-img/offer_IMG2.jpg" alt="Canoe Trip" class="small-image">
                        </div>
                    </div>

                </div>
            </div>

            <!-- end Body 1 -->

            <!-- Body 2 -->
            <section class="popular-destinations">
                <h2>POPULAR DESTINATIONS</h2>
                <div class="destination-card">
                    <img src="img/317083056_3411845432438493_3904437474797015128_n.jpg" alt="Ho Chi Minh City">
                    <div class="destination-details">
                        <h3>Ho Chi Minh City</h3>
                        <p class="location">Vietnam</p>
                        <p class="temperature">🌡 Temperature: 33.0°C</p>
                        <p class="description">The Emerald Gem of Southeast Asia leaves a profound impression from the very
                            first visit for anyone who has set foot there.</p>
                        <a href="#" class="view-details">View Details →</a>
                    </div>
                </div>
            </section>
            <!-- end Body 2 -->

            <!-- start Body 3 -->
            <div class="Partner">
                <h2>Airline Partners - Easily book cheapest flights</h2>
                <div class="airline-logos">
                    <img src="imgs/home-img/Viet_Travel_logo.png" alt="Vietravel Airlines">
                    <img src="imgs/home-img/Logo-vietjet.jpg" alt="Vietjet Air">
                    <img src="imgs/home-img/logo-vietnam_airlines.jpg" alt="Vietnam Airlines">
                    <img src="imgs/home-img/Bamboo_logo.png" alt="Bamboo Airways">
                </div>
            </div>
            <!-- end Body 3 -->

            <!-- start Footer -->
            <div class="footer">
                <div class="container_footer">
                    <div class="logo">
                        <img src="imgs/home-img/Logo_tmp.png" alt="CapyTravel Logo">
                        <p>CapyTravel</p>
                    </div>
                    <div class="payment-partners">
                        <h3>Payment Partners</h3>
                        <div class="partners-row">
                            <img src="imgs/home-img/Vcb_logo.png" alt="Vietcombank">
                            <img src="imgs/home-img/Shoppepay_logo.jpg" alt="ShopeePay">
                        </div>
                        <div class="partners-row">
                            <img src="imgs/home-img/Momo_logo.jpg" alt="Momo">
                            <img src="imgs/home-img/Zalopay_logo.jpg" alt="ZaloPay">
                        </div>
                    </div>
                    <div class="contact">
                        <h3>Contact</h3>
                        <p>
                            <img src="imgs/home-img/send-mail.png" alt="Email Icon" class="icon">
                            <a href="mailto:capy@capytravel.com">capy@capytravel.com</a>
                        </p>
                        <p class="phone--contact">
                            <img src="imgs/home-img/phone-ringing.png" alt="Phone Icon" class="icon">
                            <a href="tel:0386900940">0386900940</a>
                        </p>
                    </div>
                </div>
                <div class="copyright">
                    <p>Capytravel Co., D1 Street, Long Thanh My Ward, Thu Duc City, Ho Chi Minh City</p>
                    <p>Copyright © 2024 Capytravel. All rights reserved</p>
                </div>
            </div>
            <!-- end Footer -->

        </div>


    </body>
</html>
