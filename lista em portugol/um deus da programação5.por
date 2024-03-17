programa
{
    real totalCompra = 0
    inteiro opcao, quantidade, numProdutos
    cadeia vetorProdutos[100]
    real vetorPrecos[100]

    inteiro notas50 = 0, notas20 = 0, notas10 = 0, notas5 = 0, notas2 = 0, notas1 = 0,res = 0
    real valorPago, troco

    funcao inicio()
    {
        escreva("Produtos:\n")
        escreva("1 - Salgadinho - R$ 7,00\n")
        escreva("2 - Doce - R$ 2,00\n")
        escreva("3 - Suco - R$ 5,00\n")
        escreva("4 - Refri - R$ 8,00\n")
        
        escreva("\nQuantos produtos deseja comprar? ")
        leia(numProdutos)

        para (inteiro i = 1; i <= numProdutos; i++)
        {
            escreva("Digite o número do produto ", i, ": ")
            leia(opcao)
            
            escolha(opcao)
            {
                caso 1:
                    vetorProdutos[i] = "Salgadinho"
                    vetorPrecos[i] = 7
                    pare
                caso 2:
                    vetorProdutos[i] = "Doce"
                    vetorPrecos[i] = 2
                    pare
                caso 3:
                    vetorProdutos[i] = "Suco"
                    vetorPrecos[i] = 5
                    pare
                caso 4:
                    vetorProdutos[i] = "Refri"
                    vetorPrecos[i] = 8
                    pare
                caso contrario:
                    escreva("Opção inválida.\n")
                    i--
            }
        }

        // Exibindo os produtos e preços selecionados
        para (inteiro i = 1; i <= numProdutos; i++)
        {
            escreva("Produto ", i, ": ", vetorProdutos[i], " - R$ ", vetorPrecos[i], "\n")
        }

        // Seleção de produtos
        faca
        {
            escreva("\nEscolha um produto para informar a quantida (ou 0 para finalizar/ Prosseguir com a compra): ")
            leia(opcao)

            se (opcao == 0)
                pare

            se (opcao < 0 ou opcao > numProdutos)
            {
                escreva("Opção inválida.\n")
                pare
            }

            escreva("Digite a quantidade desejada: ")
            leia(quantidade)

            se (quantidade <= 0)
            {
                escreva("Quantidade inválida.\n")
                pare
            }

            // Atualizando o total da compra
            totalCompra = totalCompra + quantidade * vetorPrecos[opcao]
            escreva("Produto: ",quantidade," ",vetorProdutos[opcao], " adicionado ao carrinho.\n")
        }
        enquanto (verdadeiro)

        // Exibindo o total da compra
        escreva("\nTotal da compra: R$", totalCompra, "\n")

        // Leitura do valor pago
        escreva("\nDigite o valor pago: ")
        leia(valorPago)

        // Verificando se o valor pago é suficiente
        se (valorPago < totalCompra)
        {
            escreva("Quantia paga insuficiente para realizar a compra.\n")
            retorne
        }
        
        // Cálculo do troco
        troco = valorPago - totalCompra

        // Contagem das notas necessárias para o troco
        enquanto (troco >= 50)
        {
            notas50 = notas50 + 1
            troco = troco - 50
        }
        enquanto (troco >= 20)
        {
            notas20 = notas20 + 1
            troco = troco - 20
        }
        enquanto (troco >= 10)
        {
            notas10 = notas10 + 1
            troco = troco - 10
        }
        enquanto (troco >= 5)
        {
            notas5 = notas5 + 1
            troco = troco - 5
        }
        enquanto (troco >= 2)
        {
            notas2 = notas2 + 1
            troco = troco - 2
        }
        enquanto (troco >= 1)
        {
            notas1 = notas1 + 1
            troco = troco - 1
        }

        // Exibindo as notas necessárias para o troco
        escreva("\nNotas necessárias para o troco:\n")
        se (notas50 > 0)
            escreva("Notas de R$ 50,00: ", notas50, "\n")
        se (notas20 > 0)
            escreva("Notas de R$ 20,00: ", notas20, "\n")
        se (notas10 > 0)
            escreva("Notas de R$ 10,00: ", notas10, "\n")
        se (notas5 > 0)
            escreva("Notas de R$ 5,00: ", notas5, "\n")
        se (notas2 > 0)
            escreva("Notas de R$ 2,00: ", notas2, "\n")
        se (notas1 > 0)
            escreva("Notas de R$ 1,00: ", notas1, "\n")
        senao escreva("troco não necessário")
    }
    //foi foda
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */