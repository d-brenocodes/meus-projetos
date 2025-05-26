programa {
  inclua biblioteca Util -->u
  const inteiro tam=5
  inteiro vetor[tam],k=0

//funçaoo para percorrer o vetor até achar o valor desejado
  funcao inteiro LinearSearch(inteiro valor){
  inteiro i,achou=0
  para(i=0;i<tam;i++){
    se(valor==vetor[i]){
      retorne i
    }

  }
 
  retorne -1
  
  }

//função para ordenar os numeros sorteados
  funcao ordenar(){
    inteiro temp
  para(inteiro h=0;h<tam-1;h++){
    para(inteiro f=0;f<tam-h-1;f++){
      se(vetor[f]>vetor[f+1]){
        temp=vetor[f]
        vetor[f]=vetor[f+1]
        vetor[f+1]=temp
      }
    }
  }
    mostrar()
  }

//função para exibir o vetor ao usuario
  funcao mostrar(){
    para(inteiro g=0;g<=tam-1;g++){
      escreva("POS ",g,"[ ",vetor[g],"]; ")
    }
  }

//função para inserir os numeros sorteados ao vetor
  funcao inserir(inteiro numsorteado){
  se(k<tam){
    vetor[k]=numsorteado
    k++
  }
  }

//função para sortear os numeros a partir de 1 até 999
  funcao sortear(){
    para(inteiro j=0;j<tam;j++){
      inteiro sorteado=u.sorteia(1,999)
      inserir(sorteado)
    }
  }

//função principal
  funcao inicio() {
   inteiro valor,receberRetorno
   caracter escolhar,ecl
   //pergunta ao usuario se ele deseja sortear os numeros, 
   //caso sim o codigo continua, caso não o código encerra
   escreva("Deseja Sortear os numeros?:\n")
   leia(escolhar)
   se((escolhar=='S')ou(escolhar=='s')){
   	//chama a funçao para gerar números aleatorios
    sortear()
    escreva("\n")
    //mostra o vetor fora de ordem
    mostrar()
    escreva("\n")
    escreva("\nVALOR ORDENADO:\n")
    escreva("\n")
    //ordena o vetor e exibe ele novamente
    ordenar()
  escreva("\n")
      escreva("\nDeseja encontrar um valor?\n")
   leia(ecl)
   se((ecl=='S')ou(ecl=='s')){
      escreva("Qual valor?\n")
   leia(valor)
   //recebe o retorno da funçao, caso tenha achado o valor, 
   //ele recebe a posição onde o valor se encontra,
   //caso contrario ele recebe o valor -1
   receberRetorno=LinearSearch(valor)
   se(receberRetorno==-1){
    escreva("\nValor não encontrado\n")
   }senao{
    escreva("\nValor encontrado na Posição ",receberRetorno,"\n")
   }
   }
   }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */