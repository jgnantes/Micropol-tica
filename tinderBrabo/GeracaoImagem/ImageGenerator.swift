//
//  ImageGenerator.swift
//  tinderBrabo
//
//  Created by Lucas Lima on 10/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit
import SpriteKit
class ImageGenerator: UIView {

    //1)Quantidade de objetos - 1/6
        let primeiraPergunta = 2
        
        let quantidadeObj = [3,6,12,24,32,60]
        
        let objScaleWidth:[CGFloat] = [1
        ,0.8,0.6,0.4,0.3,0.2]
        
        //2)Nível de zigzag / Vel de Rotacao - 1/6
        let segundaPergunta = 6
        
        let rotationSpeed = [0,0.05,0.1,0.3,0.5,0.7]
        
        //3)Background Color - 1/6
        let terceiraPergunta = 1

        //4)Forma dos objetos - 1/6
        let quartaPergunta = 3
        
        let nomesFormas : [String] = [
        "Triangle.png","Square.png","Pentagon.png","Octagon.png","Circle_Edges.png","Circle"
        ]
        
        //5)Distancia entre objetos - 1/6
        let quintaPergunta = 5
        
        let distancia = [20,50,100,150,200,250]
        
        //6)Saturacao - 1/6
        let sextaPergunta = 5
        
        let saturation = [1,0.8,0.6,0.4,0.2,0]
        
        //7)Hue Range - 1/6
        let setimaPergunta = 2
        
        let hueRange = [0,0.1,0.3,0.5,0.75,0.9,1]
        
        //8)Direcao dos obj - 1/6
        let oitavaPergunta = 6
        
        let direcao = [0,45,90,180,270,360]
        
        
    func Generate(gerarView: UIView,primPerg: Int,segPerg:Int,terPerg:Int,quarPerg:Int,quinPerg:Int,sexPerg:Int,setPerg:Int,oitPerg:Int){
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
                particles.particleSpeed = 0.2
                //particles.particleRotationRange = 10
                particles.particleSpeedRange = 0
                particles.particleLifetime = 99999999999999999
                particles.particleLifetimeRange = 0
                //particles.particleAlphaSequence = SKKeyframeSequence(keyframeValues: [0, 1, 1, 0],times: [0, 0.1, 0.8, 1])

                //SATURACAO - SEXTA PERGUNTA
                let newColors = [UIColor(hue: 0.67, saturation: 0.945 - CGFloat(saturation[sexPerg-1]), brightness: 1, alpha: 1),
                UIColor(hue: 0.67, saturation: 0.7 - CGFloat(saturation[sexPerg-1]), brightness: 0.8, alpha: 1),
                UIColor(hue: 0.666, saturation: 0.281 - CGFloat(saturation[sextaPergunta-1]), brightness: 0.6, alpha: 1),
                UIColor(hue: 0.17, saturation: 0.35 - CGFloat(saturation[sexPerg-1]), brightness: 0.61, alpha: 1),
                UIColor(hue: 0.17, saturation: 0.75 - CGFloat(saturation[sexPerg-1]), brightness: 0.81, alpha: 1),
                UIColor(hue: 0.17, saturation: 1 - CGFloat(saturation[sexPerg-1]), brightness: 1, alpha: 1)]
                
                let newColorsAlternative = [UIColor(hue: 0.67, saturation: 0.945 - CGFloat(saturation[sexPerg-1]), brightness: 0.8, alpha: 1),
                UIColor(hue: 0.67, saturation: 0.7 - CGFloat(saturation[sexPerg-1]), brightness: 0.6, alpha: 1),
                UIColor(hue: 0.666, saturation: 0.281 - CGFloat(saturation[sexPerg-1]), brightness: 0.4, alpha: 1),
                UIColor(hue: 0.17, saturation: 0.35 - CGFloat(saturation[sexPerg-1]), brightness: 0.41, alpha: 1),
                UIColor(hue: 0.17, saturation: 0.75 - CGFloat(saturation[sexPerg-1]), brightness: 0.61, alpha: 1),
                UIColor(hue: 0.17, saturation: 1 - CGFloat(saturation[sexPerg-1]), brightness: 0.8, alpha: 1)]
                
                //QUANTIDADE DE OBJ - PRIMEIRA PERGUNTA
                particles.particleBirthRate = 10
                particles.particleScale = objScaleWidth[primPerg-1]
                //particles.particleScale = 0.5
                particles.numParticlesToEmit = Int(quantidadeObj[primPerg-1])
                
                //ZIG ZAG - SEGUNDA PERGUNTA
                particles.particleRotationSpeed = CGFloat(rotationSpeed[segPerg-1])
                
                //BACKGROUND COLOR - TERCEIRA PERGUNTA
                //schene.backgroundColor = colors[terceiraPergunta-1]
                schene.backgroundColor = newColors[terPerg-1]
                particles.particleColor = newColorsAlternative[terPerg-1]
                
                //FORMA DOS OBJ - QUARTA PERGUNTA
                particles.particleTexture = SKTexture(imageNamed: nomesFormas[quarPerg-1])
                
                //DISTANCIA ENTRE OBJ - QUINTA PERGUNTA
                particles.particlePositionRange = CGVector(dx: distancia[quintaPergunta-1],dy: distancia[quinPerg-1])
                
                //HUE RANGE - SETIMA PERGUNTA
                particles.particleColorRedRange = CGFloat(hueRange[setPerg-1])
                //particles.particleColorGreenRange = CGFloat(hueRange[oitavaPergunta-1])
                //particles.particleColorBlueRange = CGFloat(hueRange[oitavaPergunta-1])
                
                //DIRECAO DOS OBJ - OITAVA PERGUNTA
                particles.particleRotationRange = CGFloat(direcao[oitPerg-1])
                //particles.emissionAngleRange = CGFloat(direcao[oitavaPergunta-1])
                particles.particleRotation = 0
                
                 setNeedsDisplay()
            }
        }
        
    }
    //public extension UIColor {
    //    public var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
    //        var r: CGFloat = 0
    //        var g: CGFloat = 0
    //        var b: CGFloat = 0
    //        var a: CGFloat = 0
    //        self.getRed(&r, green: &g, blue: &b, alpha: &a)
    //        return (r, g, b, a)
    //    }
    //
    //    public var hsba: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
    //        var h: CGFloat = 0
    //        var s: CGFloat = 0
    //        var b: CGFloat = 0
    //        var a: CGFloat = 0
    //        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
    //        return (h, s, b, a)
    //    }
    //}

