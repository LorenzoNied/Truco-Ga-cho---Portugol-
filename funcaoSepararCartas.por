programa {
  inclua biblioteca Util --> u
  cadeia baralho[40]
  logico ocupacaoCarta [40]
  inteiro valor_sorteado, maoJogador1[3], maoJogador2[3]
  
    
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

    sortearCartas (maoJogador1)
    sortearCartas (maoJogador2)
    escreva(maoJogador1, "\n")
    escreva(maoJogador2)
    //escreva(ocupacaoCarta)
    
  }
  //função para distribuição de cartas para cada jogador, sem distribuir cartas já na mão. 
  funcao sortearCartas (inteiro maoJogador1funcao[]){
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
}
