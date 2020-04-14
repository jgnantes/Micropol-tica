//
//  PerguntasTableViewCell.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 07/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class PerguntasTableViewCell: UITableViewCell {

    var indPergunta = 0
    var jogadorAtual:Jogador = jogadores[DAO.instance.indJogadorAtual]
    
    @IBOutlet weak var PerguntaOTL: UILabel!
	@IBOutlet weak var respostaOTL: UISegmentedControl!
    
    @IBAction func scChanged(_ sender: UISegmentedControl) {

        jogadorAtual.respostas[indPergunta].resposta = sender.selectedSegmentIndex + 1
    }
    
    func decorate(from jogadorAtual:Jogador, indPergunta:Int) {
        self.jogadorAtual = jogadorAtual
        self.indPergunta = indPergunta
        PerguntaOTL.text = jogadorAtual.respostas[indPergunta].texto
		
		respostaOTL.selectedSegmentIndex = jogadorAtual.respostas[indPergunta].resposta - 1
		
    }
    
}
