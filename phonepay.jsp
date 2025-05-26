<!--
 * phonepay.jsp 
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






<!DOCTYPE HTML>
<html>
<head>

        <link rel="stylesheet" href="./mobilePay/weui/lib/weui.css">
        <link rel="stylesheet" href="./mobilePay/weui/css/jquery-weui.css">

<!-- body 最后 -->
<script src="./mobilePay/weui/lib/jquery-2.1.4.js"></script>
<script src="./mobilePay/weui/js/jquery-weui.js"></script>
</head>



<body>
  	<form action="http://www.jdcw.sjtu.edu.cn/payment/pay/mobileAppPay.action" method="post" name="sendOrder">
  		<input id="sign" type="hidden" name="sign" value="">
        <input id="sysid" type="hidden" name="sysid" value="">
  		<input id="data" type="hidden" name="data" value="">
  		<input id="subsysid" type="hidden" name="subsysid" value="">
  	</form>
  </body>
  
  <script type="text/javascript">
		sendOrder.submit();
	</script>
  
  
</html>
