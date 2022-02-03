package orientacaoaobj;

public class Funcionario {
	
	String nome, cpf, celular, cargo, loja;
	int idade;

	public void digitarNome()
	{
		System.out.println("Nome: "+this.nome);
	}
		
	public void digitarCpf()
	{
		System.out.println("Cpf: "+this.cpf);
	}
	
	public void digitarIdade()
	{
		System.out.println("Idade: "+this.idade);
	}
	
	public void digitarCelular()
	{
		System.out.println("Celular: "+this.celular);
	}
	
	public void digitarCargo()
	{
		System.out.println("Cargo: "+this.cargo);
	}
	
	public void digitarLoja()
	{
		System.out.println("Loja: "+this.loja);
	}
	
}
