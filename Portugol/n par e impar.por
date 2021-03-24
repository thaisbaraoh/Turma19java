programa
{
	
	funcao inicio()
	{
		inteiro n

		escreva("Digite um numero inteiro positivo: ")
		leia(n)

		se (n == 0){
			escreva("Zero é neutro")
		}
		senao se (n < 0){ 
			escreva ("numero negativo não posso calcular")
		}
		senao se(n%2 == 0 ){
			escreva("O numero ", n," é par")
		}
		
		senao{
			escreva("O numero ", n," é impar")
		}
		
	}
}
		  

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */