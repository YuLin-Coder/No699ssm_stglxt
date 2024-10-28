function showmenu_item(sid)
{
	which = eval("menu_item" + sid);
	if (which.style.display == "none")
	{
		var i =8
		while(i<8){
			     eval("menu_item"+ i +".style.display=\"none\";");
			     eval("menuTitle"+ i +".background=\"../images/menusub_bg.jpg\";");
			i++;
		}
		eval("menu_item" + sid + ".style.display=\"\";");
		eval("menuTitle"+ sid + ".background=\"../images/menusub_bg.jpg\";")
	}else{
		eval("menu_item" + sid + ".style.display=\"none\";");
		eval("menuTitle"+ sid + ".background=\"../images/menusub_bg.jpg\";")
	}
}