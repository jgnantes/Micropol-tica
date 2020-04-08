//
//  ViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 27/03/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var tituloMenu: UILabel!
    @IBOutlet weak var botaoJogar: UIButton!
    @IBOutlet weak var botaoComoJogar: UIButton!
    @IBOutlet weak var botaoCreditos: UIButton!
    @IBOutlet weak var botaoFacebook: UIButton!
    @IBOutlet weak var botaoTwitter: UIButton!
    
    @IBAction func jogarAcao(_ sender: UIButton) {
        jogadores = []
    }
    
    
    
    let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        setupUI()
    }

    func setupUI(){
        tituloMenu.font = UIFont(name: "Didot", size: 30.0)
        
        botaoJogar.titleLabel?.font = UIFont(name: "Didot", size: 21.0)
        botaoComoJogar.titleLabel?.font = UIFont(name: "Didot", size: 21.0)
        botaoCreditos.titleLabel?.font = UIFont(name: "Didot", size: 21.0)
        
        botaoJogar.layer.cornerRadius = 10
        botaoJogar.layer.borderWidth = 1
        botaoJogar.layer.borderColor = UIColor.black.cgColor
        
        botaoComoJogar.layer.cornerRadius = 10
        botaoComoJogar.layer.borderWidth = 1
        botaoComoJogar.layer.borderColor = UIColor.black.cgColor
        
        botaoCreditos.layer.cornerRadius = 10
        botaoCreditos.layer.borderWidth = 1
        botaoCreditos.layer.borderColor = UIColor.black.cgColor
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func setBackground(){
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "wallpp")
        view.sendSubviewToBack(backgroundImageView)
    }
    
}

