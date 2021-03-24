programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro meses 
		inteiro dias 
		inteiro idade 
		inteiro totalDias

		escreva("Olá! diga seu nome")
		leia(nome)
		escreva("Qual a sua idade?")
		leia(idade)
		escreva("Quantos meses?")
		leia(meses)
		escreva("Quantos dias?")
		leia(dias)

        totalDias = (idade*365) + (meses*30) + (dias)

		escreva(" Olá ",nome, " a sua idade em dias é ", totalDias)
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */