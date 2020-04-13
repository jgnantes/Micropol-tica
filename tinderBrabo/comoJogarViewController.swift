//
//  comoJogarViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 28/03/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class comoJogarViewController: UIViewController {
    
    @IBOutlet weak var comoJogarTitulo: UILabel!
    @IBOutlet weak var comoJogarTexto: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comoJogarTitulo.font = UIFont(name: "Didot", size: 30.0)
        comoJogarTexto.font = UIFont(name: "Didot", size: 21.0)
        comoJogarTexto.text = "[...] é um jogo de discussão e dedução para ser jogado por 3 a 6 pessoas.\n\nEle começa pedindo para que cada jogador responda a um rápido quiz sobre personalidade e empatia. As respostas serão interpretadas e transformadas em imagens em movimento. Os jogadores devem então discutir entre si sobre suas respostas e chegar em um acordo sobre quem está sendo representado por cada imagem.\n\nNote que [...] não se propõe a ser um teste de personalidade ou diagnóstico de qualquer gênero. As perguntas são contextualizados e seus resultados são uma generalização baseada em estudos científicos, para que assim se mantenha um rigor entre os padrões ao mesmo tempo que as imagens podem mudar em momentos diferentes em que o teste for feito por uma mesma pessoa."
        
    }
    
}
