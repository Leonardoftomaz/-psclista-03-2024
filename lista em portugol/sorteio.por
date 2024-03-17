programa
{
	inclua biblioteca Util --> util
	inteiro num1, num2, numeroSorteado

	funcao inicio()
	{
		escreva("Digite o primeiro número inteiro: ")
		leia(num1)

		escreva("Digite o segundo número inteiro: ")
		leia(num2)

		se (num1 > num2)
		{
			numeroSorteado = num1
			num1 = num2
			num2 = numeroSorteado
		}

		numeroSorteado = util.sorteia(num1, num2)

		escreva("O número sorteado é: ", numeroSorteado)

		se (numeroSorteado % 2 == 0)
		{
			escreva(" Este número é par.")
		}
		senao
		{
			escreva(" Este número é ímpar.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 543; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */