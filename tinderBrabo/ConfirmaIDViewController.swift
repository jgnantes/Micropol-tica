//
//  ConfirmaIDViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 06/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

//var cont = 0

class ConfirmaIDViewController: UIViewController {
    
    @IBOutlet weak var ConfirmaImagem: UIImageView!
    @IBOutlet weak var ConfirmaJogador: UILabel!
    @IBOutlet weak var EABotao: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConfirma()
        self.navigationItem.hidesBackButton = true
    }
    
    func setupConfirma() {
        EABotao.layer.borderWidth = 1
        EABotao.layer.borderColor = UIColor.black.cgColor
        EABotao.layer.cornerRadius = 5
        
        ConfirmaImagem.layer.cornerRadius = 140
        ConfirmaImagem.layer.borderWidth = 1
        ConfirmaImagem.layer.borderColor = UIColor.black.cgColor
        
        ConfirmaJogador.text = jogadores[DAO.instance.indJogadorAtual].nome
        
    }

}
