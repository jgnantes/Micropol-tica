//
//  JogadoresViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 06/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

var jogadores: [Jogadores] = []

//apenas um teste


class JogadoresViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableViewOTL: UITableView!
    @IBOutlet weak var TextoCampo: UITextField!
    @IBOutlet weak var ConfirmarBotao: UIButton!
    @IBOutlet weak var AdicionaOTL: UIButton!
    
    @IBAction func AdicionaBotao(_ sender: UIButton) {
        if TextoCampo.text != ""{
            var novoJogador = Jogadores(Nome: TextoCampo.text!)
            jogadores.append(novoJogador)
            TextoCampo.text = ""
            TableViewOTL.reloadData()
            
            for item in jogadores{
                print(item.nome)
            }
            print("\n\n")
        }
        if jogadores.count == 3 {
            ConfirmarBotao.layer.borderColor = UIColor.black.cgColor
            ConfirmarBotao.setTitleColor(.black, for: .normal)
            ConfirmarBotao.isUserInteractionEnabled = true
        }
        else if jogadores.count == 6 {
            AdicionaOTL.isUserInteractionEnabled = false
            AdicionaOTL.setTitleColor(.gray, for: .normal)
            AdicionaOTL.layer.borderColor = UIColor.gray.cgColor
        }
    }
    
    @IBAction func BotaoAcao(_ sender: UIButton) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (jogadores.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let jogador = jogadores[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.LabelCell.text = jogador.nome
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            jogadores.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            if jogadores.count == 2 {
                ConfirmarBotao.isUserInteractionEnabled = false
                ConfirmarBotao.layer.borderColor = UIColor.white.cgColor
                ConfirmarBotao.setTitleColor(.white, for: .normal)
            }
            
            else if jogadores.count == 5 {
                AdicionaOTL.isUserInteractionEnabled = true
                AdicionaOTL.setTitleColor(.black, for: .normal)
                AdicionaOTL.layer.borderColor = UIColor.black.cgColor
            }
        }
    }
    
    func setupUI(){
        ConfirmarBotao.layer.borderWidth = 1
        ConfirmarBotao.layer.borderColor = UIColor.white.cgColor
        ConfirmarBotao.setTitleColor(.white, for: .normal)
        ConfirmarBotao.layer.cornerRadius = 5
        
        AdicionaOTL.layer.borderWidth = 1
        AdicionaOTL.layer.borderColor = UIColor.black.cgColor
        AdicionaOTL.layer.cornerRadius = 5
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        TableViewOTL.tableFooterView = UIView()
        TableViewOTL.allowsSelection = false
        
        TextoCampo.addDoneButtonOnKeyboard()
        
        setupUI()
    }
    

}

extension UITextField{
    
    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Pronto", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}

