//
//  DAO.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 08/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import Foundation


var jogadores:[Jogador] {
    get {
        return DAO.instance.jogadores
    }
    set {
        DAO.instance.jogadores = newValue
    }
}

class DAO {
    static var instance = DAO()
    
    
    var jogadores:[Jogador] = []
    var indJogadorAtual:Int = -1
    init(){}
    
    
    func perguntArray(pergunta: Perguntas, vetor: [Perguntas]) -> [Perguntas] {
        var vetor2 = vetor
        
        vetor2.append(pergunta)
        
        return vetor2
    }
}
