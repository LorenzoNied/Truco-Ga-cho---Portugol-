programa {  
  inclua biblioteca Util --> u

  cadeia baralho[41]
  logico ocupacaoCarta [40]
  inteiro maoJogador1[3], maoJogador2[3]
  inteiro pontosPlayer1_Partida, pontosPlayer2_Partida 

  // essa parte funcionara como um cronometro que dara um tempo para apareceser as seguintes mensagens
  inteiro contagem = 01
  inteiro indice = 0
  cadeia olhos[3] = {"- -","O O","U U"}
  cadeia mensagens[3] = {"Bem vindo forasteiro", "Soube que tu es o melhor jogador daqui", " me impresione guri "}
  // variaveis que funcionarao para o menu inicial para voltar a ele e continuar, poderia usar apenas uma, mas acho que fica melhor assim
  cadeia menu_inicial
  cadeia voltar
  cadeia continuar

  // usei a funï¿½ï¿½o menu apenas para executar o que ï¿½ importante
  funcao inicio() {
    baralho[0] = "1 de Espada" // - 40 pontos
    baralho[1] = "1 de Paus" // - 39 pontos
    baralho[2] = "7 de Espada" // - 38 pontos
    baralho[3] = "7 de Ouro" // - 37 pontos
    baralho[4] = "3 de Paus" // - 37 pontos
    baralho[5] = "3 de Espada" // - 37 pontos
    baralho[6] = "3 de Ouro" // - 37 pontos
    baralho[7] = "3 de Copa" // - 37 pontos
    baralho[8] = "2 de Paus" // - 36 pontos
    baralho[9] = "2 de Espada" // - 36 pontos
    baralho[10] = "2 de Ouro" //- 36 pontos
    baralho[11] = "2 de Copa" //- 36 pontos
    baralho[12] = "1 de Copa" //- 35 pontos
    baralho[13] = "1 de Ouro" //- 35 pontos
    baralho[14] = "13 de Paus" //- 34 pontos
    baralho[15] = "13 de Espada" //- 34 pontos
    baralho[16] = "13 de Ouro" //- 34 pontos
    baralho[17] = "13 de Copa" //- 34 pontos
    baralho[18] = "12 de Paus" //- 33 pontos
    baralho[19] = "12 de Espada" //- 33 pontos
    baralho[20] = "12 de Ouro" //- 33 pontos
    baralho[21] = "12 de Copa" //- 33 pontos
    baralho[22] = "11 de Paus" //- 32 pontos
    baralho[23] = "11 de Espada" //- 32 pontos
    baralho[24] = "11 de Ouro" //- 32 pontos
    baralho[25] = "11 de Copa" //- 32 pontos
    baralho[26] = "7 de Paus" //- 31 pontos
    baralho[27] = "7 de Copa" //- 31 pontos
    baralho[28] = "6 de Paus" //- 30 pontos
    baralho[29] = "6 de Espada" //- 30 pontos
    baralho[30] = "6 de Ouro" //- 30 pontos
    baralho[31] = "6 de Copa" //- 30 pontos
    baralho[32] = "5 de Paus" //- 29 pontos
    baralho[33] = "5 de Espada" //- 29 pontos
    baralho[34] = "5 de Ouro" //- 29 pontos
    baralho[35] = "5 de Copa" //- 29 pontos
    baralho[36] = "4 de Paus" //- 28 pontos
    baralho[37] = "4 de Espada" //- 28 pontos
    baralho[38] = "4 de Ouro" //- 28 pontos
    baralho[39] = "4 de Copa" //- 28 pontos
    baralho[40] = "Nada na Mesa"
    
    //direciona para o menu principal
    menu()
    
  }
  //funï¿½ï¿½o faz a execuï¿½ï¿½o da 1ï¿½ parte do menu
  funcao menu() {
    limpa()
    escreva("╔═══════════════════════════════════════════════════════════════════════════════════════════════╗\n")
    escreva("║ █████████████████████████████████████████████████████████████████████████████████████████████ ║\n")
    escreva("║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ ║\n")
    escreva("║ ▓▓▓▓▓▓▓▓▓▓▓____  ╔════|▓▓▓▓  ╔════|▓▓▓▓▓▓▓▓  ║▓▓▓▓▓  ║▓▓▓  ╔═══════|▓▓▓▓  ╔═══════  ║▓▓▓▓▓▓▓▓ ║\n")
    escreva("║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓▓▓  ║▓▓▓▓  ║▓▓▓▓▓▓  ║▓▓▓▓▓  ║▓▓▓  ║▓▓▓▓▓▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓▓ ║\n")
    escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒▒▒ _║▒▒▒▒▒▒  ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
    escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒ _║▒▒▒▒▒▒▒▒  ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
    escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒▒▒_ ║▒▒▒▒▒▒_ ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
    escreva("║ ░░░░░░░░░░░░░░░__║░░░░░░░░░__║░░░░░__║░░░░░░________║▒▒▒▒__________║░░░░____________║░░░░░░░░ ║\n")
    escreva("║ ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ║\n")
    escreva("║                                 -Truco Gauderio-1.0.0-                                        ║\n")
    escreva("║                                    ♠ 1 - Jogar                                     |\\__/|     ║\n")
    escreva("║                                      2 - Creditos ♥                               ( ^ - ^)    ║\n")
    escreva("║                                     ♣3 - sair                                   \\  /   |      ║\n")
    escreva("║                                              ♦                                   \\(  vv)      ║\n")
    escreva("║                                                                                 ╔══════════╗  ║\n")
    escreva("║                                                                                 ╚═╦═╦══╦═╦═╝  ║\n")
    escreva("║                                                                                   ║ ║░▒║▓║    ║\n")
    escreva("║                                                                                   ║ ║░▒║▓║    ║\n")
    escreva("╚═══════════════════════════════════════════════════════════════════════════════════════════════╝\n")
    escreva("---------> ")
    leia(menu_inicial)
    //Usei o escolha para direcionar o jogador a diferentes telas
    escolha(menu_inicial){
      caso "1":
        limpa()
        jogo_menu()
        pare
      caso "2":
        limpa()
        escreva("╔═══════════════════════════════════════════════════════════════════════════════════════════════╗\n")
        escreva("║ █████████████████████████████████████████████████████████████████████████████████████████████ ║\n")
        escreva("║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ ║\n")
        escreva("║ ▓▓▓▓▓▓▓▓▓▓▓____  ╔════|▓▓▓▓  ╔════|▓▓▓▓▓▓▓▓  ║▓▓▓▓▓  ║▓▓▓  ╔═══════|▓▓▓▓  ╔═══════  ║▓▓▓▓▓▓▓▓ ║\n")
        escreva("║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓▓▓  ║▓▓▓▓  ║▓▓▓▓▓▓  ║▓▓▓▓▓  ║▓▓▓  ║▓▓▓▓▓▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓▓ ║\n")
        escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒▒▒ _║▒▒▒▒▒▒  ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
        escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒ _║▒▒▒▒▒▒▒▒  ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
        escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒▒▒_ ║▒▒▒▒▒▒_ ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
        escreva("║ ░░░░░░░░░░░░░░░__║░░░░░░░░░__║░░░░░__║░░░░░░________║▒▒▒▒__________║░░░░____________║░░░░░░░░ ║\n")
        escreva("║ ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ║\n")
        escreva("║                                 -Truco Gauderio-1.0.0-                                        ║\n")
        escreva("║                           > projetado por Gian Roso e Lorenzo Nied                 |\\__/|     ║\n")
        escreva("║                           > Codigo jogo: Lorenzo Nied                             ( ~ . ~)    ║\n")
        escreva("║                           > Graficos: Gian Roso                                 \\  /   |      ║\n")
        escreva("║                           > Codigo Pontuacao: Lorenzo Nied                       \\(  vv)      ║\n")
        escreva("║                           > Codigo menu: Gian Roso                              ╔══════════╗  ║\n")
        escreva("║                                                                                 ╚═╦═╦══╦═╦═╝  ║\n")
        escreva("║                                                                                   ║ ║░▒║▓║    ║\n")
        escreva("║                                                                                   ║ ║░▒║▓║    ║\n")
        escreva("╚═══════════════════════════════════════════════════════════════════════════════════════════════╝\n")
        escreva("Digite qualquer tecla para voltar: ")
        leia(voltar)
        escolha(voltar){
          caso "1":
            menu()
            pare
          caso contrario:
            menu()
            pare
        }
        pare
      caso "3":
        limpa()
        escreva("╔═══════════════════╗  ")
        escreva("\n║                   ║")
        escreva("\n║     |\\__/|      z ║")
        escreva("\n║    ( - . -) Z z   ║")
        escreva("\n║  \\  /   |         ║")
        escreva("\n║   \\(  vv)         ║")
        escreva("\n║   SAINDO......    ║")
        escreva("\n╚═══════════════════╝")
        pare
        // ao inves de por um Loop complexo apenas usei o caso contrario para redirecionar a tela novamente
      caso contrario:
        menu()
        pare
    }
  }
  //Essa funï¿½ï¿½o apenas executa uma pergunta se quer continuar 
  funcao jogo_menu(){
    limpa()
    escreva("╔═══════════════════════════════════════════════════════════════════════════════════════════════╗\n")
    escreva("║ █████████████████████████████████████████████████████████████████████████████████████████████ ║\n")
    escreva("║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ ║\n")
    escreva("║ ▓▓▓▓▓▓▓▓▓▓▓____  ╔════|▓▓▓▓  ╔════|▓▓▓▓▓▓▓▓  ║▓▓▓▓▓  ║▓▓▓  ╔═══════|▓▓▓▓  ╔═══════  ║▓▓▓▓▓▓▓▓ ║\n")
    escreva("║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓▓▓  ║▓▓▓▓  ║▓▓▓▓▓▓  ║▓▓▓▓▓  ║▓▓▓  ║▓▓▓▓▓▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓  ║▓▓▓▓▓▓▓▓ ║\n")
    escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒▒▒ _║▒▒▒▒▒▒  ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
    escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒ _║▒▒▒▒▒▒▒▒  ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
    escreva("║ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒▒  ║▒▒▒▒_ ║▒▒▒▒▒▒_ ║▒▒▒▒▒  ║▒▒▒  ║▒▒▒▒▒▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒  ║▒▒▒▒▒▒▒▒ ║\n")
    escreva("║ ░░░░░░░░░░░░░░░__║░░░░░░░░░__║░░░░░__║░░░░░░________║▒▒▒▒__________║░░░░____________║░░░░░░░░ ║\n")
    escreva("║ ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ║\n")
    escreva("║                                 -Truco Gauderio-1.0.0-                                        ║\n")
    escreva("║                                       Iniciar?                                     |\\__/|     ║\n")
    escreva("║                                                                                   ( V ^ V)    ║\n")
    escreva("║                                        1-SIM                                    \\  /   |      ║\n")
    escreva("║                                        2-NAO                                     \\(  vv)      ║\n")
    escreva("║                                                                                 ╔══════════╗  ║\n")
    escreva("║                                                                                 ╚═╦═╦══╦═╦═╝  ║\n")
    escreva("║                                                                                   ║ ║░▒║▓║    ║\n")
    escreva("║                                                                                   ║ ║░▒║▓║    ║\n")
    escreva("╚═══════════════════════════════════════════════════════════════════════════════════════════════╝\n")
    escreva("---------> ")
    leia(continuar)
    escolha(continuar){
      caso "1":
        partida()
        pare
      caso "2":
        menu()
        pare
      caso contrario:
        jogo_menu()
        pare
    }

  }
  funcao partida(){
    inteiro loop = 1, numeroDe_Rodadas = 1
    pontosPlayer1_Partida  = 0 
    pontosPlayer2_Partida = 0
    enquanto ( loop != 2){
      rodada(numeroDe_Rodadas)
      numeroDe_Rodadas++
      se(pontosPlayer1_Partida == 2){
        vitoria_P1()
        retorne
      } senao se(pontosPlayer2_Partida == 2){
        vitoria_P2 ()
        retorne
      }
    }
  }
  funcao partida_jogo_inicio(){
    enquanto( indice < 3 ) {
      limpa()
      escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║                                             "+mensagens[indice]+"                                                  |\n")
      escreva("║                                                                              ______________   ║\n")
      escreva("║                                         ___                                 |      ___     |  ║\n")
      escreva("║                                 |______|___|______|                         |    _|___|_   |  ║\n")
      escreva("║                                       { "+olhos[indice]+" }                               |     (O=O)    |  ║\n")
      escreva("║                                       _\\ = / _                              |   __|\\ /|__  |  ║\n")
      escreva("║                                      /  ___   \\                             |______________|  ║\n")
      escreva("║                                    ___ |   | ___                                Jogador 1     ║\n")
      escreva("║                       ____________|___||___||___|_____________                                ║\n")
      escreva("║                      /                                        \\                               ║\n")
      escreva("║                     /                                          \\                              ║\n")
      escreva("║                    /                                            \\                             ║\n")
      escreva("║                   /   ______                                     \\                            ║\n")
      escreva("║                  /   /      |                                     \\                           ║\n")
      escreva("║                 /   /_______|                                      \\                          ║\n")
      escreva("║                /   |________|                                       \\                         ║\n")
      escreva("║               /                     ____________                     \\                        ║\n")
      escreva("║              /        ____________ |            | ____________        \\                       ║\n")
      escreva("║             /        |            ||            ||            |        \\                      ║\n")
      escreva("║            /         |            ||            ||            |         \\                     ║\n")
      escreva("║           /          |            ||            ||            |          \\                    ║\n")
      escreva("║          /           |            ||            ||            |           \\                   ║\n")
      escreva("║         /____________|            ||            ||            |____________\\                  ║\n")
      escreva("║         \\____________|            ||____________||            |____________/                  ║\n")
      escreva("║            \\   \\ \\   |____________|              |____________|   / /   /                     ║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
      u.aguarde(1500)
      contagem++
      indice++
    }
  }
  //funcao da rodada, embaralhar cartas e somar pontos para partida.
  funcao rodada (inteiro numeroDe_Rodadas){
    inteiro ultimaCarta = 40
    inteiro pontosPlayer1_jogada, pontosPlayer2_jogada
    pontosPlayer1_jogada = 0
    pontosPlayer2_jogada = 0
    partida_jogo_inicio()
    sortearCartas (maoJogador1)
    sortearCartas (maoJogador2)

    para(inteiro i = 3; i>0 ; i--){
      inteiro cartaDigitada1 = escolherCarta(maoJogador1, i, ultimaCarta, pontosPlayer1_jogada, pontosPlayer2_jogada, numeroDe_Rodadas)
      ultimaCarta = cartaDigitada1
      inteiro cartaDigitada2 = escolherCarta(maoJogador2, i, ultimaCarta, pontosPlayer1_jogada, pontosPlayer2_jogada, numeroDe_Rodadas)
      ultimaCarta = cartaDigitada2
      
      se(cartaDigitada1 < cartaDigitada2){
        pontosPlayer1_jogada++
      } senao {
        pontosPlayer2_jogada++
      }
      se(pontosPlayer1_jogada == 2){
        vitoriarodadaP1()
        pontosPlayer1_Partida++
        retorne
      }senao se(pontosPlayer2_jogada == 2){
        vitoriarodadaP2()
        pontosPlayer2_Partida++
        retorne
      }  
    } 
  }
  //funï¿½ï¿½o para distribuiï¿½ï¿½o de cartas para cada jogador, sem distribuir cartas jï¿½ na mï¿½o. 
  funcao sortearCartas (inteiro maoJogador1funcao[]){
    inteiro valor_sorteado
    para(inteiro i = 0; i<3 ; i++){
      valor_sorteado = u.sorteia(0, 39)
      se(ocupacaoCarta[valor_sorteado]==verdadeiro){
        i--
      }
      senao{
        maoJogador1funcao[i]=valor_sorteado
        ocupacaoCarta[valor_sorteado]= verdadeiro
      }
    }
  }
  // Funï¿½ï¿½o de verificaï¿½ï¿½o se a carta jogada esta na mï¿½o do jogador ou se existe. 
  funcao inteiro escolherCarta(inteiro cartasJogador[], inteiro x, inteiro ultimaCarta,inteiro pontosPlayer1_jogada,inteiro pontosPlayer2_jogada,inteiro rodada){
    inteiro loop = 1
    cadeia digitarCarta
    faca{
      se(maoJogador1[0] == cartasJogador[0]){
        jogador1_partidas(cartasJogador, x, ultimaCarta, pontosPlayer1_jogada, pontosPlayer2_jogada, rodada)
      } senao {
        jogador2_partidas(cartasJogador, x, ultimaCarta, pontosPlayer1_jogada, pontosPlayer2_jogada, rodada)
      }
      escreva("escreva sua carta ---->\t")
      leia (digitarCarta)
      para(inteiro i = 0; i<3; i++){
        se(digitarCarta == baralho[cartasJogador[i]]){
          se(ocupacaoCarta[cartasJogador[i]] == verdadeiro){
            ocupacaoCarta[cartasJogador[i]] = falso
            retorne cartasJogador[i]
          } senao {}
        }
      }
    } enquanto (loop != 0)
  }
  // Nessa parte utilizei o cronometro para aparecer as mensagens anotadas no programa, assim a cada 3000s ela muda a mensagem sem trocar a tela
  // essas funcao a seguir sao as jogadas de cada jogador sendo dividida entre jogada 1, 2 e 3 cada jogada possui sua tela de jogador
  funcao jogador1_partidas(inteiro maoDoJogador[], inteiro x, inteiro ultimaCarta,inteiro pontosPlayer1_jogada,inteiro pontosPlayer2_jogada, inteiro rodada){
     inteiro locacao[x], y = 0
      para(inteiro i = 0; i<3; i++){
        se(ocupacaoCarta[maoDoJogador[i]] == verdadeiro){
          locacao[y] = maoDoJogador[i]
          y++
        }
      }
    se(x == 3){
      limpa()
      escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║                                    |_Rodada_",rodada,"_|                                               ║\n")
      escreva("║      Poncho-Man                                                              ______________   ║\n")
      escreva("║      Ponto Rodada = ",pontosPlayer2_jogada,"                   ___                                 |      ___     |  ║\n")
      escreva("║                                 |______|___|______|                         |    _|___|_   |  ║\n")
      escreva("║                                       { - - }                               |     (O=O)    |  ║\n")
      escreva("║                                       _\\ = /_                               |   __|\\ /|__  |  ║\n")
      escreva("║                                      /  ___  \\                              |______________|  ║\n")
      escreva("║                                    ___ |   | ___                                Jogador 1     ║\n")
      escreva("║                       ____________|___||___||___|_____________                  Coconut-Man   ║\n")
      escreva("║               |\\__/| /                                        \\       Ponto Rodada = ",pontosPlayer1_jogada,"        ║\n")
      escreva("║               (^-^ )/                                          \\            _________________ ║\n")
      escreva("║                \\   /                                            \\          |______SCORE______|║\n")
      escreva("║                 \\ /   ______                                     \\         |                 |║\n")
      escreva("║                 S/   /      |                                     \\        |                 |║\n")
      escreva("║                 /   /_______|                                      \\       |Ultima carta:    |║\n")
      escreva("║                /   |________|                                       \\      | ",baralho[ultimaCarta],"\n")
      escreva("║               /                     ____________                     \\     |Coconut-Man Pont:|║\n")
      escreva("║              /        ____________ |            | ____________        \\    |       ",pontosPlayer1_jogada,"         |║\n")
      escreva("║             /        |            ||            ||            |        \\   |LongHat-Man Pont:|║\n")
      escreva("║            /         |            ||            ||            |         \\  |       ",pontosPlayer2_jogada,"         |║\n")
      escreva("║           /          |            ||            ||            |          \\ |_________________|║\n")
      escreva("║          /           |",baralho[locacao[0]],"   ",baralho[locacao[1]],"    ",baralho[locacao[2]]," \n")
      escreva("║         /____________|            ||            ||            |____________\\                  ║\n")
      escreva("║         \\____________|            ||____________||            |____________/                  ║\n")
      escreva("║            \\   \\ \\   |____________|              |____________|   / /   /                     ║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    }
    ////////////////////////// seguda partida
    senao se(x == 2){
      limpa()
      escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║                                    |_Rodada_",rodada,"_|                                               ║\n")
      escreva("║         Poncho-Man                                                           ______________   ║\n")
      escreva("║         Ponto Rodada = ",pontosPlayer2_Partida,"                ___                                 |      ___     |  ║\n")
      escreva("║                                 |______|___|______|                         |    _|___|_   |  ║\n")
      escreva("║                                       { - - }                               |     (O=O)    |  ║\n")
      escreva("║                                       _\\ = /_                               |   __|\\ /|__  |  ║\n")
      escreva("║                                      /       \\                              |______________|  ║\n")
      escreva("║                                       ___  ___                                  Jogador 1     ║\n")
      escreva("║                       _______________|___||___|_______________                  Coconut-Man   ║\n")
      escreva("║                      /                                        \\       Ponto Rodada = ",pontosPlayer1_Partida,"        ║\n")
      escreva("║                     /                                          \\            _________________ ║\n")
      escreva("║                    /                                            \\          |______SCORE______|║\n")
      escreva("║                   /   ______            ____                     \\         |                 |║\n")
      escreva("║                  /   /      |          /    \\                     \\        |                 |║\n")
      escreva("║                 /   /_______|         /______\\                     \\       |Ultima carta:    |║\n")
      escreva("║                /   |________|                                       \\      | ",baralho[ultimaCarta],"\n")
      escreva("║               /              ____________  ____________              \\     |Coconut-Man Pont:|║\n")
      escreva("║              /              |            ||            |              \\    |       ",pontosPlayer1_jogada,"         |║\n")
      escreva("║             /               |            ||            |               \\   |LongHat-Man Pont:|║\n")
      escreva("║            /                |            ||            |                \\  |       ",pontosPlayer2_jogada,"         |║\n")
      escreva("║           /                 |            ||            |                 \\ |_________________|║\n")
      escreva("║          /                  |",baralho[locacao[0]],"   ",baralho[locacao[1]],"\n")
      escreva("║         /___________________|            ||            |___________________\\                  ║\n")
      escreva("║         \\___________________|____________||____________|___________________/                  ║\n")
      escreva("║            \\   \\ \\                                                / /   /                     ║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    }
    /////////////////////////Partida 3
    senao se(x == 1){
      limpa()
      escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║                                    |_Rodada_",rodada,"_|                                               ║\n")
      escreva("║         Poncho-Man                                                           ______________   ║\n")
      escreva("║         Ponto Rodada = ",pontosPlayer2_Partida,"                ___                                 |      ___     |  ║\n")
      escreva("║                                 |______|___|______|                         |    _|___|_   |  ║\n")
      escreva("║                                       { - - }                               |     (O=O)    |  ║\n")
      escreva("║                                       _\\ = /_                               |   __|\\ /|__  |  ║\n")
      escreva("║                                      /       \\        |\\__/|                |______________|  ║\n")
      escreva("║                                         ___           (_ O.O)                  Jogador 1      ║\n")
      escreva("║                       _________________|___|___________/   |S_                 Coconut-Man    ║\n")
      escreva("║                      /                                (_2vv)  \\       Ponto Rodada = ",pontosPlayer1_Partida,"        ║\n")
      escreva("║                     /                                          \\            _________________ ║\n")
      escreva("║                    /                                            \\          |______SCORE______|║\n")
      escreva("║                   /   ______            ____                     \\         |                 |║\n")
      escreva("║                  /   /      |          /    \\                     \\        |                 |║\n")
      escreva("║                 /   /_______|         /______\\                     \\       |Ultima carta:    |║\n")
      escreva("║                /   |________|                                       \\      | ",baralho[ultimaCarta],"\n")
      escreva("║               /                     ____________                     \\     |Coconut-Man Pont:|║\n")
      escreva("║              /                     |            |                     \\    |       ",pontosPlayer1_jogada,"         |║\n")
      escreva("║             /                      |            |                      \\   |LongHat-Man Pont:|║\n")
      escreva("║            /                       |            |                       \\  |       ",pontosPlayer2_jogada,"         |║\n")
      escreva("║           /                        |            |                        \\ |_________________|║\n")
      escreva("║          /                         |",baralho[locacao[0]],"\n")
      escreva("║         /__________________________|            |__________________________\\                  ║\n")
      escreva("║         \\__________________________|____________|__________________________/                  ║\n")
      escreva("║            \\   \\ \\                                                / /   /                     ║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    }
  retorne
  }
  
////// Telas jogadores
  funcao jogador2_partidas(inteiro maoDoJogador[], inteiro x, inteiro ultimaCarta,inteiro pontosPlayer1_jogada,inteiro pontosPlayer2_jogada,inteiro rodada){
    inteiro locacao[x], y = 0
      para(inteiro i = 0; i<3; i++){
        se(ocupacaoCarta[maoDoJogador[i]] == verdadeiro){
          locacao[y] = maoDoJogador[i]
          y++
        }
      }
    se(x == 3){
      limpa()
      escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║                                    |_Rodada_",rodada,"_|                                               ║\n")
      escreva("║         Coconut-Man                                                          ______________   ║\n")
      escreva("║         Ponto Rodada = ",pontosPlayer1_jogada,"                ___                                 |      ___     |  ║\n")
      escreva("║                                       _|___|_                               ||____|___|___||  ║\n")
      escreva("║                           _            (O=O)                                |    { - - }   |  ║\n")
      escreva("║                         _|_|_        __|\\ /|__                              |   __\\ = /__  |  ║\n")
      escreva("║                          |..        /         \\                             |______________|  ║\n")
      escreva("║                         _|_|_         ___  ___                                  Jogador 2     ║\n")
      escreva("║                       _|_ ___|_______|___||___|_______________                  Poncho-Man    ║\n")
      escreva("║                      /  \\___/                                 \\       Ponto Rodada = ",pontosPlayer2_jogada,"        ║\n")
      escreva("║                     /                                          \\            _________________ ║\n")
      escreva("║                    /                                            \\          |______SCORE______|║\n")
      escreva("║                   /   ______            ____                     \\         |                 |║\n")
      escreva("║                  /   /      |          /    \\                     \\        |                 |║\n")
      escreva("║                 /   /_______|         /______\\                     \\       |Ultima carta:    |║\n")
      escreva("║                /   |________|                                       \\      | ",baralho[ultimaCarta],"\n")
      escreva("║               /                     ____________                     \\     |Coconut-Man Pont:|║\n")
      escreva("║              /        ____________ |            | ____________        \\    |       ",pontosPlayer1_jogada,"         |║\n")
      escreva("║             /        |            ||            ||            |        \\   |LongHat-Man Pont:|║\n")
      escreva("║            /         |            ||            ||            |         \\  |       ",pontosPlayer2_jogada,"         |║\n")
      escreva("║           /          |            ||            ||            |          \\ |_________________|║\n")
      escreva("║          /           |",baralho[locacao[0]],"    ",baralho[locacao[1]],"    ",baralho[locacao[2]]," \n")
      escreva("║         /____________|            ||            ||            |____________\\                  ║\n")
      escreva("║         \\____________|            ||____________||            |____________/                  ║\n")
      escreva("║            \\   \\ \\   |____________|              |____________|   / /   /                     ║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    }
    ////////////////////////// partida 2
    senao se(x == 2){
      limpa()
      escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║                                    |_Rodada_",rodada,"_|                                               ║\n")
      escreva("║         Coconut-Man                                                          ______________   ║\n")
      escreva("║         Ponto Rodada = ",pontosPlayer1_jogada,"                ___                                 |      ___     |  ║\n")
      escreva("║                                       _|___|_                               ||____|___|___||  ║\n")
      escreva("║                                        (O=O)                                |    { - - }   |  ║\n")
      escreva("║                                      __|\\ /|__                              |   __\\ = /__  |  ║\n")
      escreva("║                                     /         \\                             |______________|  ║\n")
      escreva("║                                         ___                                     Jogador 2     ║\n")
      escreva("║                       _________________|___|__________________                  Poncho-Man    ║\n")
      escreva("║                      /   ______ ===========________           \\       Ponto Rodada = ",pontosPlayer2_jogada,"        ║\n")
      escreva("║                     /   /__----/_/º==\\_\\°°°°°°°°°              \\            _________________ ║\n")
      escreva("║                    /                                            \\          |______SCORE______|║\n")
      escreva("║                   /   ______            ____                     \\         |                 |║\n")
      escreva("║                  /   /      |          /    \\                     \\        |                 |║\n")
      escreva("║                 /   /_______|         /______\\                     \\       |Ultima carta:    |║\n")
      escreva("║                /   |________|                                       \\      | ",baralho[ultimaCarta],"\n")
      escreva("║               /              ____________  ____________              \\     |Coconut-Man Pont:|║\n")
      escreva("║              /              |            ||            |              \\    |       ",pontosPlayer1_jogada,"         |║\n")
      escreva("║             /               |            ||            |               \\   |LongHat-Man Pont:|║\n")
      escreva("║            /                |            ||            |                \\  |       ",pontosPlayer2_jogada,"         |║\n")
      escreva("║           /                 |            ||            |                 \\ |_________________|║\n")
      escreva("║          /                  |",baralho[locacao[0]],"   ",baralho[locacao[1]],"\n")
      escreva("║         /___________________|            ||            |___________________\\                  ║\n")
      escreva("║         \\___________________|____________||____________|___________________/                  ║\n")
      escreva("║            \\   \\ \\                                                / /   /                     ║\n")
      escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
      escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    }
  //////////////////////////////// Partida 3
    senao se(x == 1){
    limpa()
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║                                    |_Rodada_",rodada,"_|                                               ║\n")
    escreva("║         Coconut-Man                                                          ______________   ║\n")
    escreva("║         Ponto Rodada = ",pontosPlayer2_jogada,"                ___                                 |      ___     |  ║\n")
    escreva("║                                       _|___|_                               ||____|___|___||  ║\n")
    escreva("║                                        (O=O)                                |    { - - }   |  ║\n")
    escreva("║                                      __|\\ /|__                              |   __\\ = /__  |  ║\n")
    escreva("║                                     /         \\                             |______________|  ║\n")
    escreva("║                                                                                 Jogador 1     ║\n")
    escreva("║                       ________________________________________                  Poncho-Man    ║\n")
    escreva("║                      /                                        \\       Ponto Rodada = ",pontosPlayer2_jogada,"        ║\n")
    escreva("║                     /                                          \\            _________________ ║\n")
    escreva("║                    /                                            \\          |______SCORE______|║\n")
    escreva("║                   /   ______            ____                     \\         |                 |║\n")
    escreva("║                  /   /      |          /    \\                     \\        |                 |║\n")
    escreva("║                 /   /_______|         /______\\                     \\       |Ultima carta:    |║\n")
    escreva("║                /   |________|                                       \\      | ",baralho[ultimaCarta],"\n")
    escreva("║               /                     ____________                     \\     |Coconut-Man Pont:|║\n")
    escreva("║              /                     |            |                     \\    |       ",pontosPlayer1_jogada,"         |║\n")
    escreva("║             /                      |            |                      \\   |LongHat-Man Pont:|║\n")
    escreva("║            /                       |            |                       \\  |       ",pontosPlayer2_jogada,"         |║\n")
    escreva("║           /                        |            |                        \\ |_________________|║\n")
    escreva("║          /                         |",baralho[locacao[0]],"\n")
    escreva("║         /__________________________|            |__________________________\\                  ║\n")
    escreva("║         \\__________________________|____________|__________________________/                  ║\n")
    escreva("║            \\   \\ \\                                                / /   /                     ║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    }
  }
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //////// telas finais
  funcao vitoriarodadaP1(){
    limpa()
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║                                    |_RODADA__Win_|                                            ║\n")
    escreva("║                                                                              ______________   ║\n")
    escreva("║                                         ___                                 |      ___     |  ║\n")
    escreva("║                                 |______|___|______|                         |    _|___|_   |  ║\n")
    escreva("║                     ______________    { º º }                               |     (v=v)    |  ║\n")
    escreva("║                    |              7   _\\ = /_                               |   __|\\ /|__  |  ║\n")
    escreva("║                    |   J#gu##a    |  /       \\                              |______________|  ║\n")
    escreva("║                    |______________|                                             Jogador 1     ║\n")
    escreva("║                       ________________________________________                  Coconut-Man   ║\n")
    escreva("║                      /                                        \\                               ║\n")
    escreva("║                     /                                          \\                              ║\n")
    escreva("║                    /                                            \\                             ║\n")
    escreva("║                   /   ______            ____                     \\                            ║\n")
    escreva("║                  /   /      |          /    \\                     \\                           ║\n")
    escreva("║                 /   /_______|         /______\\                     \\                          ║\n")
    escreva("║                /   |________|                                       \\                         ║\n")
    escreva("║               /         ____________________________________         \\                        ║\n")
    escreva("║              /         |                                    |         \\                       ║\n")
    escreva("║             /          |                                    |          \\                      ║\n")
    escreva("║            /           |             Coconut-Man            |           \\                     ║\n")
    escreva("║           /            |                                    |            \\                    ║\n")
    escreva("║          /             |               !WIN!                |             \\                   ║\n")
    escreva("║         /______________|                                    |______________\\                  ║\n")
    escreva("║         \\_____________|____________________________________|_______________/                  ║\n")
    escreva("║            \\   \\ \\     pressione ENTER para continuar             / /   /                     ║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    leia(voltar)
  }
  funcao vitoriarodadaP2(){
    limpa()
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║                                    |_RODADA__Win_|                                            ║\n")
    escreva("║                                                                              ______________   ║\n")
    escreva("║                                         ___                                 |      ___     |  ║\n")
    escreva("║                                       _|___|_                               ||____|___|___||  ║\n")
    escreva("║      ____________________________      (^=^)                                |    { o O }   |  ║\n")
    escreva("║     |                            7   __|\\ /|__                              |   __\\ = /__  |  ║\n")
    escreva("║     | Seu Chapeu é ridiculo      |  /         \\                             |______________|  ║\n")
    escreva("║     |____________________________|                                              Jogador 2     ║\n")
    escreva("║                       ________________________________________                  Poncho-Man    ║\n")
    escreva("║                      /                                        \\                               ║\n")
    escreva("║                     /                                          \\                              ║\n")
    escreva("║                    /                                            \\                             ║\n")
    escreva("║                   /   ______            ____                     \\                            ║\n")
    escreva("║                  /   /      |          /    \\                     \\                           ║\n")
    escreva("║                 /   /_______|         /______\\                     \\                          ║\n")
    escreva("║                /   |________|                                       \\                         ║\n")
    escreva("║               /         ____________________________________         \\                        ║\n")
    escreva("║              /         |                                    |         \\                       ║\n")
    escreva("║             /          |                                    |          \\                      ║\n")
    escreva("║            /           |             Poncho-Man             |           \\                     ║\n")
    escreva("║           /            |                                    |            \\                    ║\n")
    escreva("║          /             |               !WIN!                |             \\                   ║\n")
    escreva("║         /______________|                                    |______________\\                  ║\n")
    escreva("║         \\_____________|____________________________________|_______________/                  ║\n")
    escreva("║            \\   \\ \\     pressione ENTER para continuar             / /   /                     ║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    leia(voltar)
  }
  funcao vitoria_P1(){
    limpa()
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║                                    ____________________                                       ║\n")
    escreva("║                                   /                    \\                                      ║\n")
    escreva("║                                  |                      |                                     ║\n")
    escreva("║                                  |                      |                                     ║\n")
    escreva("║                            __    |                      |    __                               ║\n")
    escreva("║                           |  \\___|______________________|___/  |                              ║\n")
    escreva("║                           \\____________________________________/                              ║\n")
    escreva("║                                 ||          ___          ||                                   ║\n")
    escreva("║                                 ||        _|___|_        ||                                   ║\n")
    escreva("║                                 ||         (O=O)         ||                                   ║\n")
    escreva("║                                 ||       __|\\ /|__       ||                                   ║\n")
    escreva("║                                 ||                       ||                                   ║\n")
    escreva("║                                 ||______________________/ |                                   ║\n")
    escreva("║                                 |______ Coconut-Man ______|                                   ║\n")
    escreva("║          ░   ╔══════════════════════════════════════════════════════════════╗                 ║\n")
    escreva("║     ░        ║   _         __         _     ________          __     __     ║          ░      ║\n")
    escreva("║ ░          ░ ║  \\  \\     /    \\     /  /      |  |          /   |   / /     ║  ░         ░    ║\n")
    escreva("║   ░   ░░ ░   ║   \\  \\   /  /\\  \\   /  /       |  |         / /| |  / /      ║     ░           ║\n")
    escreva("║ ░  ░░  ░   ░░║    \\  \\_/  /  \\  \\_/  /        |  |        / / | |_/ /       ║   ░    ░░       ║\n")
    escreva("║░ ░  ░░ ░░ ░  ║     \\_____/    \\_____/       __|__|__     /_/  |____/        ║░   ░  ░░   ░░░ ║\n")
    escreva("║░░░░░░░░░░░░░░╚══════════════════════════════════════════════════════════════╝░░░░░░░░░░░░░░░░░║\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ Digite 1 se quer ver os Score ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓║\n")
    escreva("║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ Digite ENTER para continuar ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    leia(voltar)

    escolha(voltar){
      caso "1":
      pontuacao_final()
      pare
      caso contrario:
      menu() 
      pare
    }
  }
  funcao vitoria_P2(){
    limpa()
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║                                    ____________________                                       ║\n")
    escreva("║                                   /                    \\                                      ║\n")
    escreva("║               _                  |                      |                   _                 ║\n")
    escreva("║              | \\                 |                      |                  / |                ║\n")
    escreva("║              |  \\                |                      |                 /  |                ║\n")
    escreva("║              |   \\_______________|______________________|________________/   |                ║\n")
    escreva("║              \\_______________________________________________________________/                ║\n")
    escreva("║                                 ||          ___          ||                                   ║\n")
    escreva("║                                 ||    |____|___|___|     ||                                   ║\n")
    escreva("║                                 ||        { - - }        ||                                   ║\n")
    escreva("║                                 ||       __\\ = /__       ||                                   ║\n")
    escreva("║                                 ||                       ||                                   ║\n")
    escreva("║                                 ||______________________/ |                                   ║\n")
    escreva("║                                 |_____ Poncho-Man ________|                                   ║\n")
    escreva("║          ░   ╔══════════════════════════════════════════════════════════════╗                 ║\n")
    escreva("║     ░        ║   _         __         _     ________          __     __     ║          ░      ║\n")
    escreva("║ ░          ░ ║  \\  \\     /    \\     /  /      |  |          /   |   / /     ║  ░         ░    ║\n")
    escreva("║   ░   ░░ ░   ║   \\  \\   /  /\\  \\   /  /       |  |         / /| |  / /      ║     ░           ║\n")
    escreva("║ ░  ░░  ░   ░░║    \\  \\_/  /  \\  \\_/  /        |  |        / / | |_/ /       ║   ░    ░░       ║\n")
    escreva("║░ ░  ░░ ░░ ░  ║     \\_____/    \\_____/       __|__|__     /_/  |____/        ║░   ░  ░░   ░░░ ║\n")
    escreva("║░░░░░░░░░░░░░░╚══════════════════════════════════════════════════════════════╝░░░░░░░░░░░░░░░░░║\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ Digite 1 se quer ver os Score ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓║\n")
    escreva("║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ Digite ENTER para continuar ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    leia(voltar)

    escolha(voltar){
      caso "1":
      pontuacao_final()
      pare
      caso contrario:
      menu() 
      pare
    }
  }
  funcao pontuacao_final(){
    limpa()
    escreva("║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("|                                                                                               |\n")
    escreva("|                                          SCORES                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                   Jogador 1 - Coconut-Man: ",pontosPlayer1_Partida,"                                                  |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                   Jogador 2 - Long-Hat-Man: ",pontosPlayer2_Partida,"                                                |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                   pressione qualquer tecla para retornar para retornar ao menu                |\n")
    escreva("╠═══════════════════════════════════════════════════════════════════════════════════════════════╣\n")
    escreva("║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║\n")
    leia(voltar)
    voltar = menu()
 }
}