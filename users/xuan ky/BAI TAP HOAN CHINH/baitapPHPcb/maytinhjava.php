<HTML>
<HEAD>
<TITLE>HTML Calculator</TITLE>
<META NAME="ABSTRACT" content="Urs Rohrer, HTML Calculator programmed in Java Script">
<META name="author" content="Urs Rohrer">
<META NAME="COPYRIGHT" content="U.R., PSI">
<META name="description" content="HTML Calculator programmed in Java Script by Urs Rohrer">
<META NAME="GENERATOR" content="U.Ro, PSI">
<META name="keywords" content="HTML calculator, Java Script program">
<META NAME="PUBLISHER" content="U.Ro, PSI">
<META NAME="ROBOTS" content="index,follow">
<META NAME="language" content="en">

<SCRIPT language="JavaScript">
<!--
var Text = "Calculator programmed in Java Script";
var Speed = 150;
var Width = 64;
var TextLength = Text.length;
var Pos = 1 - Width + TextLength;
function TextMarquee()
{
Pos++;
var TextOut = "";
if (Pos == TextLength)
Pos = 1 - Width;
if (Pos < 0)
{ for (var i=1; i<=Math.abs(Pos); i++)
TextOut = TextOut + " ";
TextOut = TextOut + Text.substring(0,Width-i+1);
}
else
TextOut = TextOut + Text.substring(Pos,Width+Pos);
window.status = TextOut;
window.setTimeout("TextMarquee()",Speed);
}

var fact = Math.PI / 180.0;
var inv = 0; <!-- 1 if inverse function has to be taken -->
var flag = 0; <!-- 0 if "=" is pressed -->
var flag2 = 0; <!-- 1 if "+","-","*" or "/" pressed -->
var popen = 0; <!-- 0 if no "(" is open -->
var point = 0; <!-- 1 if "." is pressed -->

function Clr(Fi,Ei)
{
flag2 = 0;
popen = 0;
point = 0;
document.forms[Fi].elements[Ei].value = "";
}
function Res(Fi,Ei)
{
if ( (flag2 == 0) && (popen == 0) )
{
var x = eval(document.forms[Fi].elements[Ei].value);
document.forms[Fi].elements[Ei].value = x;
flag = 0;
point = 0;
}
}
function Add(Fi,Ei,n)
{
var st = document.forms[Fi].elements[Ei].value;
var len = st.length;

if (st.charAt(len-1) == ")")
return;

if (n=="PI")
{
if ( (len > 0) && (flag2 == 0) )
return;
var x = Math.PI;
n = x;
}

if (flag==0)
document.forms[Fi].elements[Ei].value = "";

document.forms[Fi].elements[Ei].value =
document.forms[Fi].elements[Ei].value + n;
flag = 1;
flag2 = 0;
}
function Par(Fi,Ei,n)
{
var st = document.forms[Fi].elements[Ei].value;
var len = st.length;

if ( (n == "(") )
{
if (st.charAt(len-1) == ")")
return;
else if (st.charAt(len-1) == "(")
popen++;
else
{
if ( (len > 0) && (flag2 == 0) )
return;
else
popen++;
}
}
else if ( (n == ")") && (popen > 0) )
{
if (st.charAt(len-1) == "(")
return;
else
popen--;
}
else
return;

document.forms[Fi].elements[Ei].value =
document.forms[Fi].elements[Ei].value + n;
flag = 1;
point = 0;
}
function Bck(Fi,Ei)
{
var st = document.forms[Fi].elements[Ei].value;
var len = st.length;
if (len > 0)
{
if (st.charAt(len-1) == ".")
point = 0;

if (st.charAt(len-1) == "+")
flag2 = 0;
if (st.charAt(len-1) == "-")
flag2 = 0;
if (st.charAt(len-1) == "*")
flag2 = 0;
if (st.charAt(len-1) == "/")
flag2 = 0;

if (st.charAt(len-1) == ")")
popen++;
if (st.charAt(len-1) == "(")
popen--;

document.forms[Fi].elements[Ei].value=st.substring(0,len-1);
flag = 1;
}
}
function Pnt(Fi,Ei)
{
if ( (flag2 == 0) && (point == 0) )
{
flag2 = 1;
flag = 1;
point = 1;
document.forms[Fi].elements[Ei].value =
document.forms[Fi].elements[Ei].value + ".";
}
}
function Fnc(Fi,Ei,n)
{
var st = document.forms[Fi].elements[Ei].value;
var len = st.length;
if (st.charAt(len-1) == "(")
return;

if (flag2 == 0)
{
flag2 = 1;
flag = 1;
point = 0;
document.forms[Fi].elements[Ei].value =
document.forms[Fi].elements[Ei].value + n;
}
}
function Inv()
{
inv = 1;
}
function Chs(Fi,Ei)
{
var st = document.forms[Fi].elements[Ei].value;
var len = st.length;
if (st.charAt(0) == "-")
st = st.substring(1,len);
else
st = "-" + st;
document.forms[Fi].elements[Ei].value = st;
flag = 1;
}
function Spc(Fi,Ei,f)
{
if ( (flag2 == 0) && (popen == 0) )
{
var y = 0.0;
var st = document.forms[Fi].elements[Ei].value;
if (st.length == 0)
x = 0;
else
x = eval(st);

if (f=="sqrt")
{
if (inv == 0)
y = (x>0) ? Math.sqrt(x) : "";
else
y = x * x;
}
if (f=="pow2")
{
if (inv == 1)
y = (x>0) ? Math.sqrt(x) : "";
else
y = x * x;
}
if (f=="exp")
{
if (inv == 1)
y = (x>0) ? Math.log(x) : "";
else
y = Math.exp(x);
}
if (f=="ln")
{
if (inv == 0)
y = (x>0) ? Math.log(x) : "";
else
y = Math.exp(x);
}
if (f=="sin")
{
if (inv == 0)
y = Math.sin(x*fact);
else
y = 1./fact * Math.asin(x);
}
if (f=="cos")
{
if (inv == 0)
y = Math.cos(x*fact);
else
y = 1./fact * Math.acos(x);
}
if (f=="tan")
{
if (inv == 0)
y = Math.tan(x*fact);
else
y = 1./fact * Math.atan(x);
}
if (f=="inv")
{
y = (inv==0) ? 1 / x : x;
}
document.forms[Fi].elements[Ei].value = y;
inv = 0;
point = 0;
}
}
//-->
</SCRIPT>
<noscript>
<center><H1><B>HTML Calculator</B> applet needs your browser<BR>JavaScript enabled to function properly !</H1></center>
<center><P This <B>HTML Calculator</B> applet is a sample Java Script program and shows how to build a desktop
HTML calculator based on the Java Script language.</P></center><BR>

