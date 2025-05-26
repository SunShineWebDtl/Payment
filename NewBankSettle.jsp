<!--
 * NewBankSettle.jsp 
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

        <link rel="stylesheet" href="./mobilePay/weui/lib/weui.css">
        <link rel="stylesheet" href="./mobilePay/weui/css/jquery-weui.css">

<!-- body 最后 -->
<script src="./mobilePay/weui/lib/jquery-2.1.4.js"></script>
<script src="./mobilePay/weui/js/jquery-weui.js"></script>
</head>

  <body style="background-image: url(resource/images_zju/bg.gif)">
  <span style="font-family:微软雅黑; color: black">
  
  <center>
   
  	<form action="NewBankSettle.jsp" method="post">
  	手工对账<br/>
  	 ----------------------------------------------------------------------------------------------------------------<br/>
		| 对账日期(YYYYMMDD)：<input type="text" name="date" id="date" value=''/>
		用户名：<input type="text" name="userid" id="userid" value=''/>
                显示信息：<select type="select" name="type" id="type">
                <option value="N" >漏单信息</option>
                <option value="Y" >全部信息</option>
                </select>
                	<s:hidden id="count" name="count" value="count"/>
		<input type="submit" value="对账" class="weui_btn weui_btn_mini weui_btn_primary" onclick="settle();"/>
    |<br/>----------------------------------------------------------------------------------------------------------------
    </form>
    <form action="NewBankSettle.jsp" method="post">
  		        订单号：<input type="text" name="billno" id="billno" value=''/>	
  		                        	<s:hidden id="count" name="count" value="count"/>
  	    <input type="submit" value="单笔订单对账" class="weui_btn weui_btn_mini weui_btn_primary" onclick="settle();"/>
  	</form>
  	</center>
 
	
		   <span style="color: red">请输入参数！</span>
			<br/>
			
			   				<script>$.showLoading();</script>
			   
				用户ID：<span style="color: orange"></span>
				用户姓名：<span style="color: orange"></span>
				缴费时间：<span style="color: orange"></span>
				订单数量：<span style="color: orange"></span>
				<br/>
					
								----------------------------------------------------------------------------------------------
								<br/>
						  		订单号：
					  			订单状态：<span style="color: red"></span>
					  			支付时间：
					  			支付金额：<span style="color: red"></span>
					  			银行代码： 
					  			
					  			<br/>
					  			返回代码：
					  			<br/>
					  			返回信息：
					  			<br/>
					  		    	
								----------------------------------------------------------------------------------------------
							  		<br/>
							  		订单号：
						  			订单状态：<span style="color: red"></span>
						  			支付时间：
						  			支付金额：<span style="color: red"></span>
						  			银行代码：
						  			<br/>
						  			返回代码：
						  			<br/>
						  			返回信息：
						  			<br/>
						  		    	
								----------------------------------------------------------------------------------------------
							  		<br/>
							  		订单号：
						  			订单状态：<span style="color: blue"></span>
						  			支付时间：
						  			支付金额：
						  			银行代码：
						  			<br/>
						  			返回代码：
						  			<br/>
						  			返回信息：<span style="color: blue"></span>
						  			<br/>
						  		    	
		----------------------------------------------------------------------------------------------
		        <script type="text/javascript">
		        $.hideLoading();
					alert("订单总笔数：              成功笔数：");
				</script>
		    
  </span>
  </body>
</html>
