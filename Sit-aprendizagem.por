programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		/* Declaração das variáveis:
		 *  nome: onde será armazenado temporariamente o nome de cada usuário cadastrado
		 *  idade: onde será armazenado temporariamente a idade de cada usuário cadastrado
		 *  qntd: número de usuários que será cadastrado nessa execução do programa
		 *  opc: opção digitada pelo usuário, é verificada no "escolha"
		 *  pos: será utilizada posteriormente para identificar a posição dos vetores
		 *  continuar: controle para repetir o menu com as opções
		 */
		inteiro qntd, opc, posx = 0
		logico continuar = verdadeiro
		cadeia arquivos[100]
		escreva("\nQuantos usuários serão cadastrados?")
		leia(qntd)
		cadeia nomes[1000]
		cadeia idades[1000]
		para (inteiro l = 0; l<100; l++){
			nomes[l] = ""
			idades[l] = "0"
		}
		inteiro enderecoL = a.abrir_arquivo("usuarios.txt", a.MODO_LEITURA)
		para (inteiro c =0; c<100; c++) {
			cadeia linha = a.ler_linha(enderecoL)
			se (linha == "") {
				pare
			} senao {
				inteiro tamanhoL = t.numero_caracteres(linha)
				inteiro posicao = t.posicao_texto(",", linha, 0)
				nomes[c] = t.extrair_subtexto(linha, 0, posicao)
				idades[c] = t.extrair_subtexto(linha, posicao+1, tamanhoL)
			}
		}
		a.fechar_arquivo(enderecoL)
		para (inteiro l = 0; l<100; l++) {
			se (nomes[posx] == "") {
				posx = posx
				pare
			} senao {
				posx++
			}
		}
		enquanto (continuar) {
			escreva("\n")
			escreva("\n1: Cadastrar novo Usuário")
			escreva("\n2: Listar todos os usuários cadastrados")
			escreva("\n3: Sair do programa")
			escreva("\n")
			leia(opc)
			escolha(opc){
				caso 1:
					se (qntd == posx) {
						escreva("\nTotal de pessoas já cadastradas")
						pare
					} senao {
						escreva("\nCADASTRO [",posx+1,"]")
						escreva("\nNome: ")
						leia(nomes[posx])
						escreva("\nIdade: ")
						leia(idades[posx])
						posx++
						limpa()
					}
					pare
				caso 2:
					/*
					 * utilizar a função "para" para escrever na tela o nome de cada usuário e sua respectiva idade
					 * utilizando os vetores
					 */
					inteiro tamanho = u.numero_elementos(nomes)
					escreva("\nUSUÁRIOS CADASTRADOS")
					para (inteiro contador = 0; contador<tamanho; contador++) {
						se (nomes[contador] == "") {
							pare
						} senao {
								escreva("\n[",contador+1,"]")								
								escreva(nomes[contador], " tem ")
								escreva(idades[contador], " anos")
						}
					}
					pare
				caso 3:
					continuar = falso
					pare
			}
		}
					inteiro endereco = a.abrir_arquivo("usuarios.txt", a.MODO_ESCRITA)
					inteiro tamanho = u.numero_elementos(nomes)
					para (inteiro c = 0; c<tamanho; c++) {
						se (nomes[c] == "" ou idades[c] == "0"){
							pare	
						} senao {
							cadeia linha = nomes[c]+","+idades[c]
							a.escrever_linha(linha, endereco)
						}
					}
					a.fechar_arquivo(endereco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {arquivos, 19, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */