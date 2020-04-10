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
    
    var um: Int = 0
    var dois: Int = 0
    var tres: Int = 0
    var quatro: Int = 0
    var cinco: Int = 0
    var seis: Int = 0
    var sete: Int = 0
    var oito: Int = 0
    
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
        
        for item in jogadores[indexPath.row].respostas {
            if item.tipo == "preocupacaoEmpatica"{
                um = item.resposta
            }
            else if item.tipo == "personalDistress"{
                dois = item.resposta
            }
            else if item.tipo == "tomadaDePerspectiva"{
                tres = item.resposta
            }
            else if item.tipo == "empatiaEstrategica"{
                quatro = item.resposta
            }
            else if item.tipo == "introversaoExtroversao"{
                cinco = item.resposta
            }
            else if item.tipo == "intuicaoSensacao"{
                seis = item.resposta
            }
            else if item.tipo == "racionalidadeEmotividade"{
                sete = item.resposta
            }
            else if item.tipo == "julgamentoPercepcao"{
                oito = item.resposta
            }
        }
        
        return imagem
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        //ImageGenerator.Generate(gerarView: self.view,primPerg: 1,segPerg:1,terPerg:1,quarPerg:1,quinPerg:1,sexPerg:1,setPerg:1,oitPerg:1)
        
    }
    

}
