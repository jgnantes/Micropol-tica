//
//  ImagensViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 09/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit
import SpriteKit

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
    
    var prova = false
    
    @IBOutlet weak var revelarBotao: UIButton!
    @IBOutlet weak var collectionOTL: UICollectionView!
    
    
    @IBAction func revelarAcao(_ sender: UIButton) {
        if prova == false {
            prova = true
            revelarBotao.setTitle("Terminar", for: .normal)
            collectionOTL.reloadData()
        }
        else if prova == true {
            let alert = UIAlertController(title: "Fim da rodada", message: "Deseja começar um novo round ou ir para a tela de menu?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: NSLocalizedString("Novo Round", comment: "Default action"), style: .default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
                DAO.instance.indJogadorAtual = 0
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "ConfirmaID")
                self.navigationController?.pushViewController(controller, animated: true)
            }))
            
            alert.addAction(UIAlertAction(title: NSLocalizedString("Menu", comment: "Default action"), style: .default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
                DAO.instance.indJogadorAtual = 0
                jogadores = []
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "MenuPrincipal")
                self.navigationController?.pushViewController(controller, animated: true)
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
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
        Generate(gerarView: imagem.imagemTeste,primPerg: um,segPerg:dois,terPerg:tres,quarPerg:quatro,quinPerg:cinco,sexPerg:seis,setPerg:sete,oitPerg:oito)
        //jogadores[0].respostas.
        
        if prova == true {
            imagem.labelCelula.textColor = UIColor(named: "black")
            imagem.labelCelula.text = jogadores[indexPath.item].nome
        }
        
        return imagem
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        revelarBotao.layer.cornerRadius = 5
        revelarBotao.layer.borderWidth = 1
        revelarBotao.layer.borderColor = UIColor.black.cgColor
        revelarBotao.layer.backgroundColor = UIColor.white.cgColor
        
    }
    
    func Generate(gerarView: UIView,primPerg: Int,segPerg:Int,terPerg:Int,quarPerg:Int,quinPerg:Int,sexPerg:Int,setPerg:Int,oitPerg:Int){
    
        //1)Quantidade de objetos - 1/6
        let quantidadeObj = [3,6,12,24,32,60]
        
        let objScaleWidth:[CGFloat] = [1
        ,0.8,0.6,0.4,0.3,0.2]
        
        //2)Nível de zigzag / Vel de Rotacao - 1/6
        let rotationSpeed = [0,0.05,0.1,0.3,0.5,0.7]
        let speed = [0.5,1,2,3,4,5]
        
        //3)Background Color - 1/6
        
        //4)Forma dos objetos - 1/6
        let nomesFormas : [String] = [
        "Triangle.png","Square.png","Pentagon.png","Octagon.png","Circle_Edges.png","Circle"
        ]
        
        //5)Distancia entre objetos - 1/6
        let distancia = [20,50,100,150,200,250]
        
        //6)Saturacao - 1/6
        let sextaPergunta = 5
        
        let saturation = [1,0.8,0.6,0.4,0.2,0]
        
        //7)Hue Range - 1/6
        let hueRange = [0,0.1,0.3,0.5,0.75,0.9,1]
        
        //8)Direcao dos obj - 1/6
        let direcao = [0,45,90,180,270,360]
        
        
    
        //OBJECTS
        if let particles = SKEmitterNode(fileNamed: "MyParticle.sks") {
            
            print("Rolou o Node")
                
            particles.name = "Particula"
                
                //Cena apresentada na SKView
                let schene = SKScene()
                schene.addChild(particles)
            schene.scaleMode = .resizeFill
                //SKCiew criada e adicionada a view principal
                let skView = SKView()
                skView.frame = gerarView.frame
                skView.presentScene(schene)
                particles.position = CGPoint(x: schene.size.width/2, y: schene.size.height/2)
                
                //View do canvas na hierarquia
                gerarView.addSubview(skView)

            //BACKGROUND COLOR
            particles.particleColorSequence = nil;
            
            
            particles.particleScaleSpeed = 0
            
            //particles.particleRotationRange = 10
            particles.particleSpeedRange = 0
            particles.particleLifetime = 10
            particles.particleLifetimeRange = 0
            particles.particleAlphaSequence = SKKeyframeSequence(keyframeValues: [0, 1, 1, 0],times: [0, 0.01, 0.95, 1])

            //SATURACAO - SEXTA PERGUNTA
            let newColors = [UIColor(hue: 241/360, saturation: 0.95 - CGFloat(saturation[sexPerg-1]), brightness: 1, alpha: 1),
            UIColor(hue: 201/360, saturation: 0.95 - CGFloat(saturation[sexPerg-1]), brightness: 0.91, alpha: 1),
            UIColor(hue: 178/360, saturation: 1 - CGFloat(saturation[sextaPergunta-1]), brightness: 1, alpha: 1),
            UIColor(hue: 159/360, saturation: 1 - CGFloat(saturation[sexPerg-1]), brightness: 1, alpha: 1),
            UIColor(hue: 115/360, saturation: 0.96 - CGFloat(saturation[sexPerg-1]), brightness: 0.91, alpha: 1),
            UIColor(hue: 62/360, saturation: 1 - CGFloat(saturation[sexPerg-1]), brightness: 0.98, alpha: 1)]
            
            let newColorsAlternative = [UIColor(hue: 241/360, saturation: 0.95 - CGFloat(saturation[sexPerg-1]), brightness: 0.8, alpha: 1),
            UIColor(hue: 201/360, saturation: 0.95 - CGFloat(saturation[sexPerg-1]), brightness: 0.71, alpha: 1),
            UIColor(hue: 178/360, saturation: 1 - CGFloat(saturation[sextaPergunta-1]), brightness: 0.8, alpha: 1),
            UIColor(hue: 159/360, saturation: 1 - CGFloat(saturation[sexPerg-1]), brightness: 0.8, alpha: 1),
            UIColor(hue: 115/360, saturation: 0.96 - CGFloat(saturation[sexPerg-1]), brightness: 0.71, alpha: 1),
            UIColor(hue: 62/360, saturation: 1 - CGFloat(saturation[sexPerg-1]), brightness: 0.78, alpha: 1)]
            
            //QUANTIDADE DE OBJ - PRIMEIRA PERGUNTA
            particles.particleBirthRate = CGFloat(quantidadeObj[primPerg-1])/4
            particles.particleScale = objScaleWidth[primPerg-1]
            //particles.particleScale = 0.5
            //particles.numParticlesToEmit = Int(quantidadeObj[primPerg-1])
            
            //ZIG ZAG - SEGUNDA PERGUNTA
            particles.particleRotationSpeed = CGFloat(rotationSpeed[segPerg-1])
            particles.particleSpeed = CGFloat(speed[segPerg-1])
            
            //BACKGROUND COLOR - TERCEIRA PERGUNTA
            //schene.backgroundColor = colors[terceiraPergunta-1]
            schene.backgroundColor = newColors[terPerg-1]
            particles.particleColor = newColorsAlternative[terPerg-1]
            
            //FORMA DOS OBJ - QUARTA PERGUNTA
            particles.particleTexture = SKTexture(imageNamed: nomesFormas[quarPerg-1])
            
            //DISTANCIA ENTRE OBJ - QUINTA PERGUNTA
            particles.particlePositionRange = CGVector(dx: distancia[quinPerg-1],dy: distancia[quinPerg-1])
            
            //HUE RANGE - SETIMA PERGUNTA
            particles.particleColorRedRange = CGFloat(hueRange[setPerg-1])
            particles.particleColorGreenRange = CGFloat(hueRange[setPerg-1])
            particles.particleColorBlueRange = CGFloat(hueRange[setPerg-1])
            
            //DIRECAO DOS OBJ - OITAVA PERGUNTA
            particles.particleRotationRange = CGFloat(direcao[oitPerg-1])
            //particles.emissionAngleRange = CGFloat(direcao[oitavaPergunta-1])
            particles.particleRotation = 0
            
             //setNeedsDisplay()
        }
    }
}
