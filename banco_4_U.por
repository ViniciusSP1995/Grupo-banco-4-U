programa {
	
	inclua  biblioteca Util

	
		caracter numero
		inteiro contadorTalao=0, x
		cadeia cpf
		real limite = 1000.0
		real emprestimoEmpresa
		real limiteEstudantil = 5000.00
		logico status
		caracter opcao, continuar, opcaoMovimentacao
		cadeia tipo
		real saldo = 0.00, valorMovimento = 0.00, saldoFinal = 0.00
		real usarLimite
		caracter movimento
		real limiteEmpresarial = 10000.00

	funcao inicio ()

{

	faca 
	{
		limpa ()
		escreva ("[BANCO 4U - G4]\n")
		escreva  ("[O SEU LUGAR É AQUI]\n\n\n")
		escreva ("1 - CONTA POUPANÇA \n2 - CONTA CORRENTE \n3 - CONTA ESPECIAL \n4 - CONTA EMPRESA \n5 - CONTA ESTUDANTIL \n6 - SAIR \n\n")

		escreva ("DIGITE O CÓDIGO DA OPÇÃO SELECIONADA: ")
		leia (opcao)

		se(opcao == '1') {  //conta poupança (vinny)
			inteiro diaAtual, diaAniversario
			escreva("Digite o dia de seu aniversário: ")
        		leia(diaAniversario)
			caracter movimento
			tipo = "POUPANÇA"
			cabecalho(tipo)
			inteiro aux = 0
   			escreva ("1 - Ativo ou 2 - Inativo: ")
			leia(aux)
		

			se(aux == 2) {
			pare
			}
			escreva("Saldo Atual: R$ ",saldo,"\n")
			
			escreva("Deseja fazer alguma movimentação, S/N: ")
			leia(movimento)
			


			se (movimento == 'S' ou movimento == 's') {
				
        		para (x=1; x<=10; x++) {
        		
        		escreva("Movimentação: " + x + "\n")
        		escreva("Saldo Atual: R$ ",saldo,"\n")

        		escreva("MOVIMENTO - D-debito ou C-Crédito: ")
        		leia(movimento)
        		se (movimento == 'D' ou  movimento == 'd') {
        			escreva("Valor movimento: R$ ")
        			leia(valorMovimento)

        			se( saldo <= 0 ou saldo < valorMovimento) {
        				escreva("Operação não poderá ser válida, pois o saldo ficará negativo!\n")

        			} senao se (saldo >=0) {
        			saldoFinal = saldo-valorMovimento
        			saldo = saldoFinal
       			escreva("Movimentação realizada com sucesso! Seu saldo agora é de: R$ ",saldoFinal,"\n\n")
        			}
        			
        		} senao se (movimento == 'C' ou movimento == 'c') {
        			escreva("Valor movimento: R$ ")
        			leia(valorMovimento)
        			saldoFinal = saldo + valorMovimento
        			saldo=saldoFinal
        			escreva("Movimentação realizada com sucesso! Seu saldo agora é de: R$ ",saldoFinal,"\n\n")

        		} senao {
        			escreva("Não foi possível identificar sua afirmação. Tente novamente \n ")
        		}
        		
        		escreva("Obrigado por utilizar nossos serviços!\n")
			
        		escreva("Continuar fazendo movimentações S/N: ")
        		leia(continuar)

        		se (continuar =='S') {
        			
        			escreva("Ok, vamos tentar novamente! \n")
        		} senao se (continuar =='N' ou x == 10) {
        			escreva("Digite o dia de hoje: ")
        			leia(diaAtual)
        			     se (diaAtual == diaAniversario) {
        				escreva("Parabéns! Você ganhou 5% com base no seu saldo!")
        				saldoFinal = (saldo * 0.05) + saldo
        				escreva("Seu saldo agora e de: R$ ",saldoFinal,"\n\n")
        				saldo = saldoFinal
        				escreva("Movimentação realizada com sucesso!\n")
        			} senao se (diaAtual != diaAniversario) {
        				escreva("Seu saldo agora é de: R$ ",saldoFinal,"\n\n")
        				escreva("Movimentação realizada com sucesso!\n")

        			}
        			escreva("Obrigade por utilizar nossos serviços! Volte sempre! \n")
        			pare
        		}
  
        		senao {
        			escreva("Não foi possível identificar sua afirmação \n")
        		} 
        	}
        		se (x == 11) {
        			escreva("Você excedeu o limite de tentativas!\n") 
        		}
				
			} senao se (movimento == 'N') {
				escreva("Obrigade por utilizar nossos serviços!\n")
				
			}senao {
				escreva("Não possível identificar sua afirmação")
			}
			Util.aguarde(2000)
		}
		senao se (opcao == '2') { //maya - conta corrente

			tipo = "CORRENTE"
			cabecalho (tipo)
			inteiro aux = 0
   		escreva ("1 - Ativo ou 2 - Inativo: ")
		leia(aux)

		se(aux == 2) {
			pare
			}
			escreva("Saldo Atual: R$ ",saldo,"\n")

			escreva("Deseja fazer alguma movimentação, S/N: ")
			leia(opcaoMovimentacao)
			
			se (opcaoMovimentacao == 'S'){
				movimentacaoCorrente ()
				
			} senao se(opcaoMovimentacao == 'N') {
				escreva("Obrigado por utilizar nossos serviços!\n")
				
			}senao{
				escreva("Não foi possível identificar sua afirmação")
			}
			
			// chama aqui FUNÇAO CONTA CORRENTE (MAYA)
			chequeEspecial() 
			
			Util.aguarde(2000)
			Util.aguarde (2000)
		} 


		senao se (opcao == '3') { // livia
				real limiteEmprestimo = 1000
				para (inteiro x=1; x<=10; x++) {
				
				real pedidoCredito = 0
				
				real opcaoEmprestimo 
				escreva("Movimentação: " + x + "\n")
				escreva ("Saldo Atual: R$ ",saldo, "\n")
				escreva ("Seu limite é de: R$ ",limiteEmprestimo, "\n")
				escreva ("MOVIMENTO - D-débito ou C_Crédito: ")
				leia(movimento)
				real debito = 0
				
				se (movimento == 'D') {
					
					escreva("Valor movimento: R$ ")
   	 				leia(valorMovimento)
   	 				se(saldo < valorMovimento) {
   	 					escreva("Impossível realizar esse débito, deseja realizar um empréstimo? (1 - S| 2 - N)  [LIMITE R$", limiteEmprestimo, "]\n")
   	 					leia(opcaoEmprestimo)

						
   	 					se(opcaoEmprestimo == 1) {

   	 						
							escreva("Qual o valor do empréstimo? [LIMITE R$", limiteEmprestimo, "]\n", "R$")
							leia(opcaoEmprestimo)
							se(opcaoEmprestimo > limiteEmprestimo) {
								escreva("Seu limite não permite isso!\n")
								}
							senao se(opcaoEmprestimo <= limiteEmprestimo) {
								limiteEmprestimo = limiteEmprestimo - opcaoEmprestimo
								saldo = saldo + opcaoEmprestimo
								}
							}
							

   	 					}
   	 				senao se(saldo >= valorMovimento) {
   	 					saldoFinal = saldo - valorMovimento
   						saldo=saldoFinal
   	 					}

					}
 

				senao se (movimento == 'C') {
					
					escreva("Valor movimento: R$ ")
   		 			leia(valorMovimento)
   	 				saldoFinal = saldo + valorMovimento
   		 			saldo=saldoFinal
				} 

				senao {
					escreva ("Não foi possível identificar sua arfimação. Tente novamente: ") 
				}

				escreva ("Continua S/N: ")
				leia (continuar)


				se (continuar == 'N') {

					escreva ("Movimentação realida com sucesso! \n")
					escreva ("Seu saldo agora é de: R$ ", saldo, "\n")
					escreva ("Obrigado por ultilizar nossos serviços! Volte sempre! \n")

					pare
				} 

				senao se (continuar == 'S') {
		
					escreva ("Ok, aguarde um minuto!")

				} 
	
				senao { 

					escreva ("Não foi possível identificar sua afirmação. Tente novamente: ")

				}

				Util.aguarde(2000)
				limpa ()
			
				
			}
							
			Util.aguarde(2000)
		 	

			escreva ("\n CONTA [ESPECIAL]")
			Util.aguarde (2000)
		} // livia

		senao se (opcao == '4' ) {
		tipo = "EMPRESA"
   	 	caracter auxMovimento
   		cadeia auxContinuar
   		cabecalho(tipo)
   		inteiro aux = 0
   		escreva ("1 - Ativo ou 2 - Inativo: ")
		leia(aux)

		se(aux == 2) 
		{
			pare
		}
   		inteiro x
   		   	 
   	 	para(x = 1; x <= 10; x++) {
   			 escreva("Movimentação: " + x + "\n")
   	 		escreva("Saldo Atual: R$ " + saldo + "\n")
   	 		escreva("Movimento: D - Débito ou C - Crédito ou E - Empréstimo Empresarial: ")
   			 leia(auxMovimento)
   		 	se(auxMovimento == 'D')
   			 {
   			 	debitoContaEmpresarial()
   			 }
   		 	senao se(auxMovimento == 'C')
   			 {
   			 	creditoContaEmpresarial()
   			 }
   		 	senao se(auxMovimento == 'E')
   			 {
   			 emprestimoContaEmpresarial()
   			 }
   			 senao
   			 {
   			 escreva("Digite uma opção válida")
   			 }
   		escreva("Continuar S/N: ")
   	 	leia(auxContinuar)
   		 se(auxContinuar == "S" ou auxContinuar == "sim" ou auxContinuar == "s")
   		 {
   	 		
   		 }
   		 senao se(auxContinuar == "N" ou auxContinuar == "n" ou auxContinuar == "não")
   		 {
   			 escreva("Obrigade por utilizar nossos serviços!")
   			 Util.aguarde(3000)
   			 pare
   		 }
   	 }

   	 se (x > 10)
   	 {
   		 escreva("Número de movimentações excedido!")
   		 Util.aguarde(3000)
   		 limpa()
   	 }

		} 

		senao se (opcao == '5' ) { //Ju

	    		tipo = "ESTUDANTIL"
   	 	caracter auxMovimento
   		cadeia auxContinuar
   		cabecalho(tipo)
   		inteiro aux = 0
   		escreva ("1 - Ativo ou 2 - Inativo: ")
		leia(aux)

		se(aux == 2) {
			pare
			}
   		inteiro x
   	 	
   	 	para(x = 1; x <= 10; x++) {
   			escreva("Movimentação: " + x + "\n")
   	 		escreva("Saldo Atual: R$ " + saldo + "\n")
   	 		escreva("Movimento: D - Débito ou C - Crédito ou E - Empréstimo Estudantil: ")
   			 leia(auxMovimento)
   		 	se(auxMovimento == 'D')
   			 {
   			 	debitoContaEstudantil()
   			 }
   		 	senao se(auxMovimento == 'C')
   			 {
   			 	creditoContaEstudantil()
   			 }
   		 	senao se(auxMovimento == 'E')
   			 {
   			 emprestimoContaEstudantil()
   			 }
   			 senao
   			 {
   			 escreva("Digite uma opção válida")
   			 }
   		escreva("Continuar S/N: ")
   	 	leia(auxContinuar)
   		 se(auxContinuar == "S" ou auxContinuar == "sim" ou auxContinuar == "s" )
   		 {
   	 		
   		 }
   		 senao se(auxContinuar == "N" ou auxContinuar == "n" ou auxContinuar == "não")
   		 {
   			 escreva("Obrigade por utilizar nossos serviços!")
   			 Util.aguarde(3000)
   			 pare
   		 }
   	 }

   	 se (x > 10)
   	 {
   		 escreva("Número de movimentações excedido!")
   		 Util.aguarde(3000)
   		 limpa()
   	 }
		} //Ju

		senao se (opcao == '6' ) {

			escreva ("\n Obrigade por utilizar nossos serviços! \n")
			Util.aguarde (2000)
		}

	} enquanto (opcao != '6')
		
			escreva ("FIM DO PROGRAMA!")
}

	funcao cabecalho (cadeia tipo) {
			caracter aux
			limpa ()
			escreva ("[BANCO 4U - G4]\n")
			escreva("[O SEU LUGAR É AQUI]\n\n\n")
			escreva ("Digite o número da conta: " )
			leia (numero)
			escreva ("Informe seu CPF: ")
			leia (cpf)
}
funcao debitoContaEstudantil() //Ju
  	  {    
   	 
   	 	escreva("Valor movimento: R$ ")
   	 	leia(valorMovimento)
   	 	se(saldo < valorMovimento) {
   	 		escreva("Impossível realizar esse débito. \n")
   	 		}
   	 	senao se(saldo >= valorMovimento) {
   	 		saldoFinal = saldo - valorMovimento
   			saldo=saldoFinal
   	 		}
  	  } //Ju

   	 funcao creditoContaEstudantil() //Ju
   	 {
   	 	escreva("Valor movimento: R$ ")
   		leia(valorMovimento)
   	 	saldoFinal = saldo + valorMovimento
   		saldo=saldoFinal
   	 
  	  } //Ju
	funcao debitoContaEmpresarial() 
  	  {    
   	 
   	 	escreva("Valor movimento: R$ ")
   	 	leia(valorMovimento)
   	 	se(saldo < valorMovimento) {
   	 		escreva("Impossível realizar esse débito. \n")
   	 	}
   	 	senao se (saldo >= valorMovimento) {
   			saldoFinal = saldo - valorMovimento
   		 	saldo=saldoFinal
   	 	}
  	  } 

   	 funcao creditoContaEmpresarial() 
   	 {
   	 	escreva("Valor movimento: R$ ")
   		leia(valorMovimento)
   	 	saldoFinal = saldo + valorMovimento
   		saldo=saldoFinal
   	 
  	  } 
  	  
	funcao movimentacaoCorrente (){ //maya
        	caracter movimento
        	para (inteiro x=1; x<=10; x++) {
        		escreva("NOVA MOVIMENTACAO \n\n")
			escreva("Saldo Atual: R$ ",saldo,"\n")
			escreva("MOVIMENTO - D-debito ou C-Crédito: ")
			leia(movimento)
			se (movimento == 'D' ou movimento == 'd') {
				escreva("Valor movimento: R$ ")
				leia(valorMovimento)
				saldoFinal = saldo-valorMovimento
				saldo=saldoFinal

			} senao se (movimento == 'C' ou movimento =='c') {
				escreva("Valor movimento: R$ ")
				leia(valorMovimento)
				saldoFinal = saldo + valorMovimento
				saldo=saldoFinal

			} senao {
				escreva("Não foi possível identificar sua afirmação. Tente novamente \n  ")
			}
			escreva("Movimentação realizada com sucesso!\n")
			escreva("Seu saldo agora é de: R$ ",saldoFinal,"\n\n")
			escreva("Obrigado por utilizar nossos serviços!\n")
			     
			escreva("Continuar fazendo movimentações S/N: ")
			leia(continuar)
			se(continuar == 'S') {
				escreva("Ok, vamos tentar novamente! \n")
			} senao se (continuar == 'N') {
				escreva("Obrigado por utilizar nossos serviços! Volte sempre! \n")
				pare
			} senao {
				escreva("Não foi possível identificar sua afirmação \n")
			}

        	}
		        }

  funcao chequeEspecial () {	//maya
		inteiro opcaoChequeE
		faca{
			escreva("\n olá, você tem disponivel cheque especial. digite 1 para sim ou digite qualquer outro numero para  não ")
			leia( opcaoChequeE )	
	      	escreva ("Olá PARABÉNS voce selecionou o cheque especial")
			contadorTalao=contadorTalao+1
       
		} enquanto (opcaoChequeE==1 e contadorTalao <=3 ) 
			escreva("\n Não foi possivel solicitar o cheque especial, verifique se já ultilizou 3x ou se esta já  disponivel, \n Obrigado. volte sempre")
		
        }

       funcao emprestimoContaEmpresarial()
       {
       	real valorSolicitadoEmprestimoEmpresarial
       	caracter auxEmprestimoSimNaoEmpresarial
       	escreva("Gostaria de solicitar o empréstimo empresarial? \n")
   		escreva("S - Sim ou N - Nao: ")
   		leia(auxEmprestimoSimNaoEmpresarial)
   		se (auxEmprestimoSimNaoEmpresarial == 'S')
   		{
   			escreva("Seu limite de empréstimo empresarial: " + limiteEmpresarial + "\n")
   			escreva("DIgite o valor solicitado: ")
   			leia(valorSolicitadoEmprestimoEmpresarial)
   			se (valorSolicitadoEmprestimoEmpresarial > 0 e valorSolicitadoEmprestimoEmpresarial <= limiteEmpresarial)
   			{
   				saldo = (saldo + valorSolicitadoEmprestimoEmpresarial)
   				limiteEmpresarial = (limiteEmpresarial - valorSolicitadoEmprestimoEmpresarial)
   			} senao {
   				escreva("Não foi possível solicitar o empréstimo \n")
   			} 
   				
   		} senao se (auxEmprestimoSimNaoEmpresarial == 'N') {
   				
			saldo = saldo + 0.00
   			
   			
   		} senao {
   			escreva("Você não digitou uma opção válida!")
   		}
       		 
       }

	
   	 funcao emprestimoContaEstudantil() //Ju
   	 {    
   		 real valorSolicitadoEmprestimo
   		 caracter auxEmprestimoSimNao
   		 escreva("Gostaria de solicitar o empréstimo estudantil? \n")
   				 escreva("S - Sim ou N - Nao: ")
   				 leia(auxEmprestimoSimNao)
   				 se (auxEmprestimoSimNao == 'S')
   				 {
   					 escreva("Seu limite de empréstimo estudantil: " + limiteEstudantil + "\n")
   					 escreva("Digite o valor solicitado: ")
   					 leia(valorSolicitadoEmprestimo)
   						 se (valorSolicitadoEmprestimo > 0 e valorSolicitadoEmprestimo <= limiteEstudantil)
   						 {
   							 saldo = (saldo + valorSolicitadoEmprestimo)
   							 limiteEstudantil = (limiteEstudantil - valorSolicitadoEmprestimo)
   							 
   						 }
   						 senao
   						 {
   							 escreva("Não foi possível solicitar o empréstimo \n")
   						 }
   				 }
   				 senao se (auxEmprestimoSimNao == 'N')
   				 {
   					 saldo = saldo + 0.00
   				 }
   				 senao
   				 {
   					 escreva("Você não digitou uma opção válida \n")
   				 }

		
   	 } //Ju
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14666; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */