programa
{
    real r, pi = 3.141592
    inteiro op
    
    funcao inicio()
    {
        escreva("Escolha uma operação:\n")
        escreva("1 - Calcular o perímetro do círculo.\n")
        escreva("2 - Calcular a área do círculo.\n")
        escreva("3 - Calcular o volume da esfera.\n")
        escreva("Digite o código da operação desejada (1, 2 ou 3): ")
        leia(op)
        
        escreva("\nDigite o valor do raio: ")
        leia(r)
        
        se (op == 1) 
        {
            escreva("\nO perímetro do círculo é: ", 2 * pi * r)
        }
        senao se (op == 2) 
        {
            escreva("\nA área do círculo é: ", pi * r * r)
        }
        senao se (op == 3) 
        {
            escreva("\nO volume da esfera é: ", 4.0 / 3.0 * pi * r * r * r)
        }
        senao
        {
            escreva("\nCódigo de operação inválido.")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 891; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */