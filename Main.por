programa {
  inclua biblioteca Util --> u
  cadeia baralho[40]
  logico ocupacaoCarta [40]
  inteiro maoJogador1[3], maoJogador2[3]
  inteiro pontosP1   = 0, pontosP2 = 0
  
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

    
    partida()
    //escreva(ocupacaoCarta)
  }
  funcao partida(){
    para(inteiro i = 0; i<2 ; i++){
      rodada()
      escreva(pontosP1,pontosP2)
    }
  }
  //funcao da rodada, embaralhar cartas e somar pontos para partida.
  funcao rodada (){
    inteiro jogador1, jogador2, rodada = 1
    jogador1 = 0
    jogador2 = 0
    sortearCartas (maoJogador1)
    sortearCartas (maoJogador2)
    escreva(baralho[maoJogador1[0]],baralho[maoJogador1[1]],baralho[maoJogador1[2]], "\n")
    escreva(baralho[maoJogador2[0]],baralho[maoJogador2[1]],baralho[maoJogador2[2]])

    para(inteiro i = 3; i>0 ; i--){
      cartaTela3_2(maoJogador1, i)
      inteiro cartaDigitada1 = escolherCarta(maoJogador1)
      cartaTela3_2(maoJogador2, i)
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
        pontosP1++
        retorne
      }senao se(jogador2 == 2){
        pontosP2++
        retorne
      }  
    } 
  }
  funcao cartaTela3_2(inteiro maoDoJogador[], inteiro x){
    inteiro locacao[x], y = 0
      para(inteiro i = 0; i<3; i++){
        se(ocupacaoCarta[maoDoJogador[i]] == verdadeiro){
          locacao[y] = maoDoJogador[i]
          y++
        }
      }
    escreva(locacao)
  }
  //função para distribuição de cartas para cada jogador, sem distribuir cartas já na mão. 
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
  // Função de verificação se a carta jogada esta na mão do jogador ou se existe. 
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
}
