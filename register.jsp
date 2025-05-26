<!--
 * register.jsp 
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
    
    <title><s:text name="page.title"/></title>
    
	<link href="resource/css/css.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="js/extjs/resources/css/ext-all.css"></link>
    <link rel="stylesheet" type="text/css" href="js/extjs/resources/css/ext-patch.css"></link>
	<script type="text/javascript" src="js/extjs/adapter/ext/ext-base.js"></script>
	<script type="text/javascript" src="js/extjs/ext-all.js"></script>
	<script type="text/javascript" src="js/extjs/src/locale/ext-lang-zh_CN.js"></script>
	
	<!--jquery的js类库  -->
	<script type="text/javascript" src="js/jquery/jquery.js"></script>
	<script type="text/javascript" src="js/jquery/jquery.form.js"></script>
	
	<!-- 页面的js -->
	<script type="text/javascript" src="js/common/common.js"></script>
	<script type="text/javascript" src="js/common/myExtComponent.js"></script>
	<script type="text/javascript" src="js/common/jquery.base64.js"></script>
	<script type="text/javascript" src="js/pay/register.js"></script>
	<script type="text/javascript" src="js/pay/init.js"></script>
	<script type="text/javascript" src="js/common/md5.js"></script>
	<style type="text/css">
		.inputColor {
			color:B29DA1;
		}
	</style>
	
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"3348",secure:"3353"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  <jsp:include page="InitParam.jsp"/>
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-486" data-genuitec-path="/payment/WebRoot/register.jsp" onLoad="init()">
  	<!--<s:form id="frm" action="login_register" theme="simple">-->
  	<s:hidden id="getsmscodeButton" value="%{getText('payment.getsmscode')}"/>
  	  
    <input type = "hidden" name = "PAY_SENDMSGPHONE" value = "" id = "PAY_SENDMSGPHONE"/>
	<table width="100%" height="100%"  border="0" cellspacing="0" cellpadding="2" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-486" data-genuitec-path="/payment/WebRoot/register.jsp">
		<tr>
	      <td align="center" valign="top" background="resource/images/xu.jpg"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#A9C5ED">
	    	<tr>
	      		<td height="40" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#A9C5ED">
		          <tr>
		            <td height="30" colspan="6" background="images/head_bg1.gif" class="td02"><strong><s:text name="payment.registerMsg"/></strong></td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		            	<font color="red">*</font><s:text name="payment.username"/>：
		            </td>
		            <td width="65%" class="td06">
		            	<s:textfield id="userid" name="userinfo.userid"/>
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		            	<font color="red">*</font><s:text name="payment.name"/>：
		            </td>
		            <td width="65%" class="td06">
		            	<s:textfield id="username" name="userinfo.username"/>
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		            	<font color="red">*</font><s:text name="payment.password"><s:text name="payment.username" /></s:text>：
		            </td>
		            <td width="65%" class="td06">
		            	<s:password id="password" name="userinfo.password" Style="width:152px" autocomplete="off"/>
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		            	<font color="red">*</font><s:text name="payment.repeatpassword"/>：
		            </td>
		            <td width="65%" class="td06">
		            	<s:password id="repassword" Style="width:152px" autocomplete="off"/>
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		            	<font color="red">*</font><s:text name="payment.email"/>：
		            </td>
		            <td width="65%" class="td06">
		            	<s:textfield id="email" name="userinfo.email"/>
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		<font color="red">*</font><s:text name="payment.id"/>：
		           		
		           		
		           		<!-- 
		           		<s:text name="payment.id"/>
		           		 -->
		           		
		           		
		           	</td>
		            <td width="65%" class="td06">
		            	<s:textfield id="idcardno" name="userinfo.idcardno" onblur="calcBirthday(this.value)"/>
		            </td>
		          </tr>
		          <!-- used in zhejiangdaxue wb -->
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="payment.passport"/>：
		           	</td>
		            <td width="65%" class="td06">
		            	<s:textfield id="passport" name="userinfo.passport"/>
		            </td>
		          </tr>
		          
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		            	<s:text name="payment.dateofbirth"/>：
		            </td>
		            <td width="65%" class="td06">
		            	<s:textfield id="birth" name="userinfo.birth" cssClass="inputColor" readonly="true"/>
		            </td>
		          </tr>
		          <tr  bgcolor="#ffffff" >
		            <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="payment.tel"/>：
		           	</td>
		            <td width="65%" class="td06">
		            	<s:textfield id="phone" name="userinfo.phone"/>
		            </td>
		          </tr> 
		          <tr  bgcolor="#ffffff" >
                    <td width="35%" class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
                        <s:text name="payment.company"/>：
                    </td>
                    <td width="65%" class="td06">
                        <s:textfield id="company" name="userinfo.company"/>
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
		            <td width="20%" class="td05" id = "smscodetext" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="right">
		           		 <s:text name="payment.smscode"/>：
		           	</td>
		            <td width="80%" class="td06" id = "smscodehide">
		            	<input type="text" width="30%" id = smscode name = "smscode"><input type="button" id = "msgBtn" value= "" onclick="sendMsg()"/>
		            </td>
		          </tr>
				   
		          <tr  bgcolor="#ffffff" >
		            <td class="td05" style="padding-right:16px; background-image: none; background-color: #EEF8FD; height:22 px;" align="center" colspan="4">
		            	<s:submit cssClass="but2" id = "but2" value="%{getText('payment.submission')}"/>
		            </td>
		          </tr></table>
		        </td>
	    	</tr></table>  
	      </td>
	  	</tr>
	</table>
	<!--</s:form>-->
  </body>
</html>
