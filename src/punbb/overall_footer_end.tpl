<!-- BEGIN html_validation -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<div>
	<div>
		<div>
			<div>
				<div>
					<div>
						<ul>
							<li>
<!-- END html_validation -->
							</li>
						</ul>
						<!-- BEGIN switch_footer_links -->
						<ul>
							<li>
								<!-- BEGIN footer_link -->
									<!-- BEGIN switch_separator -->&nbsp;|&nbsp;<!-- END switch_separator -->
									{switch_footer_links.footer_link.FOOTER_LINK_SEPARATOR}<a name="bottom" class="copyright" href="{switch_footer_links.footer_link.U_FOOTER_LINK_HREF}" rel="{switch_footer_links.footer_link.FOOTER_LINK_REL}" target="{switch_footer_links.footer_link.FOOTER_LINK_TARGET}" title="{switch_footer_links.footer_link.L_FOOTER_LINK_TITLE}">{switch_footer_links.footer_link.L_FOOTER_LINK_TEXT}</a>
								<!-- END footer_link -->
							</li>
						</ul>
						<!-- END switch_footer_links -->
					</div>
					<br />
					<p class="center">
						<strong>{ADMIN_LINK}</strong>
					</p>
				</div>
				{PROTECT_FOOTER}
			</div>
		</div>
	</div>
</div>

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

<script type="text/javascript">
//<![CDATA[
	fa_endpage();
//]]>
</script>
</body>
</html>