programa
{
     //Inclui a biblioteca de funções de texto
     
     inclua biblioteca Texto --> tx	
	
	//Define uma variável global que controla a quantidade de alunos
	
	inteiro a=10
	
	//Função para verificar se a matrícula já foi usada
	
	funcao cadeia cadastro (cadeia matricula[], inteiro x){

		cadeia registration=matricula[x]
		se (x>0){
			
			//Compara a matrícula atual com as anteriores
			
			para(inteiro i=0; i<x; i++){
			para(inteiro j=0; j<x; j++){
				se(i==j){j++}
				
				//Ignora se for a mesma posição

				//Se encontrar a matrícula repetida
				
				se(matricula[i]==matricula[j]){
					escreva("\n Esse número de matírcula já está emitido. Por favor, digite outro número: \n")
					leia(registration)}
					// Solicita nova matrícula
			}
			}
		     }
	          retorne registration
		}         // Retorna matrícula validada

	          // Função que valida um email digitado
	     
	    funcao cadeia LeituraEmail (cadeia Vemail[],inteiro j){
	     inteiro ver=0, ver2=0, quantificacao=0
		inteiro letra=0
		inteiro Pcom=0
		cadeia Vemail2=Vemail[j] // Copia o email original
		quantificacao = Texto.numero_caracteres(Vemail2) // Conta os caracteres

		faca{
			        // Procura por '@' e '.' no email
			ver=0
			ver2=0
			para(inteiro i=0; i<=quantificacao;i++){
				letra= Texto.posicao_texto("@", Vemail2, i)
				se(letra>0){

					ver=1
				}

				Pcom=Texto.posicao_texto(".", Vemail2, i)
				se(Pcom>0){

					ver2=1
				}
			}
               
               // Valida se os caracteres foram encontrados
				
				se(ver==0 e ver2==0){
					escreva("\nO email não apresenta '@' e '.', reescreva: \n")
					leia(Vemail2)}
					senao se(ver==0){
				     escreva("\nO email não apresenta '@', reescreva: \n")
					 	leia(Vemail2)}
					 	senao se(ver2==0){
					 escreva("\nO email não apresenta '.', reescreva: \n")
					 leia(Vemail2)}
	
				
				
		          }enquanto(ver!=1 ou ver2!=1)

		          retorne Vemail2

                   // Retorna o e-mail validado

	               }
	    
	    // Função que retorna o turno do aluno com base em um número
	    
	    funcao cadeia defTurno(inteiro per){
	    	cadeia Rtur

	    	escolha (per){

	    	caso 1:

	    	Rtur="Manhã"
	    	pare

	    	caso 2:
          Rtur="Tarde"
          pare

          caso 3:
          Rtur="Noite"
          pare

	    	caso contrario:
	    	Rtur="Indefinido"
          pare
          
          }

	    retorne Rtur

         // Retorna o turno selecionado
         
	    }
	     
	   // Função que solicita dados do responsável caso o aluno seja menor de idade
	
	   funcao verIdade(inteiro id[], inteiro y, cadeia nomeResp[], cadeia telResp[], cadeia emailR[]){
		cadeia emailResp2[10] 
		// Armazena email para validação
		
		se(id[y]<18){

			escreva("\nNome do Responsável: \n")
			leia(nomeResp[y])
			escreva("\nTelefone do Responsável: \n")
		     leia(telResp[y])
		     escreva("\nE-mail do Responsável: \n")
		     leia(emailResp2[y])
		     emailR[y]=LeituraEmail(emailResp2,y)
		}
	}

          // Função principal que executa todo o programa
		
		funcao inicio(){

	     // Declaração de variáveis
		
		cadeia nome[10], nomeR[10], email[10], email2[10], emailR[10], curso[10], turno[10], teleA[10]
		inteiro idade[10], i, tur
		cadeia nummat[10], nummat2[10], telR[10]

		// Coleta de dados dos alunos
		
		para(i=0;i<a;i++){

			escreva("____________________________\n")
               escreva("---------Boas Vindas--------\n")
               escreva("____________________________\n")
               escreva("======Ficha do Aluno ", i+1,"======\n")
               escreva("\n")
               escreva("\nNome do Aluno(a): \n")
               leia(nome[i])
               escreva("\nIdade do Aluno(a): \n")
               leia(idade[i])
               verIdade(idade,i,nomeR,telR,emailR) // Chama função para verificar idade
               escreva("\nE-mail do Aluno(a): \n")
			leia(email[i])
			email2[i]=LeituraEmail(email,i) // Valida o email
			escreva("\nNúmero da matrícula do Aluno(a): \n")
			leia(nummat[i])
			nummat2[i]=cadastro(nummat,i) // Valida a matrícula
			escreva("\nCurso do Aluno(a): \n")
			leia(curso[i])
			escreva("\nTelefone do Aluno(a): \n")
			leia(teleA[i])
			escreva("\nTurno do Curso: \n")
			escreva("1) Manhã\n 2)Tarde\n 3)Noite\n")
			leia(tur)
			turno[i]=defTurno(tur) // Define o turno
			
			}

               // Exibe os dados cadastrados de cada aluno

			para(i=0;i<a;i++){
				escreva("\n")
				escreva("======Ficha do ", nome[i]," |======|\n")
               escreva("\nNome: ",nome[i],"")
               escreva("\nIdade: ",idade[i]," anos")
               escreva("\nE-mail: ",email2[i],"")
               
               se(idade[i]<18){
               	escreva("\nNome do Responsável: ",nomeR[i],"")
               	escreva("\nTelefone do Responsável: ",telR[i],"")
               	escreva("\nE-mail do Responsável: ",emailR[i],"")
               }
               escreva("\nNúmero da matrícula: ",nummat2[i],"")
			escreva("\nCurso escolhido: ",curso[i],"")
			escreva("\nTurno: ",turno[i],"")
			}
			}
}
		
          
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3014; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */