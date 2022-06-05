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
		inteiro idade=0, qntd, opc, pos = 0 ,usuario=0 
		logico continuar = verdadeiro
		escreva("\nQuantos usuários serão cadastrados? : ")
		leia(qntd)
		cadeia nomes[100]
		inteiro idades[100]
	
		
		 enquanto(continuar){
			escreva("\n1: Cadastrar novo Usuário")
			escreva("\n2: Listar todos os usuários cadastrados")
			escreva("\n3: Sair do programa")
			escreva("\n")
			leia(opc)
			escolha(opc){
				caso 1:
				enquanto(usuario<=qntd e idade<=qntd){
					escreva("digite o nome do usuario : ")
					leia(nomes[usuario])

					escreva("digite a idade : ")
					leia(idades[idade])

					idade++
					usuario++
					}
			
					pare
			
				caso 2:
					escreva("\nLista de cadastrados.....\n")
					para(usuario=0;usuario<100;usuario++){
					se(nomes[usuario] != ""){
					escreva("\n",nomes[usuario])
					}
					}
					para(idade=0;idade<100;idade++){
					se(idades[idade] != 0){
					escreva("\n",idades[idade])
					}
					}
					
				
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
 * @POSICAO-CURSOR = 1556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */