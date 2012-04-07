if (document.getElementById) {
	
var strFullPath = window.document.location.href;
var strPath = window.document.location.pathname;
var pos = strFullPath.indexOf(strPath);
var prePath = strFullPath.substring(0, pos);
var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
	
	var tree = new WebFXTree('Root');
	tree.setBehavior('classic');
	var userManage = new WebFXTreeItem('人员管理');
	tree.add(userManage);
	var userAdd = new WebFXTreeItem('人员添加');
	userAdd.action = "javascript:father_location('mainFrame','pages/UserManage/UserAdd.jsp')";
	
	var userQueryAll = new WebFXTreeItem('人员查询');
	userQueryAll.action = "javascript:father_location('mainFrame',postPath+'/User/userQueryActionByPage.action')";
	
	userManage.add(userAdd);
	userManage.add(userQueryAll);

	var f = new WebFXTreeItem('1.1.4');
	userManage.add(f);
	f.add(new WebFXTreeItem('1.1.4.1'));
	f.add(new WebFXTreeItem('1.1.4.2'));
	f.add(new WebFXTreeItem('1.1.4.3'));
	
	var c = new WebFXTreeItem('1.2');
	userManage.add(c);
	c.add(new WebFXTreeItem('1.5.1'));
	c.add(new WebFXTreeItem('1.5.2'));
	c.add(new WebFXTreeItem('1.5.3'));
	userManage.add(new WebFXTreeItem('1.3'));
	userManage.add(new WebFXTreeItem('1.4'));
	userManage.add(new WebFXTreeItem('1.5'));
	var bookManage = new WebFXTreeItem('图书管理');
	tree.add(bookManage);
	var addBook = new WebFXTreeItem('新增图书');
	var updateBook = new WebFXTreeItem('修改图书');
	var queryBook = new WebFXTreeItem('查询图书');
	var deleteBook = new WebFXTreeItem('删除图书');
	bookManage.add(addBook);
	bookManage.add(updateBook);
	bookManage.add(queryBook);
	bookManage.add(deleteBook);
	document.write(tree);
}
function father_location(subframe, locate)//将右边的frame显示为响应内容
{
	parent.frames[subframe].location = locate;
}
