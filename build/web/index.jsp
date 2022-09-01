<%-- 
    Document   : index.jsp
    Created on : 31/08/2022, 10:36:22 PM
    Author     : paola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script type="text/javascript">
            function validate(){
                var uname=document.myForm.username.value;
                if(uname===""){
                    alert("Por favor ingresa un usuario");
                    document.myForm.username.focus();
                    return false;
                }
                if ((uname.length<5) || (uname.length>15)){
                    alert("El usuario no contiene el numero de caracteres permitidos");
                    document.myForm.username.focus();
                    return false;
                }
                var password=document.myForm.password.value;
                var illegalChar=/[\W_]/;
                if(password===""){
                    alert("Por favor ingresa una contraseña");
                    document.myForm.password.focus();
                    return false;
                }
                else if((password.length<7)||(password.length>15)){
                    alert("Ingresa una contraseña entre 8 y 15 caracteres");
                    document.myForm.password.focus();
                    return false;
                }
                else if(illegalChar.test(password)){
                    alert("La contraseña contiene caracteres no validos");
                    document.myForm.password.focus();
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <form name="myForm" method="post" action="check.jsp">
            <br><br><br><br><br><br><br>
            <fieldset class="fieldset">
                <legend> <img src="imagenes/Imagen1.png" width="180" heigth="360"/> </legend>
                <div class="row">
                    <div class="input-field col s6">
                    <input placeholder="Ingresa Usuario" id="username" type="text" class="validate">
                    <label for="username">Username</label>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="input-field col s12">
                    <input id="password" type="password" class="validate" placeholder="Ingresa una contraseña">
                    <label for="password">Password</label>
                    </div>
                </div>
                <br>
                <center>
                <button class="btn waves-effect waves-light" type="submit" name="action" onclick="return validate();" value="Signin"> 
                    Iniciar Sesión
                </button>
                <button class="btn waves-effect waves-light" type="reset"> 
                    Reset
                </button>
                </center>


        </form>
    </body>
</html>
