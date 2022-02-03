package orientacaoaobj;

public class AtributosFuncionario {
	public static void main (String [] args) {
		
		Funcionario f1 = new Funcionario();
		Funcionario f2 = new Funcionario();
		
		f1.nome = "Jaqueline Domingues Monteiro";
		f1.idade = 25;
		f1.cpf = "000.000.000-00";
		f1.celular = "(11) 930850-4037";
		f1.cargo = "Vendedora";
		f1.loja = "Loja 16 - Clube Melissa Suzano Shopping";
		
			System.out.println("Nome completo:"+f2.nome);
			System.out.println("Idade:"+f2.idade);
			System.out.println("CPF:"+f2.cpf);
			System.out.println("Celular:"+f2.celular);
			System.out.println("Cargo:"+f2.cargo);
			System.out.println("Loja:"+f2.loja);
	
		}
		
	}
