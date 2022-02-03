package orientacaoaobj;

public class ProdutoEletronico {
	
	String modelo, marca, cor;
	double preco;
			
	public void digitarModelo()
	{
		System.out.println("Modelo: "+this.modelo);
	}
		
	public void digitarMarca()
	{
		System.out.println("Marca: "+this.marca);
	}
	
	public void digitarCor()
	{
		System.out.println("Cor: "+this.cor);
	}
	public void digitarPreco()
	{
		System.out.println("Preço: "+this.preco);
	}
	
}
