package orientacaoaobj;

public class Patinete {
	
	String marca, modelo, cor;
	boolean freio;

	public void digitarMarca()
	{
		System.out.println("Marca: "+this.marca);
	}
		
	public void digitarModelo()
	{
		System.out.println("Modelo: "+this.modelo);
	}
	
	public void digitarCor()
	{
		System.out.println("Cor: "+this.cor);
	}
	
	public void digitarFreio()
	{
		this.freio = true;
		if (this.freio==true)  
				System.out.println("Freio: sim"); 
		else 
			System.out.println("Freio: não");
	}
}
