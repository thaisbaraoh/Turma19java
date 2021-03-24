programa
{
	
	funcao inicio()
	{
		inteiro soma=0
		
		escreva("Os numeros multiplos de 3 da contagem de 1 a 500:")
		

		para (inteiro x=1;x<=15;x++)
		{
			se (x%3==0)
				se(x%2!=0){
					soma = soma + x

					escreva(x,",")
				}
				
		}
		escreva("soma dos numeros multiplos de 3 é:",soma) 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 174; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */