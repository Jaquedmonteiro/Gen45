package polimorfismo;

public class emitirSom {
	public static void main(String[] args) {
		
		cachorro cao = new cachorro();
		cavalo cavalin = new cavalo();
		preguica soneca = new preguica();
		
		cao.emitirSom();
		cavalin.emitirSom();
		soneca.emitirSom();
		
		cao.correr();
		cavalin.correr();
		soneca.subir();
	}

}
