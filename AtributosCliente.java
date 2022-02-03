package orientacaoaobj;

public class AtributosCliente {
	public static void main (String [] args) {
		
		Cliente c1 = new Cliente();
		Cliente c2 = new Cliente();
		
		c1.nome = "Jaqueline Domingues Monteiro";
		c1.idade = 25;
		c1.cpf = "000.000.000-00";
		c1.celular = "119308504037";
		
			System.out.println("Nome completo:"+c2.nome);
			System.out.println("CPF:"+c2.cpf);
			System.out.println("Celular:"+c2.celular);
		}
		
	}
