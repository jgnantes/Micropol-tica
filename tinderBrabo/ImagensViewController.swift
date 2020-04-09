//
//  ImagensViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 09/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class ImagensViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DAO.instance.jogadores.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let imagem = collectionView.dequeueReusableCell(withReuseIdentifier: "imagemCelula", for: indexPath) as! CollectionViewCell
        
        //imagem.decoracao(from: jogadores[DAO.instance.indJogadorAtual])
        imagem.imagemTeste.image = UIImage(named: "lucas")
        imagem.imagemTeste.layer.borderWidth = 1
        imagem.imagemTeste.layer.borderColor = UIColor.black.cgColor
        imagem.imagemTeste.layer.cornerRadius = 15
        return imagem
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}
