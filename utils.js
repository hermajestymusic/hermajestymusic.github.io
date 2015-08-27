function win(url, name, width, height)
{
	var appearance = "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no,width=" + width + ",height=" + height;
	w = window.open(url,name,appearance);

   var x = (screen.availWidth - width)/2;
   var y = (screen.availHeight - height)/2;

   w.moveTo(x, y);
}

function fixSize()
{
   var w = document.pix.width + 50;
   var h = document.pix.height + 70;

   if (screen.availWidth < w) { w = screen.availWidth - 28; }
   if (screen.availHeight < h) { h = screen.availHeight - 28; }

   window.resizeTo(w, h);

   var x = (screen.availWidth - w)/2;
   var y = (screen.availHeight - h)/2;

   window.moveTo(x, y);
}
