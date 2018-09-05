<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home</title>
    <link href="statics/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <script src="statics/js/jquery.min.js"></script>
    <link href="statics/css/style.css" rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="statics/js/move-top.js"></script>
    <script type="text/javascript" src="statics/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!---- start-smoth-scrolling---->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


    <script>
        $(function() {
            var pull= $('#pull');
            menu= $('navul');
            menuHeight= menu.height();
            $(pull).on('click', function(e) {
                e.preventDefault();
                menu.slideToggle();
            });
            $(window).resize(function(){
                var w = $(window).width();
                if(w > 320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
    </script>
    <!----//End-top-nav-script---->
</head>
<body>
<!----- start-header---->
<div id="home" class="header">
    <div class="top-header">
        <div class="container">
            <div class="logo">
                <a href="index.jsp"><img src="statics/images/logo.png" title="Resto" /></a>
            </div>
            <!----start-top-nav---->
            <nav class="top-nav">
                <ul class="top-nav">
                    <li class="active"><a href="index.jsp">Our Story</a></li>
                    <li><a href="menu.jsp">Menu</a></li>
                    <li><a href="reservation.jsp">Reservations</a></li>
                    <li><a href="news.jsp"> News</a></li>
                    <li><a href="reviews.jsp">Reviews</a></li>
                    <li><a href="user?actionName=logout">exit</a></li>
                </ul>
                <a href="#" id="pull"><img src="statics/images/nav-icon.png" title="menu" /></a>
            </nav>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!----- //End-header---->
<!----- banner ---->
<div class="banner text-center">
    <div class="container">
        <div class="banner-info">
            <h1>Welcome to our restaurant</h1>
            <h2><label> </label>www.shsxt.com<label> </label></h2>
        </div>
    </div>
</div>
<!----- banner ---->
<!----- menu ---->
<div class="menu">
    <div class="container">
        <div class="menu-head text-center">
            <h3><span>Menu</span></h3>
        </div>
    </div>
    <!----- main-menus ----->
    <div class="main-menus">
        <div class="container">
            <div class="menus-left col-md-6">
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Voluptate cillum fugiat.</h3>
                        <span>Cheese, tomato, mushrooms, onions.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$50</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Metus varius laoreet.</h3>
                        <span>Chicken, mozzarella cheese, onions.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$62</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Donec sodales magna.</h3>
                        <span>Tuna, Sweetcorn, Cheese.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$25</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Saugue velit cursus.</h3>
                        <span>Pineapple, Minced Beef, Cheese.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$30</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="menus-right col-md-6">
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Arcu pede enim justo.</h3>
                        <span>Tuna, Sweetcorn, Cheese.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$45</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Cras dapibussemper nisi.</h3>
                        <span>Pineapple, Minced Beef, Cheese.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$32</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Quam semper libero.</h3>
                        <span>Cheese, tomato, mushrooms, onions.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$15</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="menus-left-grid">
                    <div class="item">
                        <h3>Nam eget dui Etiam.</h3>
                        <span>Chicken, mozzarella cheese, onions.</span>
                    </div>
                    <div class="item-line">
                        <span> </span>
                    </div>
                    <div class="item-price">
                        <label>$35</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>

            <!----- load- more-items ----->
            <a class="loadmore" href="#">load more<label><span> </span></label></a>
            <!----- load- more-items ----->
        </div>
    </div>
    <!----- main-menus ----->
</div>
<div class="clearfix"> </div>
<!----- menu ---->
<!----- fearuted-diesh ----->
<div class="fearuted-diesh">
    <div class="container">
        <h3>Featured Dishes<span> </span></h3>
        <!----sreen-gallery-cursual---->
        <div class="sreen-gallery-cursual">
            <!-- requried-jsfiles-for owl -->
            <link href="statics/css/owl.carousel.css" rel="stylesheet">
            <script src="statics/js/owl.carousel.js"></script>
            <script>
                $(document).ready(function() {
                    $("#owl-demo").owlCarousel({
                        items :4,
                        lazyLoad : true,
                        autoPlay : true,
                        navigation : false,
                        navigationText :  false,
                        pagination : true,
                    });
                });
            </script>
            <!-- //requried-jsfiles-for owl -->
            <!-- start content_slider -->
            <div id="owl-demo" class="owl-carousel">
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d1.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Fugiat nulla sint</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$30</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div><div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
                <!----->
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d2.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Daute irure dolor</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$24</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!----->
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d3.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Officia deserunt mollit</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$60</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!----->
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d4.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Pim minim veniam</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$17</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!----->
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d1.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Fugiat nulla sint</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$30</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!----->
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d2.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Daute irure dolor</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$24</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!----->
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d3.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Officia deserunt mollit</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$60</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!----->
                <div class="item">
                    <div class="item-grid">
                        <div class="item-pic">
                            <img src="statics/images/d4.jpg" title="dish-name" />
                        </div>
                        <div class="item-info">
                            <div class="item-info-left">
                                <h4>Pim minim veniam</h4>
                                <span class="item-rate"> </span>
                            </div>
                            <div class="item-info-right">
                                <label>$17</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!----->
            </div>
            <!--//sreen-gallery-cursual---->
        </div>
    </div>
    <!----- fearuted-diesh ----->
    <!----- gallery ----->
    <div class="gallery">
        <div class="container">
            <h3>The Gallery</h3>
            <div class="gallery-grids">
                <div class="gallery-grids-left">
                    <div class="gallery-grid-left">
                        <img src="statics/images/g1.jpg" title="name" />
                        <div class="gallery-grid-left-caption">
                            <h4>Item Name</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi convallis, mi ac placerat iaculis, nulla sem eleifend felis, sed ullamcorper augue massa in</p>
                            <a class="more" href="#">ReadMore</a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!----->
                <div class="gallery-grids-right">
                    <div class="gallery-grids-right-top">
                        <div class="gallery-grids-right-top-grid">
                            <div class="gallery-grids-right-top-grid-pic">
                                <img src="statics/images/g2.jpg" title="name" />
                            </div>
                            <div class="gallery-grids-right-top-grid-caption">
                                <h4>Item Name</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi convallis, mi ac placerat iaculis, nulla sem eleifend felis, sed ullamcorper augue massa in</p>
                                <a class="more" href="reservation.jsp">ReadMore</a>
                            </div>
                        </div>
                        <div class="gallery-grids-right-top-grid">
                            <div class="gallery-grids-right-top-grid-pic">
                                <img src="statics/images/g3.jpg" title="name" />
                            </div>
                            <div class="gallery-grids-right-top-grid-caption">
                                <h4>Item Name</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi convallis, mi ac placerat iaculis, nulla sem eleifend felis, sed ullamcorper augue massa in</p>
                                <a class="more" href="reservation.jsp">ReadMore</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!----->
                    <div class="gallery-grids-right-bottom">
                        <div class="gallery-grids-right-top-grid">
                            <div class="gallery-grids-right-top-grid-pic">
                                <img src="statics/images/g4.jpg" title="name" />
                            </div>
                            <div class="gallery-grids-right-top-grid-caption">
                                <h4>Item Name</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi convallis, mi ac placerat iaculis, nulla sem eleifend felis, sed ullamcorper augue massa in</p>
                                <a class="more" href="reservation.jsp">ReadMore</a>
                            </div>
                        </div>
                        <div class="gallery-grids-right-top-grid">
                            <div class="gallery-grids-right-top-grid-pic">
                                <img src="statics/images/g5.jpg" title="name" />
                            </div>
                            <div class="gallery-grids-right-top-grid-caption">
                                <h4>Item Name</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi convallis, mi ac placerat iaculis, nulla sem eleifend felis, sed ullamcorper augue massa in</p>
                                <a class="more" href="reservation.jsp">ReadMore</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!----- gallery ----->
    <!----- footer ----->
    <div class="footer">
        <div class="container">
            <div class="footer-grids">
                <div class="col-md-3 footer-grid">
                    <p>
                        <span>New York Restaurant</span>
                        <span>3926 Anmoore Road</span>
                        <span>New York, NY 10014</span>
                        <span>718-749-1714</span>
                    </p>
                </div>
                <div class="col-md-3 footer-grid">
                    <p>
                        <span>France Restaurant</span>
                        <span>68, rue  de la Couronne</span>
                        <span>75002 PARIS</span>
                        <span>02.94.23.69.56</span>
                    </p>
                </div>
                <div class="col-md-3 footer-grid">
                    <ul>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer-grid copy-right">
                    <a href="#"><img src="statics/images/flogo.png" title="resto" /></a>
                    <p>Copyright © 2006-2026  上海尚学堂  All Rights Reserved  电话：021-67690939 QQ：3401997271 <a href="http://www.shsxt.com/" target="_blank" title="上海尚学堂">上海尚学堂</a></p>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!----- footer ----->

</body>
</html>

