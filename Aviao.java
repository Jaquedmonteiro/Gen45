package orientacaoaobj;

public class Aviao {
	
	String companhia;
	int passageiros;
	String modelo;
		
	public void digitarCompanhia()
	{
		System.out.println("Companhia: "+this.companhia);
	}
		
	public void digitarModelo()
	{
		System.out.println("Modelo: "+this.modelo);
	}
	
	public void digitarPassageiros()
	{
		System.out.println("Quantidade de passageiros: "+this.passageiros);
	}
}
