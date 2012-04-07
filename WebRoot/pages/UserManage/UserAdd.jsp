<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户界面</title>
<script src='../../dwr/interface/Demo.js'></script>
<script src='../../dwr/engine.js'></script>
<script type='text/javascript' src='../../dwr/util.js'></script>
<script type="text/javascript" src="../../JS/jquery-1.7.2.js"></script>
<script type="text/javascript" src="../../My97DatePicker/WdatePicker.js"></script>
<SCRIPT type="text/javascript" type="text/javascript">
		
		//页面用户名重复验证
		function userNameAndDateChecked() {
			
			var name = dwr.util.getValue("userName");
		
			if(document.getElementById("password").value==""){
				dwr.util.setValue("demoReply", "密码不能为空！");
				return;
			}
			check();
			Demo.queryByName(name, function(data) {
				if(data!=null){
					dwr.util.setValue("demoReply", "用户名已经存在");
					return ;
				}else{
					document.forms[0].submit();
				}
			});
		}
		
		//下拉列表读数据库实现
		function getDataFromDB() {
			 
			//var name = "";
			Demo.queryAllRole(function(data) {
				if(data==null){
					dwr.util.setValue("demoReply", "数据库出错");
					return ;
				}else{
				var obj = document.getElementById("ss");	
				for(var i=0;i<data.length;i++){
					obj.add(new Option(data[i].name,data[i].id)); 
				}	
				}
			});
		}
		
		//密码空验证
		function checkPass(){
			if(document.getElementById("password").value==""){
				dwr.util.setValue("demoReply", "密码不能为空！");
				return;
			}
			document.forms[0].submit();
		}
		
		//邮箱有效性验证
		function check(){
			var email=$("#email").val();
			var isemail=(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)
			    if (email=="")
			    {
			alert("请输入您的邮箱!");
			
			return false;
			    }
			if (email.length>50)
			{
			alert("长度太长");
			return false
			}
			if (!isemail.test(email))
			{
			     alert("不是邮箱");
			   return false;
			}
			
		}
		
		function demoTest(){

		}
		
</SCRIPT>

</head>
<body onload="getDataFromDB()">
<table>
	<tr>
		<s:form action="/User/userAddAction.action" method="post">
			<table>
				<tr>
					<td >用户名称	</td> 
					<td ><s:textfield id="userName" name="user.name" /></td>
				</tr>
				<tr>
					<td>用户密码	</td>  
					<td ><s:password id="password" name="user.password" /></td>
				</tr>
				<tr>
					<td>用户邮箱	</td>
					<td><s:textfield id="email" name="user.e_mail"   /></td>
				</tr>
				
				<tr>
					<td>用户职位	</td>
					<td><s:select id='ss' name="user.role" list="{}" headerKey="-1" headerValue="请选择"  emptyOption=" false" multiple="false"/></td>
				</tr>
				
				<tr>
					<td>用户部门	</td>
					<td><s:textfield id="report_to" name="user.report_to" /></td>
				</tr>
				
				<tr>
					<td>注册时间	</td>
					<td><s:textfield id="regDate" name="user.regDate" onclick="WdatePicker({skin:'whyGreen',maxDate:'%y-%M-%d'})"/></td>
				</tr>
			</table>
		</s:form>
	</tr>
</table>
<div > <input type="button" value="添加!" onclick="userNameAndDateChecked()">
	   <input type="button" value="返回" onclick="parent.location.href('../../Test.jsp')">
</div><span id="demoReply"></span>

<input type="button" onclick="" value="下拉测试"/>
<span id="RoleInfo"></span>

</body>
</html>