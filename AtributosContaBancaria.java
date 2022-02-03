package orientacaoaobj;

public class AtributosContaBancaria {
	public static void main (String [] args) {
		
		ContaBancaria p1 = new ContaBancaria();
		ContaBancaria p2 = new ContaBancaria();
		
		p1.nome = "Jaqueline Domingues Monteiro";
		p1.cpf = "000-000-000-00";
		p1.agencia = "0000";
		p1.conta = "00000000000";
		p1.digito = "0";
		p1.saldo= 345.80f;
				
			System.out.println("Marca:"+p2.nome);
			System.out.println("Modelo:"+p2.cpf);
			System.out.println("Cor:"+p2.agencia);
			System.out.println("Conta:"+p2.conta);
			System.out.println("Dígito:"+p2.digito);
			System.out.println("Saldo da sua conta: R$"+p2.saldo);
		}
		
	}
