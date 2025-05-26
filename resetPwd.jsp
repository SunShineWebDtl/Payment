<!--
 * resetPwd.jsp 
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




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>支付平台</title>
    	
    	
    	
    
	<link href="resource/css/css.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="js/extjs/resources/css/ext-all.css"></link>
    <link rel="stylesheet" type="text/css" href="js/extjs/resources/css/ext-patch.css"></link>
	<script type="text/javascript" src="js/extjs/adapter/ext/ext-base.js"></script>
	<script type="text/javascript" src="js/extjs/ext-all.js"></script>
	<script type="text/javascript" src="js/extjs/src/locale/ext-lang-zh_CN.js"></script>
	
	<!--jquery的js类库  -->
	<script type="text/javascript" src="js/jquery/jquery.js"></script>
	<script type="text/javascript" src="js/jquery/jquery.form.js"></script>
	<script type="text/javascript" src="js/common/md5.js"></script>
	<!-- 页面的js -->
	<script type="text/javascript" src="js/common/common.js"></script>
	<script type="text/javascript" src="js/common/jquery.base64.js"></script>
	<script type="text/javascript" src="js/common/myExtComponent.js"></script>
	<script type="text/javascript" src="js/pay/resetPwd.js"></script>
	<script type="text/javascript" src="js/pay/init.js"></script>
	
	<style type="text/css">
		.inputColor {
			color:B29DA1;
		}
		
	</style>
 
	
  <jsp:include page="InitParam.jsp"/>
  
  	
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-490" data-genuitec-path="/payment/WebRoot/resetPwd.jsp" onload="init()">
	<s:hidden id="telphone" value="" />
	<s:hidden id="username" value="" />
	<input type = "hidden" value = "" id = "PAY_SENDMSGPHONE"/>
	
    
      <table width="100%" height="100%"  border="0" cellspacing="0" cellpadding="2" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-490" data-genuitec-path="/payment/WebRoot/resetPwd.jsp">
		<tr>
	      <td align="center" valign="top" background="resource/images/xu.jpg"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#A9C5ED">
	    	<tr>
	      		<td height="40" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#A9C5ED">
		          <tr>
		            <td height="30" colspan="6" background="images/head_bg1.gif" class="td02"><strong><s:text name="resetpwd.tktitle"/></strong></td>
		          </tr>
				   
					<tr  bgcolor="#ffffff" >
					<td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		            	<s:text name="payment.username"/>：
		            </td>
		            <td width="65%" class="td06">
		            	<input type="text" id = "userid" name = "userid" >
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="payment.id"/>：
		           	</td>
		            <td width="65%" class="td06">
		            	<input type="text" id = "idcardno" name = "idcardno">
		            </td>
		          </tr>
				   
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" id = "passwordtext" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="resetpwd.newpassword"/>：
		           	</td>
		            <td width="65%" class="td06" id = "passwordhide">
		            	<input type="password" id = "password" autocomplete="off" name = "password" onblur="checkPassword(this.value)">
		            </td>
		          </tr>
		           <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" id = "repasswordtext" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="payment.repeatpassword"/>：
		           	</td>
		            <td width="65%" class="td06" id = "repasswordhide">
		            	<input type="password" id = "repassword"  autocomplete="off" name = "repassword" onblur="checkRePassword(this.value)">
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" id = "checkcodetext" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="init.imgcode"/>：
		           	</td>
		            <td width="65%" class="td06" id = "checkcodehide">
		            	<input type="text" id = "checkcode" name = "checkcode"><img id="img" onclick="changeRandom()" src="randomAction.action">
		            </td>
		          </tr>
				  
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" id = "smscodetext" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="payment.smscode"/>：
		           	</td>
		            <td width="65%" class="td06" id = "smscodehide">
		            	<input type="text" id = smscode name = "smscode"><input type="button" id = "msgBtn" value= "" onclick="sendMsg()"/>
		            </td>
		          </tr>
				  
		          <tr  bgcolor="#ffffff" >
		            <td class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="center" colspan="4">
		            	
						<input type="submit" vaule="提交" id="but2" c1ass="submitBtn" style=" background-color: #3A7FC6;border: none;color: white;padding: 0px 32px;text-align: center;text-decoration: none; display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;border-radius: 4px;width:100px;height:30px;"/>
						<!--<s:submit cssClass="but2" id = "but2" value="提交" />-->
		            </td>
		          </tr></table>
		        </td>
	    	</tr></table>  
	      </td>
	  	</tr>
	</table>
  </body>
</html>
