# Projeto Integrador 

GRUPO 02

<strong>INTEGRANTES</strong><br/>
Diego Belo<br/>
Jaqueline Domingues<br/>
Jônatas Oliveira<br/>
Luciana Soares<br/>
Pedro Marcos<br/>
Raysa Souza<br/>

<strong>Motivo da escolhas dos atributos:</strong>

<strong>Tabela Usuário -></strong><br/>
	idUsuario - identificador da tabela (PK)<br/>
	login - identificador do usuário (email)<br/>
	senha - credencial do usuário para utilizar a plataforma<br/>
	nome - forma de visualização do perfil do usuário<br/>
	foto - opcional caso o usuário queira uma foto de perfil na conta<br/>
	pronome - opcional caso o usuário queira declarar seu pronome no perfil<br/>

<strong>Tabela Postagem -> </strong><br/>
	idPostagem - identificador da tabela (PK)<br/>
	titulo_post - titulo sobre a postagem<br/>
tema_post - tema que a postagem se refere<br/>
texto_post - texto que estará contido no post<br/>
data - informa a data e hora que o post foi feito<br/>
sensivel - determina se a postagem é sensível ou não<br/>
denuncia -  contador de pessoas que denunciaram o post<br/>
fk_idUsuario - chave estrangeira para relacionar a tabela usuario com a tabela postagem<br/>

<strong>Tabela Comentário -> </strong><br/>
	idComentario - identificador da tabela (PK)<br/>
	data - informa a data e hora que o comentário foi feito<br/>
	texto - texto que estará contido no comentário<br/>
	denuncia - contador de pessoas que denunciaram o comentário<br/>
sensivel - determina se o comentário é sensível ou não<br/>
	fk_idUsuario - chave estrangeira para relacionar a tabela comentário com a tabela usuário<br/>
	fk_idPostagem - chave estrangeira para relacionar a tabela comentário com a tabela postagem<br/>
