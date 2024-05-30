programa {  
    inclua biblioteca Util --> u
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
          partida_jogo_inicio()
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

    

      jogo_partida()
    }
  }
  // essa função iniciara o jogo de verdade
  funcao jogo_partida(){
     limpa()
    escreva("|###############################################################################################|\n")
    escreva("|===============================================================================================|\n")
    escreva("|                                                                                               |\n")
    escreva("|                                                                              ______________   |\n")
    escreva("|                                         ___                                 |      ___     |  |\n")
    escreva("|                                 |______|___|______|                         |    _|___|_   |  |\n")
    escreva("|                                       { - - }                               |     (O=O)    |  |\n")
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

  }
}
