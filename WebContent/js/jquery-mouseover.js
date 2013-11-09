function cc(tt) {
		var e = document.getElementById("pop");
		var t = tt.offsetTop; //TT控件的定位点高 
		var h = tt.clientHeight; //TT控件本身的高 
		var l = tt.offsetLeft; //TT控件的定位点宽 
		var ttyp = tt.type; //TT控件的类型 
		while (tt = tt.offsetParent) {
			t += tt.offsetTop;
			l += tt.offsetLeft;
		}
		e.style.top = t-85;; //层的 Y 坐标 
		e.style.left =  -80; //层的 X 坐标 
		e.style.display = "block"; //层显示 
		e.style.textAlign = "center";
		e.innerText = window.event.srcElement.alt;
}