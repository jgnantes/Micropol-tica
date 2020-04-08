//
//  PerguntasViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 07/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class PerguntasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tipos: [String] = []
    var vetorPerguntas: [Perguntas] = []
    
    @IBOutlet weak var TableViewPerguntas: UITableView!
    @IBOutlet weak var BotaoTerminei: UIButton!
    
    @IBAction func TermineiAcao(_ sender: UIButton) {
        if contador < jogadores.count{
            contador += 1
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "ConfirmaID")
            self.navigationController?.pushViewController(controller, animated: true)
        }
            
        else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "Imagens")
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
        
    }
    
    
    func perguntArray(pergunta: Perguntas, vetor: [Perguntas]) -> [Perguntas] {
        var vetor2 = vetor
        
        vetor2.append(pergunta)
        
        return vetor2
    }
    
    
    func vetorTipos(dicionario: [String: [String]]) -> [String] {
        var vetor: [String] = []
        
        for item in dicionario{
            vetor.append(item.key)
        }
        
        return vetor
    }
    
    
    func pegaPerguntas(dicionario: [String: [String]], tipos: [String]) -> (classe: Perguntas, vetor: [String]) {
        var tipos2 = tipos
        var pergunta = Perguntas(Texto: "", Tipo: "")
        var receptaculo = ""
        
        receptaculo = tipos2.randomElement()!
        
        pergunta.tipo = receptaculo
        pergunta.texto = dicionario[receptaculo]?.randomElement() as! String
        
        tipos2.remove(at: tipos2.firstIndex(of: receptaculo)!)
        
        return(pergunta, tipos2)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula") as! PerguntasTableViewCell
        
        if tipos.count > 0 {
            var gabarito = pegaPerguntas(dicionario: PerguntasDIC, tipos: tipos)
            tipos = gabarito.vetor
            vetorPerguntas = perguntArray(pergunta: gabarito.classe, vetor: vetorPerguntas)
            celula.PerguntaOTL.text = "\(indexPath.row + 1). " + gabarito.classe.texto
            
            
        }
        
        return celula
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewPerguntas.tableFooterView = UIView()
        TableViewPerguntas.allowsSelection = false
        self.navigationItem.hidesBackButton = true
        
        BotaoTerminei.layer.borderWidth = 1
        BotaoTerminei.layer.borderColor = UIColor.black.cgColor
        BotaoTerminei.layer.cornerRadius = 5
        
        tipos = vetorTipos(dicionario: PerguntasDIC)
        
    }
    

}
