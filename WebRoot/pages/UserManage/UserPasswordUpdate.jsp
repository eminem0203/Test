<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>修改用户密码界面</title>
	</head>
	
	<body>
		<table>
			<tr>
				<s:form action="/User/userPasswordUpdateAction.action" method="post">
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
								用户旧密码
							</td>
							<td>
								<s:textfield id="userOldPassword" name="oldPassword" />
							</td>
						</tr>
						<tr>
							<td>
								用户新密码
							</td>
							<td>
								<s:textfield id="userNewPassword" name="password" />
							</td>
						</tr>

						<tr>
							<td>
								重复新密码
							</td>
							<td>
								<s:textfield id="userNewPassword2" name="rePassword" />
							</td>
						</tr>

						<tr>
							<td>
								<input id="userPasswordUpdate" type="submit" value="修改密码" />
							</td>
						</tr>
					</table>
				</s:form>
			</tr>
		</table>
	</body>
</html>