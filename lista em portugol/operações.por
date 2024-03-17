programa
{
	inclua biblioteca Matematica --> mat
    real num1, num2, resultado
    caracter operador
    
    funcao inicio()
    {
        escreva("Digite o primeiro número real: ")
        leia(num1)
        
        escreva("Digite o segundo número real: ")
        leia(num2)
        
        escreva("Digite o símbolo da operação (+, -, *, / ou ^): ")
        leia(operador)
        
        escolha(operador)
        {
            caso '+':
                resultado = num1 + num2
                escreva("O resultado da operação é: ", resultado)
                pare
                
            caso '-':
                resultado = num1 - num2
                escreva("O resultado da operação é: ", resultado)
                pare
                
            caso '*':
                resultado = num1 * num2
                escreva("O resultado da operação é: ", resultado)
                pare
                
            caso '/':
                se (num2 != 0)
                {
                    resultado = num1 / num2
                    escreva("O resultado da operação é: ", resultado)
                }
                senao
                {
                    escreva("Erro: Divisão por zero.")
                }
                pare
                
            caso '^':
                resultado = mat.potencia(num1, num2)
                escreva("O resultado da operação é: ", resultado)
                pare
                
            caso contrario:
                escreva("Erro: Símbolo de operação inválido.")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1566; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */