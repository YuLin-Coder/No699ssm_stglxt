function OpenUrl(Url,Width,Height,scrollbars,win){
  var top,left;
  top = (screen.height - Height)/2 - 50;
  left = (screen.width - Width)/2 - 50;
  var win = window.open(Url,win,"Width="+Width+",Height="+Height+",top="+top+",left="+left+",status=no,scrollbars="+scrollbars);
  win.focus();
}
function MenuHide(n){
 var obj = document.getElementsByTagName("div");
 for(var i=0;i<obj.length;i++)
	if(obj[i].id.indexOf("Menu") != -1){
		if(obj[i].id == "Menu_" + n)
			obj[i].style.display = "";
		else
			obj[i].style.display = "none";}
}
function GetOption(obj,val){
 for(var i=0;i<obj.length;i++){
	if(obj[i].value == val){
		obj.selectedIndex = i;}}
}
function MDC(p,d){
 return Math.floor(p*d/100);
}
function ShowMin(m,n,c1,c2,c3,c4){
 for(var i=1;i<=n;i++)
	if(m == i){
		document.getElementById(c3+i).className = c1;
		document.getElementById(c4+i).style.display = "";
		}
	else{
		document.getElementById(c3+i).className = c2;
		document.getElementById(c4+i).style.display = "none";
		}
}
function UpdateInfo(TableType){
	var xml_=null;
	 if(window.XMLHttpRequest)
		xml_ = new XMLHttpRequest();
	 else if(window.ActiveXObject)
		xml_ = new ActiveXObject("Microsoft.XMLHTTP");
		xml_.onreadystatechange = function(){
			//alert(xml_.responseText);
			//document.write("/admin/Flights/UpdateInfo.asp?TableType="+TableType+"nocache="+Math.random());
			if(xml_.readyState == 4){
				if(xml_.status == 200){	
				//alert(xml_.responseText);
					var T=xml_.responseText;
					if(T=="ok"){
						alert("更新成功");
						location.href=location.href;
						}
					else{
						alert(T);
					}
						
					}
				}
		}
		 xml_.open("POST","/admin/Flights/UpdateInfo.asp?nocache="+Math.random(),false);
		 xml_.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		 xml_.send("TableType="+TableType);
}