package polimorfismo;

public class cavalo  extends animais{
	
	@Override
	public void emitirSom() {
	  System.out.println("Cavalo relinchando...");
	}
  
	public void correr() {
		System.out.println("Cavalo correndo...");
	}
}
