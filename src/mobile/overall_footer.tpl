<!-- BEGIN html_validation -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <div>
        <main>
<!-- END html_validation -->
        {PROTECT_FOOTER}
        <a id="to-top" href="#wrap"><i class="material-icons">&#xE316;</i></a>
        <div class="application_footer_spacer"></div>
        </main>
    </div>
<script type="text/javascript">
//<![CDATA[
    fa_endpage();
//]]>
</script>
<script src="{JQUERY_DIR}touch-swipe/v1.6.18/jquery.touchSwipe.min.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
    $(document).ready(function() {
        $(".forum-section").each(function() {
            var forumName = $(this).find("h3");
            var statsWidth = $(this).find(".forum-statistics").outerWidth();
            var forumNamePadding = statsWidth + 8;

            if ((forumName.width() / 1.5) < statsWidth) {
                $(forumName).css("padding-bottom", "30px");
                $(this).find(".forum-statistics").css("margin-top", "27px");
            } else {
                if ($("body").css("direction").toLowerCase() == "rtl") {
                    $(forumName).css("padding-left", forumNamePadding);
                } else {
                    $(forumName).css("padding-right", forumNamePadding);
                }
            }
        });

        $(".forum-icon, .post-icon").each(function() {
            var image = $(this).find("img");

            image.error(function() {
                $(this).parent('a').remove();
                $(this).remove();
            });
        });

        setTimeout(floatingButtonPosition, 2000);
        alterMenuIcons();
    });

    $(function() {
        var backLink = $('.mobile_prev_button.block').attr('href');
        var nextLink = $('.mobile_next_button.block').attr('href');

        if (backLink || nextLink) {

            if (backLink) {
                var swipeBackArrow = $('<div>', {
                    id: 'swipe_back_arrow',
                    css: {
                        opacity: 0
                    },
                    text: ''
                });
                $('body').append(swipeBackArrow);
                var swipeBackArrow = $('#swipe_back_arrow');
            }

            if (nextLink) {
                var swipeNextArrow = $('<div>', {
                    id: 'swipe_next_arrow',
                    css: {
                        opacity: 0
                    },
                    text: ''
                });
                $('body').append(swipeNextArrow);
                var swipeNextArrow = $('#swipe_next_arrow');
            }

            $(window).swipe( {
                swipeStatus:function(event, phase, direction, distance)
                {
                    var arrowPos = 0;
                    var arrowOpacity = 0;

                    if (backLink) {
                        swipeBackArrow.removeAttr('style');
                    }

                    if (nextLink) {
                        swipeNextArrow.removeAttr('style');
                    }

                    if ($("body").css("direction").toLowerCase() == "rtl") {
                        if ((phase=="move") && (direction=="right") && nextLink) {
                            var arrowPos = (distance / 200) * 40;
                            var arrowOpacity = distance / 200;
                            swipeNextArrow.css('left', arrowPos);
                            swipeNextArrow.css('opacity', arrowOpacity);
                            destLink = nextLink;
                        } else if ((phase=="move") && (direction=="left") && backLink) {
                            var arrowPos = (distance / 200) * 40;
                            var arrowOpacity = distance / 200;
                            swipeBackArrow.css('right', arrowPos);
                            swipeBackArrow.css('opacity', arrowOpacity);
                            destLink = backLink;
                        } else if ((phase=="end") && (direction=="right") && nextLink) {
                            swipeNextArrow.css('left', arrowPos);
                            swipeNextArrow.css('opacity', 0);
                            window.location.href = destLink;
                        } else if ((phase=="end") && (direction=="left") && backLink) {
                            swipeBackArrow.css('right', arrowPos);
                            swipeBackArrow.css('opacity', 0);
                            window.location.href = destLink;
                        }
                    } else {
                        if ((phase=="move") && (direction=="left") && nextLink) {
                            var arrowPos = (distance / 200) * 40;
                            var arrowOpacity = distance / 200;
                            swipeNextArrow.css('right', arrowPos);
                            swipeNextArrow.css('opacity', arrowOpacity);
                            destLink = nextLink;
                        } else if ((phase=="move") && (direction=="right") && backLink) {
                            var arrowPos = (distance / 200) * 40;
                            var arrowOpacity = distance / 200;
                            swipeBackArrow.css('left', arrowPos);
                            swipeBackArrow.css('opacity', arrowOpacity);
                            destLink = backLink;
                        } else if ((phase=="end") && (direction=="left") && nextLink) {
                            swipeNextArrow.css('right', arrowPos);
                            swipeNextArrow.css('opacity', 0);
                            window.location.href = destLink;
                        } else if ((phase=="end") && (direction=="right") && backLink) {
                            swipeBackArrow.css('left', arrowPos);
                            swipeBackArrow.css('opacity', 0);
                            window.location.href = destLink;
                        }
                    }
                },
                triggerOnTouchEnd: true,
                triggerOnTouchLeave: false,
                threshold: 200,
                allowPageScroll: "vertical"
            });
        }
    });

    function floatingButtonPosition() {
        if ($("#at-share-dock").length) {
            $(".btn-floating, #to-top").css("marginBottom", "50px");
        }; 
    };

    function alterMenuIcons() {
        $('#mNavbar').find('.navBtnIcon').each(function() {
            switch ($(this).css('backgroundPosition')) {
                case '-32px 0px':
                    $(this).html('<i class="material-icons">&#xE88A;</i>');
                    break;
                case '-64px 0px':
                    $(this).html('<i class="material-icons">&#xE8AC;</i>');
                    break;
                case '0px 0px':
                    $(this).html('<i class="material-icons">&#xE30C;</i>');
                    break;
                case '-96px 0px':
                    $(this).html('<i class="material-icons">&#xE8AC;</i>');
                    break;
                case '-128px 0px':
                    $(this).html('<i class="material-icons">&#xE7FE;</i>');
                    break;
                case '-160px 0px':
                    $(this).html('<i class="material-icons">&#xE7F4;</i>');
                    $(this).addClass('BtnNotif');
                    break;
                case '-192px 0px':
                    $(this).html('<i class="material-icons">&#xE254;</i>');
                    break;
            }
        });
    };
  
    $('#to-top').click(function(e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }, 400);
    });

    $(document).scroll(function() {
        var y = $(this).scrollTop();
        if (y > 164) {
            $('#to-top').addClass('visible');
        } else {
            $('#to-top').removeClass('visible');
        }
    });
 
    $(window).load(function(){
        var avatar_style;

        $('.forum-avatar img').each(function(){
            avatar_style = (this.width/this.height > 1) ? 'height: 100%; width: auto;' : 'height: atuo; width:100%;';
            $(this).attr('style', avatar_style);
        })
    })
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
    $(document).ready(function() {
        if(_userdata['activate_toolbar'] && _userdata['session_logged_in']) {
            Toolbar.init;
            var timeout = setInterval(reloadNotif, 1000);
            $("#header").prepend('<a id="mNotificationBtn" href="./profile?mode=editprofile&page_profil=notifications"></a>');
            $("#mNotificationBtn").prepend('<span id="unread_notif">' + _toolbar.notifications.unread + '</span>');
            $('.BtnNotif').prepend('<span id="unread_notif_menu">' + _toolbar.notifications.unread + '</span>');
        };

        function reloadNotif() {
            if (_toolbar.notifications.unread > 0) {
                var unread_notif = $("#unread_notif");
                var unread_notif_menu = $("#unread_notif_menu");

                unread_notif.html(_toolbar.notifications.unread);
                unread_notif_menu.html(_toolbar.notifications.unread);
                if(! unread_notif.hasClass("notification-new")) {
                    unread_notif.addClass('notification-new');
                    unread_notif_menu.addClass('notification-new');
                    $("#mNotificationBtn").addClass('notification-new');
                }
            }
        };
    });
