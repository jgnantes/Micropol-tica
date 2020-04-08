//
//  CreditosViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 28/03/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class CreditosViewController: UIViewController {

    @IBOutlet weak var creditosTitulo: UILabel!
    @IBOutlet weak var jeffersonButton: UIButton!
    @IBOutlet weak var nantesButton: UIButton!
    @IBOutlet weak var lucasButton: UIButton!
    @IBOutlet weak var jeffersonLabel: UILabel!
    @IBOutlet weak var nantesLabel: UILabel!
    @IBOutlet weak var lucasLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creditosTitulo.font = UIFont(name: "Didot", size: 30.0)
        jeffersonLabel.font = UIFont(name: "Didot", size: 18.0)
        nantesLabel.font = UIFont(name: "Didot", size: 18.0)
        lucasLabel.font = UIFont(name: "Didot", size: 18.0)
        
        jeffersonButton.layer.cornerRadius = 20
        jeffersonButton.layer.borderWidth = 1
        jeffersonButton.layer.borderColor = UIColor.black.cgColor
        jeffersonButton.clipsToBounds = true
        
        nantesButton.layer.cornerRadius = 20
        nantesButton.layer.borderWidth = 1
        nantesButton.layer.borderColor = UIColor.black.cgColor
        nantesButton.clipsToBounds = true
        
        lucasButton.layer.cornerRadius = 20
        lucasButton.layer.borderWidth = 1
        lucasButton.layer.borderColor = UIColor.black.cgColor
        lucasButton.clipsToBounds = true
    }
    
}
