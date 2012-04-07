<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<head>
		<title>主页Main Page</title>
	</head>
	
	<frameset rows="15%,*,10%">
		<frame name="headFrame" src="web-images/background-left.jpg" marginheight="0" marginwidth="0" height="200" scrolling="no">
		</frame>
		<frameset cols="20%,*" scrolling ="auto">
			<frame name="heardFrame" src="tree.jsp"></frame>
			<frame name="mainFrame"></frame>
		</frameset>
		<frame name="downFrame" src="copyright.jsp" scrolling="no"></frame>
	</frameset>
</html>