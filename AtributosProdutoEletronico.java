package orientacaoaobj;

public class AtributosProdutoEletronico {
	public static void main (String [] args) {
		
		ProdutoEletronico cel1 = new ProdutoEletronico();
		ProdutoEletronico cel2 = new ProdutoEletronico();
		
		cel1.modelo = "Iphone 8 Plus 128gb";
		cel1.marca = "Apple";
		cel1.cor = "Preto";
		cel1.preco = 2.600;
		
			System.out.println("Modelo:"+cel2.modelo);
			System.out.println("Marca:"+cel2.marca);
			System.out.println("Cor:"+cel2.cor);
			System.out.println("Preço: R$"+cel2.preco);
		}
		
	}