//]]>
</script>
    <!-- BEGIN switch_facebook_login -->
    <div id="fb-root"></div>
    <script type="text/javascript">
        $(document).ready( function() {
            $('div.fb-login-button, span.fb-login-button').attr({
                "data-scope": "{switch_facebook_login.FB_SCOPE}",
                "data-max-rows": "{switch_facebook_login.FB_MAX_ROWS}",
                "data-size": "{switch_facebook_login.FB_BUTTON_SIZE}",
                "data-show-faces": "{switch_facebook_login.FB_SHOW_FACES}",
                "data-auto-logout-link": "{switch_facebook_login.FB_AUTO_LOGOUT}"
            });
            $('div.fb-login-button, span.fb-login-button').each(function() {
                if(typeof $(this).attr('onlogin') == typeof undefined || $(this).attr('onlogin') === false) {
                    $(this).attr('onlogin', '{switch_facebook_login.FB_ONLOGIN}');
                }
                if($(this).html() == '') {
                    $(this).html('{switch_facebook_login.FB_LABEL}');
                }
            });

            FB.init({
                appId   : "{switch_facebook_login.FB_APP_ID}",
                cookie  : {switch_facebook_login.FB_COOKIE},
                xfbml   : {switch_facebook_login.FB_XFBML},
                oauth   : {switch_facebook_login.FB_OAUTH},
                version : '{switch_facebook_login.FB_VERSION}'
            });

            (function(d, s, id){
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {return;}
                    js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/{switch_facebook_login.FB_LOCAL}/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        });
        function onLoginFB() {
            window.location.replace('{switch_facebook_login.FB_ONLOGIN_URL}')
        }
    </script>
    <!-- END switch_facebook_login -->
</body>
</html>