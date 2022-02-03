/*Solicitar a idade de várias pessoas e imprimir: Total de pessoas com menos de 21 anos. 
 * Total de pessoas com mais de 50 anos. O programa termina quando idade for =-99. (WHILE)
*/
package Questao1;

import java.util.Scanner;

public class Questao3 
{
	public static void main (String args[])
	{
		Scanner ler = new Scanner (System.in);
		int idade, totalMenos=0, totalMais=0;
		System.out.println("Digite a idade:");
		idade = ler.nextInt();
		
				while (idade != -99) {
					if (idade <21) {
						totalMenos = totalMenos + 1;
					}
				else if (idade > 50) { 
					totalMais = totalMais + 1;
				} 
				System.out.println("Digite a idade:");
				idade = ler.nextInt(); 
				}
		System.out.println("Total de pessoas com menos de 21 anos:"+totalMenos);
		System.out.println("Total de pessoas com mais de 50 anos:"+totalMais);
	
		ler.close();
}	
}
