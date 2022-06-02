programa
{
	
	funcao inicio()
	{
		/* Declaração das variáveis:
		 *  nome: onde será armazenado temporariamente o nome de cada usuário cadastrado
		 *  idade: onde será armazenado temporariamente a idade de cada usuário cadastrado
		 *  qntd: número de usuários que será cadastrado nessa execução do programa
		 *  opc: opção digitada pelo usuário, é verificada no "escolha"
		 *  pos: será utilizada posteriormente para armazenar os nomes e idade nos vetores
		 *  continuar: controle para repetir o menu com as opções
		 */
		cadeia nome
		inteiro idade, qntd, opc, pos = 0
		logico continuar = verdadeiro
		escreva("\nQuantos usuários serão cadastrados?")
		leia(qntd)
		cadeia nomes[100]
		inteiro idades[100]
		para (inteiro l = 0; l<100; l++){
			nomes[l] = ""
			idades[l] = 0
		}
		enquanto (continuar) {
			escreva("\n1: Cadastrar novo Usuário")
			escreva("\n2: Listar todos os usuários cadastrados")
			escreva("\n3: Sair do programa")
			escreva("\n")
			leia(opc)
			escolha(opc){
				caso 1:
					/*
					 * criar um "para" para cadastrar o número correto de usuarios definidos na variável "qntd"
					 * realizar uma verificação se há espaços vazios nos vetores para cadastrar um novo usuário
					 * receber o valor do nome e idade e posicionalos no local correto dentro dos vetores
					 */
					pare
				caso 2:
					/*
					 * utilizar a função "para" para escrever na tela o nome de cada usuário e sua respectiva idade
					 * utilizando os vetores
					 */
				
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
 * @POSICAO-CURSOR = 1069; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pos, 15, 28, 3}-{nomes, 19, 9, 5}-{idades, 20, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */