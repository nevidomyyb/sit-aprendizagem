programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade, qntd, opc, pos = 0
		logico continuar = verdadeiro
		escreva("\nQuantos usuários serão cadastrados?")
		leia(qntd)
		cadeia nomes[100]
		inteiro idades[100]
		enquanto (continuar) {
			escreva("\n1: Cadastrar novo Usuário")
			escreva("\n2: Listar todos os usuários cadastrados")
			escreva("\n3: Sair do programa")
			escreva("\n")
			leia(opc)
			escolha(opc){
				caso 1:
					se (pos == qntd) {
						escreva("\n")
						escreva("\nNúmero de usuários já cadastrados")
						escreva("\n")
						pare
					} senao {
						para (inteiro cont = 1; cont <= qntd; cont++) {
							escreva("\nUSUÁRIO ", cont)
							escreva("\nNome: ")
							leia(nome)
							escreva("\nIdade: ")
							leia(idade)
							escreva("\n")
							nomes[pos] = nome
							idades[pos] = idade
							pos++
						}
						pare
					}
				caso 2:
						
					pare
				caso 3:
					continuar = falso
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
 * @POSICAO-CURSOR = 715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pos, 7, 28, 3}-{nomes, 11, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */