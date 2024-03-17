programa
{
    inclua biblioteca Matematica --> mat
    real a, b, c, delta, x1, x2
    
    funcao inicio()
    {
        escreva("Digite o coeficiente 'a': ")
        leia(a)
        escreva("Digite o coeficiente 'b': ")
        leia(b)
        escreva("Digite o coeficiente 'c': ")
        leia(c)
        
        delta = b * b - 4 * a * c
        
        se ((a == 0) e (b == 0) e (c != 0)) 
        {
            escreva("Coeficientes informados estão incorretamente.")
        }
        senao se ((a == 0) e (b != 0))
        {
            escreva("Essa é uma equação de primeiro grau.")
            x1 = -c / b
            escreva("A raiz real é: ", x1)
        }
        senao
        {
            se (delta < 0) 
            {
                escreva("Esta equação não possui raízes reais.")
            }
            senao se (delta == 0)
            {
                escreva("Esta equação possui duas raízes reais iguais.")
                x1 = -b / (2 * a)
                escreva("As raízes reais da equação são: ", x1, " e ", x1)
            }
            senao
            {
                escreva("Esta equação possui duas raízes reais diferentes.")
                x1 = ((-b) + mat.raiz(delta, 2.0)) / (2 * a)
                x2 = ((-b) - mat.raiz(delta, 2.0)) / (2 * a)
                escreva("As raízes reais da equação são: ", x1, " e ", x2)
            }
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */