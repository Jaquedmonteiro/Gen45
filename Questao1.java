package VetorMatriz;

import java.util.Scanner;

public class questao1 {
	public static void main (String args[])
	{
		Scanner ler = new Scanner (System.in);
		int []vet = new int[5];
				int x=0, maior=0;
				for (x=0; x<5; x++)
		System.out.println("Escreva as 5 notas: ");
				vet[x] = ler.nextInt();
				if(vet[x]>maior)
				{ 
					maior=vet[x];
				}
				System.out.println("A maior nota é: \"+maior");
		
		
		ler.close();
}	
}
