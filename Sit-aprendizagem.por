programa
{
	
	funcao inicio()
	{
		/*
		 * nome: recebe o nome do cadastro atual
		 * idade: recebe a idade do cadastro atual
		 * qntd: referente a quantidade de cadastro que será feito nessa execução
		 * opc: escolha do usuário no menu
		 * pos: usado para saber se já foram cadastradas a quantidade certa de pessoas
		 * usuario: checar na listagem a posição
		 * idades e nomes: são os vetores de cadastro
		 * continuar: usado para continuar o enquanto ou não, dependendo da escolha do usuário
		 */
		cadeia nome, nomes[100]
		inteiro idade, qntd, opc, pos = 0, usuario = 0, idades[100], c = 0
		logico continuar = verdadeiro
		//Pergunta inicial de quantos usuários vão ser cadastrados nessa execução do programa
		escreva("\nQuantos usuários serão cadastrados?")
		leia(qntd)
		//Definimos os vetores nomes com "" para nulo e idades com 0 para nulo também, 
		//é usado na verificação se existem espaços vazios nos vetores para o cadastro
		para (inteiro l = 0; l<100; l++){
			nomes[l] = ""
			idades[l] = 0
		}

		//Verificar se o arquivo existe, se não existir criar um novo, se existir abrir no modo leitura
		//E com ele aberto no modo leitura ler todas as linhas e separar o nome e a idade dentro dos vetores
		
		

		




		
		//Inicio da estrutura de repetição com o menu sendo mostrado
		enquanto (continuar) {
			escreva("\n1: Cadastrar novo Usuário")
			escreva("\n2: Listar todos os usuários cadastrados")
			escreva("\n3: Sair do programa")
			escreva("\n")
			leia(opc)
			escolha(opc){
				// Opção de cadastro
				caso 1:
                         se(qntd == pos){
                         	escreva("\n Total de pessoas já cadastradas")
                          	escreva("\n")
                          	pare
                         }
                         se(nomes[pos] == "" e idades[pos] == 0){
                         	se ( c <= qntd) {
                         		escreva("\nCadastro[",c+1,"]")
	                         	escreva("\n Escreva o seu nome:")
	                         	leia(nomes[c])
	                         	escreva("\n Escreva sua idade:")
	                         	leia(idades[c])
	                         	pos++
	                         	c++
                         	}
                         }
                         pare
				caso 2:
					// Opção de listar os cadastros
					escreva("\nLista de cadastrados.....")
					para(usuario=0;usuario<100;usuario++){
						se(nomes[usuario] != "" e idades[usuario] != 0){
							escreva("\n",nomes[usuario],": ", idades[usuario])
						}
					}
					escreva("\n")
					pare
				caso 3:
					//Modificar para salvar os vetores dentro do arquivo

					
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
 * @POSICAO-CURSOR = 426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 16, 15, 5}-{idades, 17, 50, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */