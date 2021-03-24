programa
{
	
	funcao inicio()
	{
	cadeia nome
	inteiro valor

	escreva("Qual seu nome?: ")
	leia(nome)
	escreva("Você é chefa de familia, digite 1 se não 2 : ") 
	leia(valor)

	se (valor == 1){
		escreva("auxilio liberado de 1200")
	}
	senao se(valor == 2){
		escreva("auxilio liberado de 600")
	}

	senao { 
		escreva("não digitou nem 1 nem 2, não recebe auxilio")
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */