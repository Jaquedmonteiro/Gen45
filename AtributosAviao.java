package orientacaoaobj;

public class AtributosAviao {
	public static void main (String [] args) {
		
		Aviao voo1 = new Aviao();
		Aviao voo2 = new Aviao();
		
		voo1.companhia = "Azul";
		voo1.modelo = "boeing 707";
		voo1.passageiros = 219;
				
			System.out.println("Companhia area:"+voo2.companhia);
			System.out.println("Modelo:"+voo2.modelo);
			System.out.println("Quantidade de passageiros:"+voo2.passageiros);
		}
		
	}
