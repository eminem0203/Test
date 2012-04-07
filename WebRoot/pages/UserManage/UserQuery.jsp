<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询用户界面</title>
<script type="text/javascript" src="../../JS/jquery-1.7.2.js"></script>
<script type="text/javascript" src="../../My97DatePicker/WdatePicker.js"></script>

</head>
<body >
<table>
	<tr>
		<s:form action="/User/userQueryByNameAction.action" method="post">
			<table>
				<tr>
					<td >用户名称</td> 
					<td ><s:textfield id="userName" name="userQueryModel.name" /></td>
				</tr>
				<tr>
					<td>注册时间从</td>
					<td><s:textfield id="regDateFrom" name="userQueryModel.from" onclick="WdatePicker()"/></td>
				</tr>
				
				<tr>
					<td>注册时间到</td>
					<td><s:textfield id="regDateTo" name="userQueryModel.to" onclick="WdatePicker()"/></td>
				</tr>
				<input id="userQueryByName" type="submit"  />				
			</table>
		</s:form>
	</tr>
</table>
<div > 
	   <input type="button" value="返回" onclick="parent.location.href('../../Test.jsp')">
</div>	   
</body>
</html>