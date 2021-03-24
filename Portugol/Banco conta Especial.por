programa
	
{
	
		inclua biblioteca Util
		
		inteiro numero
		cadeia  cpf
		real saldo 
		logico ativa
		
	
		//(+) usarLimite (soma no saldo e tira do limite)
		//Usar o limite do saldo se no momento do movimento o saldo fica negativo, 
		//ajusta no saldo e diminuir no limite.Limite de R$ 1.000

		//REGRAS	
		//10 MOVIMENTOS - DEBITO OU CREDITO	
		//SALDO ZERO É POSSIVEL	
		//NENHUMA CONTA PODE FICA NEGATIVA DEPOIS DOS POSSIVEIS 10 MOVIMENTOS	
		//O BANCO DEVER TER UM NOME + G[NUMERO GRUPO]		
		//O BANCO DEVER TER UM SLOGAN (EX: BANCO ED - G0 - ED+ NA SUA VIDA!!!)

			
	funcao inicio()
	{
		//variaveis
		
		cadeia contaEspecial
		real Limite
		caracter opcao
		cadeia tipo
		

	//entradas
			faca{
			limpa()
			escreva("Banco Geracão\n")
			escreva("O Banco Feito para Todes !!")
			escreva("\n")
			
			escreva("1 - Conta Poupança\n")
			escreva("2 - Conta Corrente\n")
			escreva("3 - Conta Especial\n")
			escreva("4 - Conta Empresa\n")
			escreva("5 - Conta Estudantil\n")
			escreva("6 - Sair\n")
			escreva("Digite o numero de sua opção:")
			leia(opcao)
			
			se (opcao == '1'){
			
				escreva("\nVocê escolheu Conta Poupança")
				Util.aguarde(2000)

				
			} senao se (opcao =='2'){
				escreva("\nVocê escolheu Conta Corrente")
				Util.aguarde(2000)
				
			} senao se (opcao =='3'){

				
				tipo="Especial"
				cabecalho(tipo)
				escreva("\n Conta Especial")
				Util.aguarde(2000)


				
			} senao se (opcao =='4'){
				escreva("\nVocê escolheu Conta Empresa")
				Util.aguarde(2000)
				
			} senao se (opcao =='5'){
				escreva("\nVocê escolheu Conta Estudantil")
				Util.aguarde(2000)
				
			} senao se (opcao =='6'){
				escreva("\nVocê escolheu Sair")
				Util.aguarde(2000)
				pare
			} senao 
			{
				escreva("Você não selecionou um numero entre 1 e 6\n") 
				
			}


			
	} enquanto (opcao != '6')
	escreva("Fim de Programa,Volte Sempre!!")
}	
	funcao cabecalho(cadeia tipo){
		  caracter auxiliar
	limpa()
	escreva("Banco Geração\n")
	escreva("O Banco Feito para Todes!!")
	escreva("\n")
	escreva("Conta ",tipo,"\n")
	
	escreva("Saldo Atual")
	escreva("movimento: D -Debito ou C - Credito: ")
	escreva("valor movimentado")
	escreva("continuar S ou N")
			
		
	}
	
	funcao Especial(real saldo)
	{
		real limite = 1000.00 
		real valorTransacao = 0.00
		real contador 
		real resto
		inteiro movimentacoes = 10
		inteiro opcao
		inteiro opcao2
		limpa()

		faca 
		{
			faca 
			{
				escreva("Conta Especial")
				escreva("Saldo Atual",saldo,"\n")
				escreva("Seu limite é: ",limite,"\n")
				escreva("Qual operação você deseja fazer 1- Debito ou 2- Credito")
				leia(opcao)
				se (opcao != 1 e opcao != 2)
				{
					escreva("Opção inválida")
					Util.aguarde(3000)
					limpa()
										
				} 
				enquanto (opcao != 1 e opcao != 2)
				se (opcao == 2)
				{
					escreva("Informe o Valor da Transação")
					leia(valorTransacao)
				se (limite <1000.00)
				{

						limite = limite + valorTransacao
						se (limite >1000.00)
						{

							saldo = saldo + limite - 1000.00
							limite = 1000.00
						}
				}
				senao 
				{
					saldo = saldo + valorTransacao 
					escreva("O seu atual saldo é :",saldo,"\n Seu limite atual é: ",limite)
					Util.aguarde(3000)
					limpa()
					
				}
				}
				senao se (saldo >=0)
				{
					escreva("Informe o valor:")
					leia(valorTransacao)
					saldo = saldo - valorTransacao
					se (saldo < 0 )
					{
						se ((limite * -1) <= saldo)
						{
							limite = limite + saldo
							saldo = saldo - saldo
							limpa()
							escreva("seu saldo atual é:",saldo,"Limite atual",limite)
							Util.aguarde(3000)
							limpa()

						
						}
						senao 
						{
							escreva("Limite Insuficiente")
							Util.aguarde(3000)
							limpa()
							saldo = saldo + valorTransacao
						}
						
						
					}
				}
				escreva("Para fazer outra transacao digite 1 e sair 2")
				leia(opcao2)
				se (opcao2 == 1)
				{
					movimentacoes--
					se (movimentacoes == 0)
					{
						escreva("Limite de operações atingidas")
						Util.aguarde(3000)
						
					}
				}

				senao 
				{
					movimentacoes = 0
					
				}
			} enquanto (movimentacoes != 0)
		}
		
	




/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */