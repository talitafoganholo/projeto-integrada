<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" crossorigin="anonymous"></script>
<script type="text/javascript">
	
	function autenticar(){
		var email = document.getElementById("email").value;
		var senha = document.getElementById("senha").value;
		
		var json = {"email":email,"senha":senha,"acao":"autenticar"};
        
        $.ajax({
            url:"UsuarioServlet",
            data: json,
            type: "get",
            success: function(resp){
            	var vetor_json = JSON.parse(resp);
            	if (vetor_json[0].msg=="ok"){
            		document.location = "restrita.jsp";
            	}else{
         			alert(vetor_json[0].msg);
            	}
            }
        });
	}
	
</script>

</head>
<body>

<form>

Email: <input type="text" id="email"><br>
Senha: <input type="password" id="senha"><br>

<input type="button" onClick="autenticar()" value="entrar"/>

</form>

</body>
</html>