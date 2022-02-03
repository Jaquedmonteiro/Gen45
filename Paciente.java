package orientacaoaobj;

public class Paciente {
	
	String nome, idade, especialidade, categoria;
	float febre, temperatura;

	public void digitarNome()
	{
		System.out.println("Nome completo: "+this.nome);
	}
		
	public void digitarIdade()
	{
		System.out.println("Idade: "+this.idade);
	}
	
	public void digitarEspecialidade()
	{
		System.out.println("Especialidade"+this.especialidade);
	}
	
	public void digitarCategoria()
	{
		System.out.println("Categoria: "+this.categoria);
	}
	
	public void digitarFebre()
	{ 
		if(temperatura>37.5)
			System.out.println("Temperatura: "+this.temperatura);
		else
		System.out.println("Não está com febre.");
	}
	
}
