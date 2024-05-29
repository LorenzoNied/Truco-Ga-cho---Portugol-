programa {  
  inteiro menu_inicial
  inteiro voltar

  funcao inicio() {
    menu()
  }
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


    escolha(menu_inicial){
      caso 1:
       limpa()
       escreva("\n------coming son-----")
      pare
      caso 2:
        limpa()
        escreva("Truco Gauderio\n projetado por Gian Roso e Lorenzo Nied\n\n Codigo jogo: Lorenzo Nied\n Graficos: Gian Roso\n Codigo menu: Gian Roso\n Codigo Pontuação: Lorenzo Nied")
        escreva("\n\n pressione qualquer numero: ")
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
      caso contrario:
        menu()
      pare
    }
    
    
  }
}
