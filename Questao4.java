package VetorMatriz;

import java.util.Scanner;

public class questao4 {
	public static void main (String args[])
	{
		Scanner ler = new Scanner (System.in);
		int m[][] = new int [3][3];
		int linha, coluna, soma=0, somaDiag=0;
		
		for(linha=0;linha<3;linha++); {
			for(coluna=0;coluna<3;coluna++);{
				System.out.println("Digite um número: ");
				m[linha][coluna] = ler.nextInt();
				soma=soma+m[linha][coluna];

						if(linha==coluna) {
							somaDiag=somaDiag+m[linha][coluna];
							
						}
			}
		}
		 System.out.println("A soma total: "+soma);
		 System.out.println("A soma da primeira diagonal: "+somaDiag);
		 ler.close();
	}
		}

