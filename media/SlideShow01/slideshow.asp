<!--
PushButton SlideShow with Captions and Cross-Fade
Copyright 2003 by CodeLifter.com
Author: etLux

Shows images and accompanying captions.
Browsers: NS4-7,IE4-6
Fade effect only in IE; degrades gracefully.
NS4 shows default caption only.

INSTRUCTIONS:

Copy this entire script into a completely blank
page.  Follow the commented instructions within.
//-->

<html>

<head>

<title>PushButton SlideShow</title>

<!-- 
Set up the caption font in the following style.
Also set the styles for the controls.
Place the style script in the head of the page.
//-->

<style>
.Caption {
font-family: Verdana;
font-weight: normal;
font-size:  10px;
color:      #FF3300; }

A.Controls:link    { color:#666666;
                     text-decoration:none;
                     font-family: Arial;
                     font-size:   14pt;
                     font-weight: bold; }
A.Controls:visited { color:#666666; text-decoration:none; 
                     font-family: Arial;
                     font-size:   14pt;
                     font-weight: bold; }
A.Controls:active  { color:#666666; text-decoration:none;
                     font-family: Arial;
                     font-size:   14pt;
                     font-weight: bold; }
A.Controls:hover   { color:#00FF00; text-decoration:none;
                     font-family: Arial;
                     font-size:   14pt;
                     font-weight: bold; }

</style>

<!-- 
Place the following script in the head of the page.
Follow the set-up instructions within the script.
//-->

<script>

// (C) 2003 by CodeLifter.com
// Free for all users, but leave in this header.

// ==============================
// Set the following variables...
// ==============================

// Set the slideshow speed (in milliseconds)
var SlideShowSpeed = 3000;

// Set the duration of crossfade (in seconds)
var CrossFadeDuration = 2;

var Picture = new Array(); // don't change this
var Caption = new Array(); // don't change this
var showHot = false;       // don't change this

// Specify the image files...
// To add more images, just continue
// the pattern, adding to the array below.
// To use fewer images, remove lines
// starting at the end of the Picture array.
// Caution: The number of Pictures *must*
// equal the number of Captions!

Picture[1]  = '01.jpg';
Picture[2]  = '02.jpg';
Picture[3]  = '03.jpg';
Picture[4]  = '04.jpg';
Picture[5]  = '05.jpg';
Picture[6]  = '06.jpg';
Picture[7]  = '07.jpg';
Picture[8]  = '08.jpg';
Picture[9]  = '09.jpg';
Picture[10] = '10.jpg';
Picture[11] = '11.jpg';
Picture[12] = '12.jpg';
Picture[13] = '13.jpg';
Picture[14] = '14.jpg';
Picture[15] = '15.jpg';
Picture[16] = '16.jpg';
Picture[17] = '17.jpg';
Picture[18] = '18.jpg';
Picture[19] = '19.jpg';
Picture[20] = '20.jpg';
Picture[21] = '21.jpg';
Picture[22] = '22.jpg';
Picture[23] = '23.jpg';
Picture[24] = '24.jpg';

// Specify the Captions...
// To add more captions, just continue
// the pattern, adding to the array below.
// To use fewer captions, remove lines
// starting at the end of the Caption array.
// Caution: The number of Captions *must*
// equal the number of Pictures!

//Caption[1]  = "Her Majesty - Kungliga Slottet 2003";
<%	For x = 1 to 24%>
Caption[<%=X%>] = "hihi"
<%	Next%>
// =====================================
// Do not edit anything below this line!
// =====================================

var tss;
var iss;
var jss = 0;
var pss = Picture.length-1;

var preLoad = new Array();
for (iss = 1; iss < pss+1; iss++){
preLoad[iss] = new Image();
preLoad[iss].src = Picture[iss];}

function control(how){
if (showHot){
if (how=="H") jss = 1;
if (how=="F") jss = jss + 1;
if (how=="B") jss = jss - 1;
if (jss > (pss)) jss=1;
if (jss < 1) jss = pss;
if (document.all){
document.images.PictureBox.style.filter="blendTrans(duration=2)";
document.images.PictureBox.style.filter="blendTrans(duration=CrossFadeDuration)";
document.images.PictureBox.filters.blendTrans.Apply();}
document.images.PictureBox.src = preLoad[jss].src;
if (document.getElementById) document.getElementById("CaptionBox").innerHTML= Caption[jss];
if (document.all) document.images.PictureBox.filters.blendTrans.Play();
}}

</script>

</head>

<!--
Add onload='showHot=true;' to the body tag.  This is
needed to prevent false object calls while the page
is loading. Optional: If you are using this in a
popup, as in this demo, adding self.focus() to the
onload event in the body tag will bring the popup
to the front each time it is loaded [recommended]. 
//-->

<body onload='showHot=true;self.focus();' bgcolor=#000000 link="#FF0000" vlink="#FF0000" alink="#FF0000">

<!--
The following table holds the images, captions, and controls.
Place the table in your page where you want the slideshow
to appear.  Follow the instructions for each table cell.
//-->

<div align="center">
  <center>

<table border=0 cellpadding=10 cellspacing=0>
  <tr>
    <!--
    The next table cell holds the images.
    Set cell and image width and height the same.
    The img src must have name=PictureBox in its
    tag.  Often, the first image in the Picture
    array in the script is used here; but you
    may also use a different, introductory image
    as we have here, since this image is shown
    only on start-up.
    //-->
    <td width=350 height=280 colspan="3">
    <img src=01.jpg name=PictureBox width=350 height=280>
    </td>
  </tr>
  <tr>
    <!-- 
    The next table cell holds the captions.
    This table cell must have id=CaptionBox and
    class=Caption in its tag. The default caption
    shows whilst loading in all browsers; NS4
    will show only the default caption, throughout.
    //-->
    <td id=CaptionBox class=Caption align=center colspan="3">
    Her Majesty - Kungliga Slottet 2003
    </td>
  </tr>
    <!--
    The following three cells contain the controls.
    Each of the control a href's must contain class=
    Controls, to attach the styles (see top of script).
    To dress this up a bit, you can of course substitute
    <img src> images for the text in the links.
    //-->
  <tr>
    <td align="center">
    <a class=Controls href="#" onClick="javascript:control('B');">< <</a>
    </td>
    <td align="center">
    <a class=Controls href="#" onClick="javascript:control('H');">| | |</a>
    </td>
    <td align="center">
    <a class=Controls href="#" onClick="javascript:control('F');"><b>> ></b></a>
    </td>
  </tr>  
</table>

  </center>
</div>

</body>

</html>


