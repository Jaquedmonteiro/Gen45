package polimorfismo;

public class cachorro  extends animais{
	
	@Override
	public void emitirSom() {
		
		System.out.println("Cachorro latindo...");
	}
	
	public void correr() {
		System.out.println("Cachorro correndo...");
	}

}
