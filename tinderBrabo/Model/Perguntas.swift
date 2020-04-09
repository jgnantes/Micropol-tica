//
//  Perguntas.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 07/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import Foundation

// Cria um dicionário pra acomodar as perguntas e separar por seus respctivos tipos.

class Perguntas{
    var texto: String
    var tipo: String
    var resposta: Int = 1
    
    init(Texto: String, Tipo: String) {
        self.texto = Texto
        self.tipo = Tipo
    }
}

let PerguntasDIC: [String: [String]] = ["preocupacaoEmpatica": ["Pergunta feita para qualquer um nos moldes de empatia 1.", "Pergunta para teste de aleatoriedade do tipo de empatia 1.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 1.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 1.", "Apenas outra pergunta referente ao tipo de empatia 1.", "Creio que essa é a última pergunta referente ao tipo de empatia 1.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 1."],
                                        
    "personalDistress": ["Pergunta feita para qualquer um nos moldes de empatia 2.", "Pergunta para teste de aleatoriedade do tipo de empatia 2.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 2.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 2.", "Apenas outra pergunta referente ao tipo de empatia 2.", "Creio que essa é a última pergunta referente ao tipo de empatia 2.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 2."],
    
    "tomadaDePerspectiva": ["Pergunta feita para qualquer um nos moldes de empatia 3.", "Pergunta para teste de aleatoriedade do tipo de empatia 3.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 3.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 3.", "Apenas outra pergunta referente ao tipo de empatia 3.", "Creio que essa é a última pergunta referente ao tipo de empatia 3.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 3."],
    
    "empatiaEstrategica": ["Pergunta feita para qualquer um nos moldes de empatia 4.", "Pergunta para teste de aleatoriedade do tipo de empatia 4.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 4.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 4.", "Apenas outra pergunta referente ao tipo de empatia 4.", "Creio que essa é a última pergunta referente ao tipo de empatia 4.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 4."],
    
    "introversaoExtroversao": ["Pergunta feita para qualquer um nos moldes de personalidade 1.", "Pergunta para teste de aleatoriedade do tipo de personalidade 1.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 1.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 1.", "Apenas outra pergunta referente ao tipo de personalidade 1.", "Creio que essa é a última pergunta referente ao tipo de personalidade 1.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 1."],
    
    "intuicaoSensacao": ["Pergunta feita para qualquer um nos moldes de personalidade 2.", "Pergunta para teste de aleatoriedade do tipo de personalidade 2.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 2.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 2.", "Apenas outra pergunta referente ao tipo de personalidade 2.", "Creio que essa é a última pergunta referente ao tipo de personalidade 2.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 2."],
    
    "racionalidadeEmotividade": ["Pergunta feita para qualquer um nos moldes de personalidade 3.", "Pergunta para teste de aleatoriedade do tipo de personalidade 3.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 3.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 3.", "Apenas outra pergunta referente ao tipo de personalidade 3.", "Creio que essa é a última pergunta referente ao tipo de personalidade 3.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 3."],
    
    "julgamentoPercepcao": ["Pergunta feita para qualquer um nos moldes de personalidade 4.", "Pergunta para teste de aleatoriedade do tipo de personalidade 4.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 4.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 4.", "Apenas outra pergunta referente ao tipo de personalidade 4.", "Creio que essa é a última pergunta referente ao tipo de personalidade 4.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 4."]]


