<!--
 * login-20210617.jsp 
 * Copyright (C) 2011-2035 Shanghai Fuyi Software Development Co., Ltd 
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
-->




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上海交通大学网上支付平台登录</title>

<link href="resource/css/css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="js/extjs/resources/css/ext-all.css"></link>
<link rel="stylesheet" type="text/css" href="js/extjs/resources/css/ext-patch.css"></link>
<script type="text/javascript" src="js/extjs/adapter/ext/ext-base.js"></script>
<script type="text/javascript" src="js/extjs/ext-all-debug.js"></script>
<script type="text/javascript" src="js/extjs/src/locale/ext-lang-zh_CN.js"></script>

<!--jquery的js类库  -->
<script type="text/javascript" src="js/jquery/jquery.js"></script>
<script type="text/javascript" src="js/jquery/jquery.form.js"></script>
<!-- 页面的js -->
<script type="text/javascript" src="js/common/myExtComponent.js"></script>
<script type="text/javascript" src="js/pay/login.js"></script>
<link href="resource/css/css2.css" rel="stylesheet" type="text/css">

<style type="text/css">

input:-webkit-autofill { 
-webkit-box-shadow: 0 0 0px 1000px white inset;
} 

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th,div,span,input {
	font-family: 微软雅黑;
	font-size: 12px;
}

a:link{
	color: #333333;
	text-decoration: none;
}
a:visited{
	color: #333333;
	text-decoration: none;
}
input[type=text]:focus, input[type=password]:focus {
    border: 2px solid #f00;
}
</style></head>

<body onLoad="init()">

<s:hidden id="errMsgHidden" name="errMsg"/>
    
<!-- 国际化参数 -->
<s:hidden id="alert1" value="%{getText('login.alert1')}"/>
<s:hidden id="alert2" value="%{getText('login.alert2')}"/>
<s:hidden id="alert3" value="%{getText('login.alert3')}"/>

<s:hidden id="yes" value="%{getText('global.yes')}"/>
<s:hidden id="no" value="%{getText('global.no')}"/>
<s:hidden id="ok" value="%{getText('global.ok')}"/>
<s:hidden id="cancel" value="%{getText('global.cancel')}"/>

<!-- 登录和注册按钮 -->
<s:hidden id="loginButton" value="%{getText('login.login')}"/>
<s:hidden id="registerButton" value="%{getText('login.register')}"/>

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="100" style="background:#9A2432 url(resource/images/sjtuLogin/top.jpg ) no-repeat;">&nbsp;</td>
  </tr>
  <tr>
  	<!--<s:form action="loginAction" id="login" theme="simple" onsubmit="return check();">-->
     
	<td height="592" id = "td1" valign="top" style="background:#fff url(resource/images/sjtuLogin/bg1.jpg ) no-repeat;">
    <table width="629" id="tab1" border="0" cellpadding="0" cellspacing="0">
       
        <td height="72" colspan="6" style="padding-left:150px;padding-top:150px;"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr align="left" valign="bottom">
			<td colspan="2"><a href="login2.jsp"><img id="registerImg" width="200" height="55" title="校内师生（含离退休人员、新生）登录，使用jAccount账号登录，若无jAccount账号，点击进入后可创建jAccount账号"></a></td>
			<td rowspan="5"><img src="resource/images/sjtuLogin/qrcode.jpg" width="128" title="校内师生（含已退休人员、新生）登录，使用jAccount账号登录，若无jAccount账号，点击进入后可创建jAccount账号"></td>
		  </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr align="left" style="padding-left:200px;padding-top:0px; "valign="bottom">
            <td colspan="2"><a href="javascript:login1();" id="loginbtn" ><img id="loginImg" width="200" height="55" title="校外人员（含已离校师生）登录"></a></td>
		 </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        </tr>
		<tr>
      </tr>
      <tr>
        <td height="51" colspan="4">&nbsp;</td>
        </tr>
    </table>
	<table width="629" id="tab2" border="0" cellpadding="0" cellspacing="0" style="display:none; ">
      <tr>
        <td width="175" height="122">&nbsp;</td>
        <td colspan="1">&nbsp;</td>
        <td width="171">&nbsp;</td>
      </tr>
      <tr>
        <td height="51">&nbsp;</td>
        <td colspan="1" width="150" ><input name=userid id="uid" type="text" onblur="cleanSpelChar(this.value);" size="40" style="border:0;height:30px;width:100px;" tabindex="1"></td>
        <td align="left" rowspan="2"><a href="javascript:register();" style = "font-size:20px;">【<s:text name="login.registername"/>】</a></td>
		<!--<td rowspan="5"><img src="resource/images/sjtuLogin/qrcode.jpg" width="128">
          <table width="128"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="0" align="center"></td>
            </tr>
          </table></td>-->
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        </tr>
      <tr>
        <td height="52">&nbsp;</td>
        <td colspan="1" ><input name="password" id="pwd" onblur="cleanSpelChar(this.value);" type="password" size="40" style="border:0;height:30px;width:100px;" tabindex="2"></td>
		<td rowspan="2" align="left"><a href="javascript:resetPwd();" style = "font-size:20px;">【<s:text name="login.resetpassword"/>】</a></td>
		</tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        </tr>
      <tr>
        <td height="40">&nbsp;</td>
        <td colspan="1" ><input name="random" id="chkcode" type="text" size="20" maxlength="4" style="border:0;height:30px;width:100px;" tabindex="3"></td>
        <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="randomAction.action"></td>
		
      </tr>
      <tr>
        <td height="72" colspan="4" style="padding-left:30px;padding-right:20px; "><table width="100%"  border="0" cellpadding="0" cellspacing="0">
          <tr align="center" valign="bottom">
            <td rowspan="3" style="padding-left:70px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:login();" id="loginbtn2" ><img id="loginImg1"  height="55"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:loginback();" id="loginback" ><img id="loginImg2"  height="55"></a></td>
            <td rowspan="3" width="150" height="55"><!--<a href="login2.jsp"><img id="registerImg" width="125" height="55"></a>-->&nbsp;</td>
          </tr>
		  <tr align="center" valign="bottom">
			
		  </tr>
          <tr align="center" valign="bottom">
            <!--<td align="left"  valign="middle"><a href="javascript:downloadFile();">【<s:text name="login.downloadfile"/>】</a></td>-->
          </tr>
        </table></td>
        </tr>
      <tr>
        <td height="51" colspan="4">&nbsp;</td>
        </tr>
    </table>
	<!--<table width="629" id="tab2" border="0" cellpadding="0" cellspacing="0" style="display:none; ">
       
        <td height="72" colspan="6" style="padding-left:200px;padding-top:150px;"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr align="left" valign="bottom">
            <td colspan="2"><a href="javascript:login();" id="loginbtn2" ><img id="loginImg" width="123" height="55"></a></td>
			<td rowspan="5"><img src="resource/images/sjtuLogin/qrcode.jpg" width="128"></td>
		  </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
		  <tr align="left" style="padding-left:200px;padding-top:0px; "valign="bottom">
            <td colspan="2"><a href="login2.jsp"><img id="registerImg" width="125" height="55"></a></td>
		 </tr>
		  <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        </tr>
		<tr>
      </tr>
      <tr>
        <td height="51" colspan="4">&nbsp;</td>
        </tr>
    </table>-->
	</td> 
	 
	
    <!--</s:form>-->
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
