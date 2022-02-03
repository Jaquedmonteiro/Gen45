/* Crie um programa que leia um número do teclado até que encontre um número igual a zero. 
 * No final, mostre a soma dos números digitados.(DO...WHILE)
 */
package Questao1;

import java.util.Scanner;

public class Questao5 
{
	public static void main (String args[])
	{
		Scanner ler = new Scanner (System.in);
		int num, soma=0;
		System.out.println("Digite um número do teclado: ");
		num = ler.nextInt();
		
		do { 
			soma = soma + num;
			System.out.println("Digite um número do teclado: ");
		num = ler.nextInt();
		}
		while (num!=0);
		System.out.println("A soma é: "+soma);
		ler.close();
}	
}
