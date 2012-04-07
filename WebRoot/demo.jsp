<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">

<html>
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
<div style="position: absolute; left: 205px; top: 10px;">

<p>
  This tree works just as the one found in the Microsoft Windows Explorer,
  expand/collapse a tree item by double click on the icon or by single click
  on the plus/minus symbol.<br/>Buttons below bound to the tree root.
</p>

<p>
	This is the method thats called when you click on a tree item.<br/>
	<input type="button" value="toggle()" onclick="tree.toggle();">
</p>
<p>
	Pretty self explaining, expands or collapses the current item.<br/>
	<input type="button" value="expand()" onclick="tree.expand();">
	<input type="button" value="collapse()" onclick="tree.collapse();">
</p>
<p>
	Expands or collapses the current item and all child items (recursive).<br/>
	<input type="button" value="expandAll()" onclick="tree.expandAll();">
	<input type="button" value="collapseAll()" onclick="tree.collapseAll();">
</p>
<p>
	Expands or collapses all child items (recursive) but not the item itself.<br/>
	<input type="button" value="expandChildren()" onclick="tree.expandChildren();">
	<input type="button" value="collapseChildren()" onclick="tree.collapseChildren();">
</p>
<p>
	Returns the id of the selected item (if any)<br/>
	<input type="button" value="alert(tree.getSelected().id);" onclick="if (tree.getSelected()) { alert(tree.getSelected().id); }" style="width: 245px;">
</p>
<p>
  Add node(s) below selected, or remove the selected node.<br/>
  <input type="button" onclick="addNode();"  style="width: 80px;" value="Add one" />
  <input type="button" onclick="addNodes();" style="width: 80px;" value="Add multiple" />
  <input type="button" onclick="delNode();"  style="width: 80px;" value="Remove" />
</p>

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
