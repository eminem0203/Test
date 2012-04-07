<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>

<title></title>
<!-- The xtree script file -->
<script src="JS/xtree.js"></script>

<!-- Modify this file to change the way the tree looks -->
<link type="text/css" rel="stylesheet" href="css/xtree.css">

<style>
	body { background: white; color: black; }
	input { width: 120px; }
</style>

</head>
<body>

<div style="position: absolute; width: 200px; top: 0px; left: 0px; height: 100%; padding: 5px; overflow: auto;">

<!-- js file containing the tree content, edit this file to alter the menu,
     the menu will be inserted where this tag is located in the document -->
<script src="JS/tree.js"></script>

</div>


</body>


<script>
function addNode() {
	if (tree.getSelected()) {
		tree.getSelected().add(new WebFXTreeItem('New'));
	}
}

function addNodes() {
	if (tree.getSelected()) {
		var foo = tree.getSelected().add(new WebFXTreeItem('New'));
		var bar = foo.add(new WebFXTreeItem('Sub 1'));
		var fbr = foo.add(new WebFXTreeItem('Sub 2'));
	}
}

function delNode() {
	if (tree.getSelected()) {
		tree.getSelected().remove();
	}
}
</script>
</html>
