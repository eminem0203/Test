<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type='text/javascript' src='../dwr/util.js'></script>
		<script type="text/javascript" src="../JS/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
		<SCRIPT type="text/javascript">
		function preData(){
			
			
		}
		</SCRIPT>
		<title>修改用户界面</title>
		
	</head>
	
	<body onload="preData()">
		<table>
			<tr>
				<s:form action="/User/userUpdateAction.action" method="post">
					<table>
						<tr>
							<td>
								<s:hidden id = "userId" name = "user.id"></s:hidden>
							</td>
						</tr>					
					
						<tr>
							<td>
								用户名称
							</td>
							<td>
								<s:textfield id="userName" name="user.name" />
							</td>
						</tr>
						<tr>
							<td>
								用户密码
							</td>
							<td>
								<s:textfield id="userPassword" name="user.password" />
							</td>
						</tr>
						<tr>
							<td>
								用户邮箱
							</td>
							<td>
								<s:textfield id="userEmail" name="user.e_mail" />
							</td>
						</tr>

						<tr>
							<td>
								用户职位
							</td>
							<td>
								<s:textfield id="userRole" name="user.role" />
								
							</td>
						</tr>

						<tr>
							<td>
								用户部门
							</td>
							<td>
								<s:textfield id="userReport_to" name="user.report_to" />
							</td>
						</tr>
						
						<tr>
							<td>
								入职时间
							</td>
							<td>
								<s:textfield id="regDate" name="user.regDate" onclick="WdatePicker()"/>
							</td>
						</tr>

						<tr>
							<td>
								<input id="userUpdate" type="submit" value="修改" />
							</td>
							<td>
								<input id="userUpdate" type="button" value="返回" onclick="window.location.href('userQueryActionByPage.action')"/>
							</td>
						</tr>
					</table>
				</s:form>
			</tr>
		</table>
	</body>
</html>