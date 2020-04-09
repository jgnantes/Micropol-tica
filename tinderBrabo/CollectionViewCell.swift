//
//  CollectionViewCell.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 09/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var indJogadorAtual: Int = DAO.instance.indJogadorAtual
    @IBOutlet weak var imagemTeste: UIImageView!
    var jogadorAtual: Jogador = jogadores[DAO.instance.indJogadorAtual]
    

    
//    func decoracao(from jogadorAtual: Jogador){
//        imagemTeste.image = UIImage(named: jogadorAtual.imagem)
//        imagemTeste.layer.borderColor = UIColor.black.cgColor
//        imagemTeste.layer.borderWidth = 1
//        indJogadorAtual += 1
//    }
}
