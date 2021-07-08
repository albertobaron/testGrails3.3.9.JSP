<%@ page contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title>Funesa 2</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <script language="javascript" src="${pageContext.request.contextPath}/assets/funcions.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/hades.css" />
    <link type="text/css" rel="shortcut icon" href="${pageContext.request.contextPath}/assets/logo_fune_01.jpg" />
    <script language="javascript" src="${pageContext.request.contextPath}/assets/jquery/jquery-1.7.1.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
        function comprova(Objecte) {
            Error = "";
            NError = 0;
            with (Objecte) {
                //Comprovacions
                if (!login.value) {
                    Error += " ERROR LOGIN  \n";
                    NError++;
                }
                if (!passwd.value) {
                    Error += " ERROR PASSWORD   \n";
                    NError++;
                }
                if (!codiempresa.value) {
                    Error += " ERROR CODI   \n";
                    NError++;
                }
            }
            if (Error != "") {
                if (NError == 1) {
                    alert(Error);
                } else {
                    alert(Error);
                }
                return false;
            }
            return true;
        }
        function capLock(e) {
            kc = e.keyCode ? e.keyCode : e.which;
            sk = e.shiftKey ? e.shiftKey : ((kc == 16) ? true : false);
            if (((kc >= 65 && kc <= 90) && !sk) || ((kc >= 97 && kc <= 122) && sk))
                document.getElementById('caplock').style.visibility = 'visible';
            else
                document.getElementById('caplock').style.visibility = 'hidden';
        }
    </script>
</head>
<body class="COLORVERS_BCK" topmargin="0" onload="document.form1.login.focus();">
<table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center" valign="middle"></td>
    </tr>
</table>
<table width="100%" height="50" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center" valign="bottom"><p class="lletracabecera">Funerària de Terrassa</p></td>
    </tr>
    <tr>
        <td class="filalliure">&nbsp; </td>
    </tr>
    <tr>
        <td class="COLORVERS_TXT">v333
        </td>
    </tr>
    <tr>
        <td height="79" align="center" valign="middle">
            <form onSubmit="return comprova(this);" action="Validacio" method="post" name="form1">
                <div style="visibility: hidden;">
                    <font class="lletra14blanca"></font>
                    <input class="inputs" size="4" maxlength="4" name="codiempresa" type="text" value="01"/>
                </div>
                <font class="txloginpassword">Usuari</font>
                <input class="inputs" size="20" maxlength="20" name="login" type="text"/>
                <font class="txloginpassword">Contrasenya</font>
                <input class="inputs" size="20" maxlength="20" name="passwd" type="password" onKeyPress="capLock(event)"/>
                <input class="buttons" value="Entrar" name="Submit" input type="submit"/>
            </form>
        </td>
    </tr>
    <tr>
        <td class="filalliure" align="center">
            <div class="lletra14azul" id="caplock" style="visibility:hidden"></div>
        </td>
    </tr>
</table>
<script language="javascript">document.form1.codiempresa.focus();</script>
</body>
</html>