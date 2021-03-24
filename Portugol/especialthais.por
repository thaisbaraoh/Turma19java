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

				
				Especial()


				
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


			
	} 
	enquanto (opcao != '6')
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
	
	funcao Especial()
	{
		real limite = 1000.00
		inteiro cont = 1
		real saldo = 500
		inteiro opcao
		inteiro opcao2
		real valorTransacao = 0.00
		real contador
		real resto
		inteiro movimentacoes = 10
		limpa()
			faca
			{		
				faca{	
					limpa()
					
					escreva("\nCONTA ESPECIAL\n")
					escreva("Saldo atual: ", saldo,"\n")
					escreva("Limite disponível: ", limite,"\n")
					escreva("Escolha uma das operações a seguir:\n'1' para débito\n'2' para crédito\n")
					escreva("Digite o número da operação selecionada: ")
					leia(opcao2)
					se(opcao2 != 1 e opcao2 != 2)
					{
						escreva("Opção inválida. Tente realizar outra operação: ")
						Util.aguarde(3000)
						limpa()
					}
					
				} enquanto(opcao2 != 1 e opcao2 != 2)
					se(opcao2 == 2 ou opcao2 == 2)
					{
						limpa()
						escreva("Digite o valor da transação: R$")
						leia(valorTransacao)
						se(limite < 1000)
						{
							limite = limite + valorTransacao
							se(limite > 1000)
							{
								saldo = saldo + limite - 1000
								limite = 1000.00
							}
						}
						senao
						{

							saldo = saldo + valorTransacao
							escreva("Seu saldo atual é de: R$",saldo,"\nSeu limite é de: R$",limite)
							Util.aguarde(4000)
							limpa()
						}
					}
					senao se(saldo>=0)
					{
						limpa()
						escreva("Digite o valor da transação: R$")
						leia(valorTransacao)
						saldo = saldo - valorTransacao
					
						se(saldo < 0 )
						{
							se ((limite*-1) <= saldo)
							{
								limite = limite + saldo
								saldo = saldo - saldo
								limpa()
								escreva ("\nVocê atingiu o limite do cheque especial")
								escreva("\nSaldo atual: R$",saldo)
								escreva("\nLimite cheque especial: R$",limite)
								Util.aguarde(4000)
								limpa()
							}
							senao
							{
								escreva("Não é possível realizar esta operação, limite insuficiente\n")
								Util.aguarde(3000)
								limpa()
								saldo = saldo + valorTransacao
							}
						}
					}
						escreva("Deseja fazer outra operação? '1' para sim ou '2' para não: ")
						leia(opcao)
						se(opcao == 1)
						{
							movimentacoes--
							se(movimentacoes == 0)
							{
								escreva("Limite de operações atingido.\n")
								escreva("Obrigade, por escolher o Banco Geração !")
								Util.aguarde(5000)
							}
					
						}
						senao
						{
							movimentacoes = 0
						}
			}enquanto(movimentacoes !=0)
			
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4571; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */