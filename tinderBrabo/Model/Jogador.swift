//
//  Jogadores.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 07/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import Foundation

class Jogador{
    var nome: String
    var respostas: [Perguntas] = []
    var imagem: Int = -1
    
    init(Nome: String) {
        self.nome = Nome
        self.updatePerguntas()
    }
    
    func updatePerguntas() {
        respostas = []
        for item in PerguntasDIC {
            let tipo = item.key
            let perg = item.value.shuffled().first!
            let novo = Perguntas(Texto: perg, Tipo: tipo)
            respostas.append(novo)
        }
        respostas.shuffle()
    }
}
