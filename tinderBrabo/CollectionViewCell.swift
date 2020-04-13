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
    
    @IBOutlet weak var imagemTeste: UIView!
    @IBOutlet weak var labelCelula: UILabel!
    
    
    var jogadorAtual: Jogador = jogadores[DAO.instance.indJogadorAtual]
    
    
}
