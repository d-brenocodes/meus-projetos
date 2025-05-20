programa {
    // Inclui biblioteca de funções de texto
    inclua biblioteca Texto --> tx

    const inteiro TAMANHO = 10

    // Função que gera "senhas aleatórias" simulando variação, sem usar aleatorio()
    funcao gerar_senhas(inteiro vetor[], inteiro tamanho) {
        inteiro i, base
        base = 123 // valor usado como semente

        para(i = 0; i < tamanho; i++) {
            vetor[i] = ((base * (i + 1)) % 999) + 1 // resultado sempre entre 1 e 999
        }
    }

    // Função que exibe o vetor de senhas
    funcao exibir_vetor(inteiro vetor[], inteiro tamanho) {
        inteiro i
        para(i = 0; i < tamanho; i++) {
            escreva(vetor[i], " ")
        }
        escreva("\n")
    }

    // Função Bubble Sort
    funcao bubble_sort(inteiro vetor[], inteiro tamanho) {
        inteiro i, j, temp
        para(i = 0; i < tamanho - 1; i++) {
            para(j = 0; j < tamanho - i - 1; j++) {
                se(vetor[j] > vetor[j + 1]) {
                    temp = vetor[j]
                    vetor[j] = vetor[j + 1]
                    vetor[j + 1] = temp
                }
            }
        }
    }

    // Função que mescla dois subvetores ordenados
    funcao merge(inteiro vetor[], inteiro iniciar, inteiro meio, inteiro fim) {
        inteiro esquerda[10], direita[10]
        inteiro n1, n2, i, j, k

        n1 = meio - iniciar + 1
        n2 = fim - meio

        para(i = 0; i < n1; i++) {
            esquerda[i] = vetor[iniciar + i]
        }

        para(j = 0; j < n2; j++) {
            direita[j] = vetor[meio + 1 + j]
        }

        i = 0
        j = 0
        k = iniciar

        enquanto(i < n1 e j < n2) {
            se(esquerda[i] <= direita[j]) {
                vetor[k] = esquerda[i]
                i = i + 1
            } senao {
                vetor[k] = direita[j]
                j = j + 1
            }
            k = k + 1
        }

        enquanto(i < n1) {
            vetor[k] = esquerda[i]
            i = i + 1
            k = k + 1
        }

        enquanto(j < n2) {
            vetor[k] = direita[j]
            j = j + 1
            k = k + 1
        }
    }

    // Função recursiva Merge Sort
    funcao merge_sort(inteiro vetor[], inteiro iniciar, inteiro fim) {
        inteiro meio
        se(iniciar < fim) {
            meio = (iniciar + fim) / 2
            merge_sort(vetor, iniciar, meio)
            merge_sort(vetor, meio + 1, fim)
            merge(vetor, iniciar, meio, fim)
        }
    }

    // Copia um vetor para outro
    funcao copiar_vetor(inteiro origem[], inteiro destino[], inteiro tamanho) {
        inteiro i
        para(i = 0; i < tamanho; i++) {
            destino[i] = origem[i]
        }
    }

    // Função principal
    funcao inicio() {
        inteiro senhas[TAMANHO], copia[TAMANHO]
        inteiro opcao

        gerar_senhas(senhas, TAMANHO)

        enquanto(verdadeiro) {
            escreva("\n--- MENU DE ORGANIZAÇÃO DE SENHAS ---\n")
            escreva("1 - Exibir senhas na ordem original\n")
            escreva("2 - Ordenar senhas com Bubble Sort\n")
            escreva("3 - Ordenar senhas com Merge Sort\n")
            escreva("4 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao) {
                caso 1: {
                    escreva("\nSenhas na ordem original:\n")
                    exibir_vetor(senhas, TAMANHO)
                    pare
                }

                caso 2: {
                    copiar_vetor(senhas, copia, TAMANHO)
                    bubble_sort(copia, TAMANHO)
                    escreva("\nSenhas ordenadas com Bubble Sort:\n")
                    exibir_vetor(copia, TAMANHO)
                    pare
                }

                caso 3: {
                    copiar_vetor(senhas, copia, TAMANHO)
                    merge_sort(copia, 0, TAMANHO - 1)
                    escreva("\nSenhas ordenadas com Merge Sort:\n")
                    exibir_vetor(copia, TAMANHO)
                    pare
                }

                caso 4: {
                    escreva("\nEncerrando o sistema...\n")
                    pare
                }

                caso contrario: {
                    escreva("Opção inválida. Tente novamente.\n")
                }
            }

            se(opcao == 4) {
                pare
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */