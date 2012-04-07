<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>文件上传</title>

	</head>

	<body>
		<s:form action="fileUploadAction" enctype="multipart/form-data"
			method="post">
			<s:textfield name="username" label="文件标题"></s:textfield>
			<br />
			<s:file name="myFile" label="选择文件"></s:file>
			<s:submit value="上传"></s:submit>
		</s:form>

	</body>

</html>