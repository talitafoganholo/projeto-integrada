# Projeto Integrada 

### O site é de um blog de receitas e que "disponibilizamos" um livro grátis e receitas semanalmente exclusivas atráves do cadastro (email) do usuário.

Fizemos este projeto baseado na aula de Desenvolvimento Web, usamos modelo MVC com a linguagem Java com JSP, HTML E CSS. Criamos o banco de dados usando o MySQL , xampp e o phpMyAdmin como gerenciador. Além de Servelet, Json, Ajax, Apache Tomcat 9.0 e a IDEE que foi o Eclipse Neon. 
Na View tem a index que contém o código front do site, que usamos um modelo do Bootstrap.
No model temos o ConnectionFactory que faz a conexão com o banco de dados e as classes UsuarioBean o “Bean” é uma classe Java normal, com variáveis privadas e métodos Get/Set e UsuarioDao que tem como principal propósito abstrair o acesso a fonte de dados da sua aplicação.
No controller temos o UsuarioServlet que é quando você recebe sua requisição na view, você precisa receber essa requisição, processar de alguma forma e enviar uma resposta. A Servlet recebe sua requisição, processa ou envia pra alguém processar e então retorna a resposta pra onde necessitar.
E por fim temos a página de cadastro que local está rodando e cadastrando normalmente.
O site foi hospedado no cloud da AWS como um site estático, então a página de cadastro não está funcionando pois o banco de dados não está hospedado.

Temos um vídeo no youtube mostrando as telas e mostrando os códigos: https://www.youtube.com/watch?v=9vbTsEovsG4



