//
//  ImagensViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 09/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class ImagensViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return jogadores.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return jogadores[row].nome
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DAO.instance.jogadores.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let imagem = collectionView.dequeueReusableCell(withReuseIdentifier: "imagemCelula", for: indexPath) as! CollectionViewCell
        
        imagem.imagemTeste.layer.borderWidth = 1
        imagem.imagemTeste.layer.borderColor = UIColor.black.cgColor
        imagem.imagemTeste.layer.cornerRadius = 15
        return imagem
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
    }
    

}