</noscript>

</HEAD>

<BODY bgcolor=#CCCCCC text=#000000 link=#0000CC vlink=#000099 alink=#0000FF onLoad="TextMarquee();return true">

<H4>&nbsp;</H4>

<FORM method=post>
<TABLE border=5 cellpadding=5>
<tr><th bgcolor=#C0C0C0><INPUT size=40 maxlength=40></th></tr>
<tr><td><table>
<tr>

<td width=23%><input type=button value=" Inv " onClick="Inv()"></td>
<td width=18%><input type=button value=" 7 " onClick="Add(0,0,'7')"></td>
<td width=18%><input type=button value=" 8 " onClick="Add(0,0,'8')"></td>
<td width=23%><input type=button value=" 9 " onClick="Add(0,0,'9')"></td>
<td width=18%><input type=button value=" + " onClick="Fnc(0,0,'+')"></td>
</tr>
<tr>
<td width=23%><input type=button value=" sin " onClick="Spc(0,0,'sin')"></td>
<td width=18%><input type=button value=" 4 " onClick="Add(0,0,'4')"></td>

<td width=18%><input type=button value=" 5 " onClick="Add(0,0,'5')"></td>
<td width=23%><input type=button value=" 6 " onClick="Add(0,0,'6')"></td>
<td width=18%><input type=button value=" - " onClick="Fnc(0,0,'-')"></td>
</tr>
<tr>
<td width=23%><input type=button value=" cos " onClick="Spc(0,0,'cos')"></td>
<td width=18%><input type=button value=" 1 " onClick="Add(0,0,'1')"></td>
<td width=18%><input type=button value=" 2 " onClick="Add(0,0,'2')"></td>
<td width=23%><input type=button value=" 3 " onClick="Add(0,0,'3')"></td>

<td width=18%><input type=button value=" * " onClick="Fnc(0,0,'*')"></td>
</tr>
<tr>
<td width=23%><input type=button value=" tan " onClick="Spc(0,0,'tan')"></td>
<td width=18%><input type=button value=" 0 " onClick="Add(0,0,'0')"></td>
<td width=18%><input type=button value=" . " onClick="Pnt(0,0)"></td>
<td width=23%><input type=button value=" +/- " onClick="Chs(0,0)"></td>
<td width=18%><input type=button value=" / " onClick="Fnc(0,0,'/')"></td>
</tr>

<tr>
<td width=23%><input type=button value=" 1/x " onClick="Spc(0,0,'inv')"></td>
<td width=18%><input type=button value=" sqrt " onClick="Spc(0,0,'sqrt')"></td>
<td width=18%><input type=button value=" ( " onClick="Par(0,0,'(')"></td>
<td width=23%><input type=button value=" ) " onClick="Par(0,0,')')"></td>
<td width=18%><input type=button value=" = " onClick="Res(0,0)"></td>
</tr>
<tr>
<td width=23%><input type=button value=" ln " onClick="Spc(0,0,'ln')"></td>

<td width=18%><input type=button value=" x^2 " onClick="Spc(0,0,'pow2')"></td>
<td width=18%><input type=button value=" Pi " onClick="Add(0,0,'PI')"></td>
<td width=23%><input type=button value=" C " onClick="Clr(0,0)"></td>
<td width=18%><input type=button value=" <- " onClick="Bck(0,0)"></td>
</tr>
</table></td></tr>
</TABLE>
</FORM>
<H4>&nbsp;</H4>

</BODY>
</HTML>