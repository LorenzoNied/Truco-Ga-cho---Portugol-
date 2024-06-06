programa {  
    inclua biblioteca Util --> u

    cadeia baralho[40]
    logico ocupacaoCarta [40]
    inteiro maoJogador1[3], maoJogador2[3]

    // essa parte funcionara como um cronometro que dara um tempo para apareceser as seguintes mensagens
    inteiro contagem = 0
    cadeia olhos[3] = {"- -","O O","U U"}
    cadeia mensagens[3] = {"Bem vindo forasteiro", "Soube que tu es o melhor jogador daqui", " me impresione guri "}
    inteiro indice = 0
    // variaveis que funcionarao para o menu inicial para voltar a ele e continuar, poderia usar apenas uma, mas acho que fica melhor assim
    inteiro menu_inicial
    cadeia voltar
    inteiro continuar
  // usei a função menu apenas para executar o que é importante
  funcao inicio() {
    baralho[0] = "1 de Espada"+"  " // - 40 pontos
    baralho[1] = "1 de Paus"+"    " // - 39 pontos
    baralho[2] = "7 de Espada"+"  " // - 38 pontos
    baralho[3] = "7 de Ouro"+"   " // - 37 pontos
    baralho[4] = "3 de Paus "+"   " // - 37 pontos
    baralho[5] = "3 de Espada"+"  " // - 37 pontos
    baralho[6] = "3 de Ouro"+"    " // - 37 pontos
    baralho[7] = "3 de Copa"+"    " // - 37 pontos
    baralho[8] = "2 de Paus"+"    " // - 36 pontos
    baralho[9] = "2 de Espada"+"  " // - 36 pontos
    baralho[10] = "2 de Ouro"+"   " //- 36 pontos
    baralho[11] = "2 de Copa"+"   " //- 36 pontos
    baralho[12] = "1 de Copa"+"   " //- 35 pontos
    baralho[13] = "1 de Ouro"+"   " //- 35 pontos
    baralho[14] = "13 de Paus"+"  " //- 34 pontos
    baralho[15] = "13 de Espada" //- 34 pontos
    baralho[16] = "13 de Ouro"+"  " //- 34 pontos
    baralho[17] = "13 de Copa"+"  " //- 34 pontos
    baralho[18] = "12 de Paus"+"  " //- 33 pontos
    baralho[19] = "12 de Espada" //- 33 pontos
    baralho[20] = "12 de Ouro"+"  " //- 33 pontos
    baralho[21] = "12 de Copa"+"  " //- 33 pontos
    baralho[22] = "11 de Paus"+"  " //- 32 pontos
    baralho[23] = "11 de Espada" //- 32 pontos
    baralho[24] = "11 de Ouro"+"  " //- 32 pontos
    baralho[25] = "11 de Copa"+"  " //- 32 pontos
    baralho[26] = "7 de Paus"+"   " //- 31 pontos
    baralho[27] = "7 de Copa"+"   " //- 31 pontos
    baralho[28] = "6 de Paus"+"   " //- 30 pontos
    baralho[29] = "6 de Espada"+" " //- 30 pontos
    baralho[30] = "6 de Ouro"+"   " //- 30 pontos
    baralho[31] = "6 de Copa"+"   " //- 30 pontos
    baralho[32] = "5 de Paus"+"   " //- 29 pontos
    baralho[33] = "5 de Espada"+" " //- 29 pontos
    baralho[34] = "5 de Ouro"+"   " //- 29 pontos
    baralho[35] = "5 de Copa"+"   " //- 29 pontos
    baralho[36] = "4 de Paus"+"   " //- 28 pontos
    baralho[37] = "4 de Espada"+" " //- 28 pontos
    baralho[38] = "4 de Ouro"+"   " //- 28 pontos
    baralho[39] = "4 de Copa"+"   " //- 28 pontos
    
    //direciona para o menu principal
    menu()
  }

  //função faz a execução da 1° parte do menu
  funcao menu() {
    limpa()
    escreva(" _______________________________________________________________________________________________ \n")
    escreva("|###############################################################################################|\n")
    escreva("|###############################################################################################|\n")
    escreva("|############____   ____|####   ____|########  |#####  |###   _______|####   _______  |#########|\n")
    escreva("|################  |#########  |####  |######  |#####  |###  |############  |#######  |#########|\n")
    escreva("|################  |#########  |#### _|######  |#####  |###  |############  |#######  |#########|\n")
    escreva("|################  |#########  |## _|########  |#####  |###  |############  |#######  |#########|\n")
    escreva("|################  |#########  |####_ |######_ |#####  |###  |############  |#######  |#########|\n")
    escreva("|################__|#########__|#####__|######________|####__________|####____________|#########|\n")
    escreva("|###############################################################################################|\n")
    escreva("|                                 -Truco Gaúderio-1.0.0-                                        |\n")
    escreva("|                                      1 - Jogar                                     |\\__/|     |\n")
    escreva("|                                      2 - Creditos                                 ( ^ - ^)    |\n")
    escreva("|                                      3 - sair                                   \\  /   |      |\n")
    escreva("|                                                                                  \\(  vv)      |\n")
    escreva("|                                                                                 |TTTTTTTTTT|  |\n")
    escreva("|                                                                                  \\_\\_|_//_/   |\n")
    escreva("|                                                                                   |_|__|_|    |\n")
    escreva("|                                                                                   |_|__|_|    |\n")
    escreva("|===============================================================================================|\n")
    escreva("---------> ")
    leia(menu_inicial)
      //Usei o escolha para direcionar o jogador a diferentes telas
      escolha(menu_inicial){
        caso 1:
          limpa()
          jogo_menu()
        pare
        caso 2:
          limpa()
          escreva(" _______________________________________________________________________________________________ \n")
          escreva("|###############################################################################################|\n")
          escreva("|###############################################################################################|\n")
          escreva("|############____   ____|####   ____|########  |#####  |###   _______|####   _______  |#########|\n")
          escreva("|################  |#########  |####  |######  |#####  |###  |############  |#######  |#########|\n")
          escreva("|################  |#########  |#### _|######  |#####  |###  |############  |#######  |#########|\n")
          escreva("|################  |#########  |## _|########  |#####  |###  |############  |#######  |#########|\n")
          escreva("|################  |#########  |####_ |######_ |#####  |###  |############  |#######  |#########|\n")
          escreva("|################__|#########__|#####__|######________|####__________|####____________|#########|\n")
          escreva("|###############################################################################################|\n")
          escreva("|                                 -Truco Gaúderio-1.0.0-                                        |\n")
          escreva("|                           > projetado por Gian Roso e Lorenzo Nied                 |\\__/|     |\n")
          escreva("|                           > Codigo jogo: Lorenzo Nied                             ( ^ - ^)    |\n")
          escreva("|                           > Graficos: Gian Roso                                 \\  /   |      |\n")
          escreva("|                           > Codigo Pontuação: Lorenzo Nied                       \\(  vv)      |\n")
          escreva("|                           > Codigo menu: Gian Roso                              |TTTTTTTTTT|  |\n")
          escreva("|                                                                                  \\_\\_|_//_/   |\n")
          escreva("|                                                                                   |_|__|_|    |\n")
          escreva("|                                                                                   |_|__|_|    |\n")
          escreva("|===============================================================================================|\n")
          escreva("Digite qualquer tecla para voltar: ")
          leia(voltar)
            escolha(voltar){
              caso 1:
                menu()
              pare
              caso contrario:
                menu()
              pare
            }
        pare
        caso 3:
          limpa()
          escreva(" ___________________  ")
          escreva("\n|                   |")
          escreva("\n|     |\\__/|      z |")
          escreva("\n|    ( - . -) Z z   |")
          escreva("\n|  \\  /   |         |")
          escreva("\n|   \\(  vv)         |")
          escreva("\n|   SAINDO......    |")
          escreva("\n|___________________|")
        pare
        // ao inves de por um Loop complexo apenas usei o caso contrario para redirecionar a tela novamente
        caso contrario:
          menu()
        pare
        }
  }
  //Essa função apenas executa uma pergunta se quer continuar 
  funcao jogo_menu(){
    limpa()
    escreva(" _______________________________________________________________________________________________ \n")
    escreva("|###############################################################################################|\n")
    escreva("|###############################################################################################|\n")
    escreva("|############____   ____|####   ____|########  |#####  |###   _______|####   _______  |#########|\n")
    escreva("|################  |#########  |####  |######  |#####  |###  |############  |#######  |#########|\n")
    escreva("|################  |#########  |#### _|######  |#####  |###  |############  |#######  |#########|\n")
    escreva("|################  |#########  |## _|########  |#####  |###  |############  |#######  |#########|\n")
    escreva("|################  |#########  |####_ |######_ |#####  |###  |############  |#######  |#########|\n")
    escreva("|################__|#########__|#####__|######________|####__________|####____________|#########|\n")
    escreva("|###############################################################################################|\n")
    escreva("|                                 -Truco Gaúderio-1.2.0-                                        |\n")
    escreva("|                                       Iniciar?                                     |\\__/|     |\n")
    escreva("|                                                                                   ( V ^ V)    |\n")
    escreva("|                                        1-SIM                                    \\  /   |      |\n")
    escreva("|                                        2-Não                                     \\(  vv)      |\n")
    escreva("|                                                                                 |TTTTTTTTTT|  |\n")
    escreva("|                                                                                  \\_\\_|_//_/   |\n")
    escreva("|                                                                                   |_|__|_|    |\n")
    escreva("|                                                                                   |_|__|_|    |\n")
    escreva("|===============================================================================================|\n")
    escreva("---------> ")
    leia(continuar)
      escolha(continuar){
        caso 1:
          partida()
        pare
        caso 2:
          menu()
        pare
        caso contrario:
          jogo_menu()
        pare
      }

  }
  // Nessa parte utilizei o cronometro para aparecer as mensagens anotadas no programa, assim a cada 3000s ela muda a mensagem sem trocar a tela
  funcao partida_jogo_inicio(){
    enquanto( indice < 3 ) {
    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                             "+mensagens[indice]+"                                                  |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                 |______|___|______|                         |    _|___|_   |  |\n")
    escreva("|                                       { "+olhos[indice]+" }                               |     (O=O)    |  |\n")
    escreva("|                                       _\\ = / _                              |   __|\\ /|__  |  |\n")
    escreva("|                                      /  ___   \\                             |______________|  |\n")
    escreva("|                                    ___ |   | ___                                Jogador 1     |\n")
    escreva("|                       ____________|___||___||___|_____________                                |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\                              |\n")
    escreva("|                    /                                            \\                             |\n")
    escreva("|                   /   ______                                     \\                            |\n")
    escreva("|                  /   /      |                                     \\                           |\n")
    escreva("|                 /   /_______|                                      \\                          |\n")
    escreva("|                /   |________|                                       \\                         |\n")
    escreva("|               /                     ____________                     \\                        |\n")
    escreva("|              /        ____________ |            | ____________        \\                       |\n")
    escreva("|             /        |            ||            ||            |        \\                      |\n")
    escreva("|            /         |            ||            ||            |         \\                     |\n")
    escreva("|           /          |            ||            ||            |          \\                    |\n")
    escreva("|          /           |            ||            ||            |           \\                   |\n")
    escreva("|         /____________|            ||            ||            |____________\\                  |\n")
    escreva("|        |_____________|            ||____________||            |____________|                  |\n")
    escreva("|                      |____________|              |____________|                               |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
      u.aguarde(3000)
      contagem++
      // o indice serve para rastrear a variavel mensagem e trocala ao inves de escrever mais uma ao lado
      indice++
    }
  }
  // essas funcao a seguir sao as jogadas de cada jogador sendo dividida entre jogada 1, 2 e 3 cada jogada possui sua tela de jogador
  funcao jogador1_partidas(){
     limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    |_RODADA__1_|                                              |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                 |______|___|______|                         |    _|___|_   |  |\n")
    escreva("|                                       { - - }                               |     (O=O)    |  |\n")
    escreva("|                                       _\\ = /_                               |   __|\\ /|__  |  |\n")
    escreva("|                                      /  ___  \\                              |______________|  |\n")
    escreva("|                                    ___ |   | ___                                Jogador 1     |\n")
    escreva("|                       ____________|___||___||___|_____________                  Coconut-Man   |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\            _________________ |\n")
    escreva("|                    /                                            \\          |__SCORE__|___ ___||\n")
    escreva("|                   /   ______                                     \\         |                 ||\n")
    escreva("|                  /   /      |                                     \\        |                 ||\n")
    escreva("|                 /   /_______|                                      \\       |                 ||\n")
    escreva("|                /   |________|                                       \\      |                 ||\n")
    escreva("|               /                     ____________                     \\     |                 ||\n")
    escreva("|              /        ____________ |            | ____________        \\    |                 ||\n")
    escreva("|             /        |            ||            ||            |        \\   |                 ||\n")
    escreva("|            /         |            ||            ||            |         \\  |                 ||\n")
    escreva("|           /          |            ||            ||            |          \\ |_________________||\n")
    escreva("|          /           |",baralho[maoJogador1[0]]," ",baralho[maoJogador1[1]],"  ",baralho[maoJogador1[2]]," \n")
    escreva("|         /____________|            ||            ||            |____________\\                  |\n")
    escreva("|         \\____________|            ||____________||            |____________/                  |\n")
    escreva("|            \\   \\ \\   |____________|              |____________|   / /   /                     |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
    ////////////////////////// seguda partida
    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    |_RODADA__2_|                                              |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                 |______|___|______|                         |    _|___|_   |  |\n")
    escreva("|                                       { - - }                               |     (O=O)    |  |\n")
    escreva("|                                       _\\ = /_                               |   __|\\ /|__  |  |\n")
    escreva("|                                      /       \\                              |______________|  |\n")
    escreva("|                                       ___  ___                                  Jogador 1     |\n")
    escreva("|                       _______________|___||___|_______________                  Coconut-Man   |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\            _________________ |\n")
    escreva("|                    /                                            \\          |__SCORE__|___ ___||\n")
    escreva("|                   /   ______            ____                     \\         |                 ||\n")
    escreva("|                  /   /      |          /    \\                     \\        |                 ||\n")
    escreva("|                 /   /_______|         /______\\                     \\       |                 ||\n")
    escreva("|                /   |________|                                       \\      |                 ||\n")
    escreva("|               /              ____________  ____________              \\     |                 ||\n")
    escreva("|              /              |            ||            |              \\    |                 ||\n")
    escreva("|             /               |            ||            |               \\   |                 ||\n")
    escreva("|            /                |            ||            |                \\  |                 ||\n")
    escreva("|           /                 |            ||            |                 \\ |_________________||\n")
    escreva("|          /                  |            ||            |                  \\                   |\n")
    escreva("|         /___________________|            ||            |___________________\\                  |\n")
    escreva("|         \\___________________|____________||____________|___________________/                  |\n")
    escreva("|            \\   \\ \\                                                / /   /                     |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
    /////////////////////////Partida 3
    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    |_RODADA__3_|                                              |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                 |______|___|______|                         |    _|___|_   |  |\n")
    escreva("|                                       { - - }                               |     (O=O)    |  |\n")
    escreva("|                                       _\\ = /_                               |   __|\\ /|__  |  |\n")
    escreva("|                                      /       \\                              |______________|  |\n")
    escreva("|                                         ___                                    Jogador 1      |\n")
    escreva("|                       _________________|___|__________________                 Coconut-Man    |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\            _________________ |\n")
    escreva("|                    /                                            \\          |__SCORE__|___ ___||\n")
    escreva("|                   /   ______            ____                     \\         |                 ||\n")
    escreva("|                  /   /      |          /    \\                     \\        |                 ||\n")
    escreva("|                 /   /_______|         /______\\                     \\       |                 ||\n")
    escreva("|                /   |________|                                       \\      |                 ||\n")
    escreva("|               /                     ____________                     \\     |                 ||\n")
    escreva("|              /                     |            |                     \\    |                 ||\n")
    escreva("|             /                      |            |                      \\   |                 ||\n")
    escreva("|            /                       |            |                       \\  |                 ||\n")
    escreva("|           /                        |            |                        \\ |_________________||\n")
    escreva("|          /                         |            |                         \\                   |\n")
    escreva("|         /__________________________|            |__________________________\\                  |\n")
    escreva("|         \\__________________________|____________|__________________________/                  |\n")
    escreva("|            \\   \\ \\                                                / /   /                     |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
  }
  

////// Telas jogadores
  funcao jogador2_partidas(){
    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    |_RODADA__1_|                                              |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                       _|___|_                               ||____|___|___||  |\n")
    escreva("|                                        (O=O)                                |    { - - }   |  |\n")
    escreva("|                                      __|\\ /|__                              |   __\\ = /__  |  |\n")
    escreva("|                                     /         \\                             |______________|  |\n")
    escreva("|                                       ___  ___                                  Jogador 2     |\n")
    escreva("|                       _______________|___||___|_______________                  Long-Hat-Man  |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\            _________________ |\n")
    escreva("|                    /                                            \\          |__SCORE__|___ ___||\n")
    escreva("|                   /   ______            ____                     \\         |                 ||\n")
    escreva("|                  /   /      |          /    \\                     \\        |                 ||\n")
    escreva("|                 /   /_______|         /______\\                     \\       |                 ||\n")
    escreva("|                /   |________|                                       \\      |                 ||\n")
    escreva("|               /                     ____________                     \\     |                 ||\n")
    escreva("|              /        ____________ |            | ____________        \\    |                 ||\n")
    escreva("|             /        |            ||            ||            |        \\   |                 ||\n")
    escreva("|            /         |            ||            ||            |         \\  |                 ||\n")
    escreva("|           /          |            ||            ||            |          \\ |_________________||\n")
    escreva("|          /           |",baralho[maoJogador2[0]]," ",baralho[maoJogador2[1]],"  ",baralho[maoJogador2[2]]," \n")
    escreva("|         /____________|            ||            ||            |____________\\                  |\n")
    escreva("|         \\____________|            ||____________||            |____________/                  |\n")
    escreva("|            \\   \\ \\   |____________|              |____________|   / /   /                     |\n")
    escreva("|===============================================================================================|\n")
    ////////////////////////// partida 2
    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    |_RODADA__2_|                                              |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                       _|___|_                               ||____|___|___||  |\n")
    escreva("|                                        (O=O)                                |    { - - }   |  |\n")
    escreva("|                                      __|\\ /|__                              |   __\\ = /__  |  |\n")
    escreva("|                                     /         \\                             |______________|  |\n")
    escreva("|                                         ___                                     Jogador 2     |\n")
    escreva("|                       _________________|___|__________________                  Long-Hat-Man  |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\            _________________ |\n")
    escreva("|                    /                                            \\          |__SCORE__|___ ___||\n")
    escreva("|                   /   ______            ____                     \\         |                 ||\n")
    escreva("|                  /   /      |          /    \\                     \\        |                 ||\n")
    escreva("|                 /   /_______|         /______\\                     \\       |                 ||\n")
    escreva("|                /   |________|                                       \\      |                 ||\n")
    escreva("|               /              ____________  ____________              \\     |                 ||\n")
    escreva("|              /              |            ||            |              \\    |                 ||\n")
    escreva("|             /               |            ||            |               \\   |                 ||\n")
    escreva("|            /                |            ||            |                \\  |                 ||\n")
    escreva("|           /                 |            ||            |                 \\ |_________________||\n")
    escreva("|          /                  |            ||            |                  \\                   |\n")
    escreva("|         /___________________|            ||            |___________________\\                  |\n")
    escreva("|         \\___________________|____________||____________|___________________/                  |\n")
    escreva("|            \\   \\ \\                                                / /   /                     |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
  //////////////////////////////// Partida 3
    limpa()
     escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    |_RODADA__3_|                                              |\n")
     escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                       _|___|_                               ||____|___|___||  |\n")
    escreva("|                                        (O=O)                                |    { - - }   |  |\n")
    escreva("|                                      __|\\ /|__                              |   __\\ = /__  |  |\n")
    escreva("|                                     /         \\                             |______________|  |\n")
    escreva("|                                                                                 Jogador 1     |\n")
    escreva("|                       ________________________________________                  Long-Hat-Man  |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\            _________________ |\n")
    escreva("|                    /                                            \\          |__SCORE__|___ ___||\n")
    escreva("|                   /   ______            ____                     \\         |                 ||\n")
    escreva("|                  /   /      |          /    \\                     \\        |                 ||\n")
    escreva("|                 /   /_______|         /______\\                     \\       |                 ||\n")
    escreva("|                /   |________|                                       \\      |                 ||\n")
    escreva("|               /                     ____________                     \\     |                 ||\n")
    escreva("|              /                     |            |                     \\    |                 ||\n")
    escreva("|             /                      |            |                      \\   |                 ||\n")
    escreva("|            /                       |            |                       \\  |                 ||\n")
    escreva("|           /                        |            |                        \\ |_________________||\n")
    escreva("|          /                         |            |                         \\                   |\n")
    escreva("|         /__________________________|            |__________________________\\                  |\n")
    escreva("|         \\__________________________|____________|__________________________/                  |\n")
    escreva("|            \\   \\ \\                                                / /   /                     |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
  }
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


  funcao partida(){
    para(inteiro i = 0; i<2 ; i++){
      rodada()
    }
  }
  funcao rodada (){
    inteiro jogador1, jogador2, rodada = 1
    jogador1 = 0
    jogador2 = 0
    sortearCartas (maoJogador1)
    sortearCartas (maoJogador2)
    faca {
      partida_jogo_inicio()

      inteiro cartaDigitada1 = escolherCarta(maoJogador1)

      inteiro cartaDigitada2 = escolherCarta(maoJogador2)
      
      se(cartaDigitada1 < cartaDigitada2){
        jogador1++
        escreva("Jogador1 venceu a rodada;")
      } senao {
        jogador2++
        escreva("Jogador2 venceu a rodada")
      }
      escreva(jogador1)
      escreva(jogador2)
      se(jogador1 == 2){
        rodada = 0
      }senao se(jogador2 == 2){
        rodada = 0
      }  
    } enquanto (rodada != 0) 
  }
  //função para distribuição de cartas para cada jogador, sem distribuir cartas já na mão. 
  funcao sortearCartas (inteiro maoJogador1funcao[]){
    inteiro valor_sorteado
    para(inteiro i = 0; i<3 ; i++){
      valor_sorteado = u.sorteia(0, 39)
      se(ocupacaoCarta[valor_sorteado]==verdadeiro){
        i--
      }senao{
        maoJogador1funcao[i]=valor_sorteado
        ocupacaoCarta[valor_sorteado]= verdadeiro
      }
    }
  }
  // Função de verificação se a carta jogada esta na mão do jogador ou se existe. Recebendo as carta da mão do jogador atraves de um vetor logo e digitada
  // a carta para verificação assim entrando num loop de verficação se a carta esta na mão e se esta disponivel. 
  funcao inteiro escolherCarta(inteiro cartasJogador[]){
    inteiro loop = 1
    cadeia digitarCarta
    faca{
      leia (digitarCarta)
      para(inteiro i = 0; i<3; i++){
        se(digitarCarta == baralho[cartasJogador[i]]){
          se(ocupacaoCarta[cartasJogador[i]] == verdadeiro){
            ocupacaoCarta[cartasJogador[i]] = falso
            retorne cartasJogador[i]
          } senao {
            escreva("Essa carta já esta na mesa")
          }
        }
      }
    } enquanto (loop != 0)
  }
  //////// telas finais
 funcao animacao_final(){
  limpa()
  escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    |_RODADA__Win_|                                            |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                 |______|___|______|                         |    _|___|_   |  |\n")
    escreva("|                                       { - - }                               |     (O=O)    |  |\n")
    escreva("|                                       _\\ = /_                               |   __|\\ /|__  |  |\n")
    escreva("|                                      /       \\                              |______________|  |\n")
    escreva("|                                                                                 Jogador 1     |\n")
    escreva("|                       ________________________________________                  Coconut-Man   |\n")
    escreva("|                      /                                        \\                               |\n")
    escreva("|                     /                                          \\            _________________ |\n")
    escreva("|                    /                                            \\          |__SCORE__|___ ___||\n")
    escreva("|                   /   ______            ____                     \\         |                 ||\n")
    escreva("|                  /   /      |          /    \\                     \\        |                 ||\n")
    escreva("|                 /   /_______|         /______\\                     \\       |                 ||\n")
    escreva("|                /   |________|                                       \\      |                 ||\n")
    escreva("|               /                                                      \\     |                 ||\n")
    escreva("|              /                                                        \\    |                 ||\n")
    escreva("|             /                                                          \\   |                 ||\n")
    escreva("|            /                                                            \\  |                 ||\n")
    escreva("|           /                                                              \\ |_________________||\n")
    escreva("|          /                                                                \\                   |\n")
    escreva("|         /__________________________________________________________________\\                  |\n")
    escreva("|         \\__________________________________________________________________/                  |\n")
    escreva("|            \\   \\ \\                                                / /   /                     |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
 }
 funcao vitoria(){
    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    ____________________                                       |\n")
    escreva("|                                   /                    \\                                      |\n")
    escreva("|                                  |                      |                                     |\n")
    escreva("|                                  |                      |                                     |\n")
    escreva("|                            __    |                      |    __                               |\n")
    escreva("|                           |  \\___|______________________|___/  |                              |\n")
    escreva("|                           \\____________________________________/                              |\n")
    escreva("|                                 ||          ___          ||                                   |\n")
    escreva("|                                 ||        _|___|_        ||                                   |\n")
    escreva("|                                 ||         (O=O)         ||                                   |\n")
    escreva("|                                 ||       __|\\ /|__       ||                                   |\n")
    escreva("|                                 ||                       ||                                   |\n")
    escreva("|                                 ||______________________/ |                                   |\n")
    escreva("|                                 |______ Coconut-Man ______|                                   |\n")
    escreva("|              |==============================================================|                 |\n")
    escreva("|              |   _         __         _     ________          __     __     |                 |\n")
    escreva("|              |  \\  \\     /    \\     /  /      |  |          /   |   / /     |                 |\n")
    escreva("|              |   \\  \\   /  /\\  \\   /  /       |  |         / /| |  / /      |                 |\n")
    escreva("|              |    \\  \\_/  /  \\  \\_/  /        |  |        / / | |_/ /       |                 |\n")
    escreva("|              |     \\_____/    \\_____/       __|__|__     /_/  |____/        |                 |\n")
    escreva("|              |==============================================================|                 |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                Digite 1 para continuar                                        |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
    leia(voltar)

    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                    ____________________                                       |\n")
    escreva("|                                   /                    \\                                      |\n")
    escreva("|               _                  |                      |                   _                 |\n")
    escreva("|              | \\                 |                      |                  / |                |\n")
    escreva("|              |  \\                |                      |                 /  |                |\n")
    escreva("|              |   \\_______________|______________________|________________/   |                |\n")
    escreva("|              \\_______________________________________________________________/                |\n")
    escreva("|                                 ||          ___          ||                                   |\n")
    escreva("|                                 ||    |____|___|___|     ||                                   |\n")
    escreva("|                                 ||        { - - }        ||                                   |\n")
    escreva("|                                 ||       __\\ = /__       ||                                   |\n")
    escreva("|                                 ||                       ||                                   |\n")
    escreva("|                                 ||______________________/ |                                   |\n")
    escreva("|                                 |_____ Long-Hat-Man ______|                                   |\n")
    escreva("|              |==============================================================|                 |\n")
    escreva("|              |   _         __         _     ________          __     __     |                 |\n")
    escreva("|              |  \\  \\     /    \\     /  /      |  |          /   |   / /     |                 |\n")
    escreva("|              |   \\  \\   /  /\\  \\   /  /       |  |         / /| |  / /      |                 |\n")
    escreva("|              |    \\  \\_/  /  \\  \\_/  /        |  |        / / | |_/ /       |                 |\n")
    escreva("|              |     \\_____/    \\_____/       __|__|__     /_/  |____/        |                 |\n")
    escreva("|              |==============================================================|                 |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
    leia(voltar)
  }
funcao pontuacao_final(){
    limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                                                                               |\n")
    escreva("|                                          SCORES                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                   Jogador 1 - Coconut-Man:                                                    |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                                               |\n")
    escreva("|                   Jogador 2 - Long-Hat-Man:                                                   |\n")
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
    escreva("|===============================================================================================|\n")
    escreva("|###############################################################################################|\n")
    leia(voltar)
 }
}
