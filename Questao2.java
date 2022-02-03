package VetorMatriz;

import java.util.Scanner;

public class questao2 {
	public static void main (String args[])
	{
		Scanner ler = new Scanner (System.in);
		int []dados = new int[10];
		int x=0, maiorLan=0, ocor=0;
		double soma=0, media=0;	
		
		for (x=0;x<10;x++) {
			System.out.println("Insira um dado: ");
			x = ler.nextInt();
			
			if (dados[x]>maiorLan) {
				maiorLan=dados[x];
					ocor++;
			}
			soma=soma+dados[x];
		
		}
			media=soma/3;
					System.out.println("O dado maior lançado: "+maiorLan);
					System.out.println("Foi apresentada a maior ocorrencia: "+ocor);
					System.out.println("A média aritmética dos lançamentos é: "+media);
		ler.close();
}	
}
