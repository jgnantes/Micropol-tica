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
    var receptor = 0
    
    var jogadorAtual:Jogador = jogadores[DAO.instance.indJogadorAtual]
    
    @IBOutlet weak var TableViewPerguntas: UITableView!
    @IBOutlet weak var BotaoTerminei: UIButton!
    
    @IBAction func TermineiAcao(_ sender: UIButton) {
        if contador < jogadores.count{
            contador += 1
            DAO.instance.indJogadorAtual += 1
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "ConfirmaID")
            self.navigationController?.pushViewController(controller, animated: true)
        }
            
        else {
            DAO.instance.indJogadorAtual = 0
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "Imagens")
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
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
        
        celula.decorate(from:jogadorAtual, indPergunta:indexPath.row)

        
        return celula
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewPerguntas.tableFooterView = UIView()
        TableViewPerguntas.allowsSelection = false
        self.navigationItem.hidesBackButton = true
        
        BotaoTerminei.layer.borderWidth = 1
        BotaoTerminei.layer.borderColor = UIColor.lightGray.cgColor
        BotaoTerminei.layer.cornerRadius = 5
        BotaoTerminei.setTitleColor(.lightGray, for: .normal)
        
        tipos = vetorTipos(dicionario: PerguntasDIC)
        
    }
    

}
