programa
{
	inclua biblioteca Matematica

	real distribuicao
	real impostos
	real custoDeFabrica
	real custoDoConsumidor
	
	funcao inicio()
	{
	    escreva("Qual o custo de fábrica do carro?")
	    leia(custoDeFabrica)
	    distribuicao = (custoDeFabrica * 0.28)
	    impostos = (custoDeFabrica * 0.45)
	    custoDoConsumidor = custoDeFabrica + distribuicao + impostos

	    escreva("O valor total do consumidor é: ", custoDoConsumidor)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 122; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */