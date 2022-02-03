package mercadinho;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class estoque {
	
		public static void main(String[] args) {
		ArrayList<String> roupas = new ArrayList<>();
		
		roupas.add("blusas");
		roupas.add("calca");
		roupas.add("vestido");
		roupas.add("camiseta");
	
		System.out.println(roupas);
		boolean contem = roupas.contains("calca");			
		roupas.remove(0);
		
		System.out.println(roupas);
		
		Collections.sort(roupas);
		
		estoque.add("shorts");
		
		System.out.println(roupas);
		}

		private static void add(String string) {	
		}
}
