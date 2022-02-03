/*Escrever um programa que receba vários números inteiros no teclado. 
 * E no final imprimir a média dos números múltiplos de 3. Para sair digitar 0(zero).(DO...WHILE)*/
package Questao1;

import java.util.Scanner;

public class Questao6 
{
	public static void main (String args[])
	{
		Scanner ler = new Scanner (System.in);
		int num, soma = 0, media = 0;
		
		do {
		System.out.println("Digite um número:");
		num = ler.nextInt();
			
				if (num%3==0 && num!=0) {
					soma = num + soma;
					media++;
				}
		} 
		while(num !=0);
		media = soma/media;
		System.out.println("A média final da soma é:"+media);
	 
			ler.close();
}	
}
