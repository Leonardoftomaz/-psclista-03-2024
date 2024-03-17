programa
{
	
	funcao inicio()
	{
		real um,dois,tres,media
		escreva("primeiro número:\n")
		leia(um)
		escreva("segundo número:\n")
		leia(dois)
		escreva("terceiro número:\n")
		leia(tres)
		se (um>dois e um>tres) escreva("o maior número é ",um)
		senao se (dois>um e dois>tres) escreva("o maior número é ",dois)
		senao escreva("o maior número é ",tres)
		se (um<dois e um<tres) escreva(", o menor número é ",um)
		senao se (dois<um e dois<tres) escreva(", o menor número é ",dois)
		senao escreva(", o menor número é ",tres)
		media=(um+dois+tres)/3
		escreva(", a media é ",media)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 590; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */