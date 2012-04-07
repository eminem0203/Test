<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>显示用户界面</title>
		
		<script type="text/javascript" src="../../JS/jquery-1.7.2.js"></script>
		<script type="text/javascript">
		function pageJudge(){
			if(${pageNow}==1){
				//$('#pageOne').attr('disabled','true');
				//document.getElementById("pageOne").removeAttribute("href");
				document.getElementById("pageOne").disabled = "disabled";
				document.getElementById("prePage").disabled = "disabled";
				
			}
			if(${pageNow}==${pageCount}){
				document.getElementById("pageLastOne").disabled = "disabled";
				document.getElementById("nextPage").disabled = "disabled";
			}
		}
		</script>
	</head>
	<body onload="pageJudge()">

		<table align="center">
			<tr>
				<td>
					用户编号
				</td>
				<td>
					用户名称
				</td>
				<td>
					用户密码
				</td>
				<td>
					用户邮箱
				</td>
				<td>
					角色
				</td>
				<td>
					所属部门
				</td>
				<td>
					入职时间
				</td>
			</tr>
			<s:iterator value="userList" >
				<tr>
					<td>
						<s:property value="id" />
					</td>
					<td>
						<s:property value="name" />
					</td>
					<td>
						<s:property value="password" />
					</td>
					<td>
						<s:property value="e_mail" />
					</td>
					<td>
						<s:property value="role"  />
					</td>
					<td>
						<s:property value="report_to" />
					</td>
					<td>
						<s:date name="regDate" format="yyyy年MM月dd日"/>
					</td>
					<td>
						<a
							href="<%=request.getContextPath()%>/User/userShowSingleAction.action?user.id=<s:property value='id' />">用户详细信息</a>
						<a
							href="<%=request.getContextPath()%>/User/userShowSingleAction.action?user.id=<s:property value='id' />">修改</a>
						<a
							href="<%=request.getContextPath()%>/User/userPrePasswordUpdateAction.action?user.id=<s:property value='id' />">密码修改</a>
						<a href="#"
							onclick="if(window.confirm('确定删除')){window.location='<%=request.getContextPath()%>/User/userDeleteAction.action?user.id=<s:property value='id' />'}">删除</a>
					</td>

				</tr>
			</s:iterator>
			<tr>
				<td>
					<input type="button" value="添加新用户"
						onclick="window.location.href='<%=request.getContextPath()%>/pages/UserManage/UserAdd.jsp'" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="返回主界面"
						onclick="window.location.href='<%=request.getContextPath()%>/Test.jsp'" />
				</td>
			</tr>
		</table>

		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr align="center">
				<td>
					共<s:property value="totalCount" />条记录
					
					共<s:property value="pageCount" />页
					
					当前第<s:property value="pageNow" />页
				</td>
				<td>
						<a
							href="<%=request.getContextPath()%>/User/userQueryActionByPage.action" id="pageOne" >第一页</a>
						<a
							href="<%=request.getContextPath()%>/User/userQueryActionByPage.action?pageNow=${pageNow-1}" id="prePage">上一页</a>
						<a
							href="<%=request.getContextPath()%>/User/userQueryActionByPage.action?pageNow=${pageNow+1}" id="nextPage">下一页</a>
						<a
							href="<%=request.getContextPath()%>/User/userQueryActionByPage.action?pageNow=${pageCount}" id="pageLastOne">最后一页</a>
				</td>
			</tr>
		</table>
	</body>
</html>