package orientacaoaobj;

public class AtributosPaciente {
	public static void main (String [] args) {
		
		Paciente p1 = new Paciente();
		Paciente p2 = new Paciente();
		
		p1.nome = "Jaqueline Domingues Monteiro";
		p1.idade = "25";
		p1.especialidade = "Clinico";
		p1.categoria = "Não urgente";
		p1.febre = 36.5f;
						
			System.out.println("Nome:"+p2.nome);
			System.out.println("Idade:"+p2.idade);
			System.out.println("Especialidade:"+p2.especialidade);
			System.out.println("Categoria:"+p2.categoria);
			System.out.println("Febre:"+p2.febre);

		}
		
	}
