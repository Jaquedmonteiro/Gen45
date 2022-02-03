package orientacaoaobj;

public class Cliente {
	
	String nome;
	int idade;
	String cpf;
	String celular;
	
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
}
