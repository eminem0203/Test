<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>主页</title>
	</head>

	<body>
		<br />
		<br />
		<br />
		<table align="center">

			<tr>
				<td>
					<input type="button" value="添加用户"
						onclick="window.location.href='pages/UserManage/UserAdd.jsp'" />
				</td>

				<td>
					<input type="button" value="查詢所有用户"
						onclick="window.location.href='<%=request.getContextPath()%>/User/userQueryActionByPage.action'" />
				</td>
				<td>
					<input type="button" value="按条件查詢用户"
						onclick="window.location.href='pages/UserManage/UserQuery.jsp'" />
				</td>
				
				<td>
					<input type="button" value="上傳文件"
						onclick="window.location.href='pages/UserManage/FileUpload.jsp'" />
				</td>
			</tr>

		</table>
	</body>
</html>