function cc(tt) {
		var e = document.getElementById("pop");
		var t = tt.offsetTop; //TT�ؼ��Ķ�λ��� 
		var h = tt.clientHeight; //TT�ؼ�����ĸ� 
		var l = tt.offsetLeft; //TT�ؼ��Ķ�λ��� 
		var ttyp = tt.type; //TT�ؼ������� 
		while (tt = tt.offsetParent) {
			t += tt.offsetTop;
			l += tt.offsetLeft;
		}
		e.style.top = t-85;; //��� Y ���� 
		e.style.left =  -80; //��� X ���� 
		e.style.display = "block"; //����ʾ 
		e.style.textAlign = "center";
		e.innerText = window.event.srcElement.alt;
}