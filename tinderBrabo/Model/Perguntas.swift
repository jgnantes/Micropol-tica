//
//  Perguntas.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 07/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import Foundation

// Cria um dicionário pra acomodar as perguntas e separar por seus respctivos tipos.

struct Perguntas{
    var texto: String
    var tipo: String
    var resposta: Int = 1
    
    init(Texto: String, Tipo: String) {
        self.texto = Texto
        self.tipo = Tipo
    }
}

let PerguntasDIC: [String: [String]] = ["preocupacaoEmpatica": ["Você espontaneamente tende a se oferecer para ajudar quando alguém precisa.", "Você frequentemente pensa nas pessoas que possuem mais dificuldades na vida do que você.", "Você frequentemente faz coisas apenas para agradar os outros.", "Você se considera uma pessoa altruísta."],
                                        
    "personalDistress": ["Você acharia difícil demitir um(a) funcionário(a) leal porém pouco produtivo(a).", "A dor dos outros também dói em você.", "Ver um(a) amigo(a) passando por uma situação de injustiça pode acabar com o seu dia.", "Você tende a ficar 'para baixo' quando seus amigos também estão."],
    
    "tomadaDePerspectiva": ["É fácil para você entender os sentimentos das outras pessoas.", "Você frequentemente e espontaneamente muda sua forma de se expressar quando percebe que alguém não está te entendendo.", "Você tem facilidade em enxergar um mesmo problema sob perspectivas diferentes.", "Você constantemente tem a sensação de que as pessoas possuem problemas que seriam facilmente resolvidos com comunicação."],
    
    "empatiaEstrategica": ["Ser cooperativo(a) é mais importante do que estar certo.", "Você constantemente reflete sobre a sua forma de enxergar o mundo.", "Você muda de opinião com frequência.", "Você tem facilidade em ajustar a sua forma de enxergar o mundo de forma espontânea."],
    
    "introversaoExtroversao": ["Você acha fácil se apresentar para outras pessoas.", "Quando você se imagina em um espaço, costuma ser mais no meio do que nos cantos.", "Você se sente energizado(a) após interagir com muitas pessoas por muito tempo.", "Seus grupos de amigos são grandes e você gosta disso."],
    
    "intuicaoSensacao": ["Falando de modo geral, você confia mais na sua experiência do que na sua intuição.", "Você se considera uma pessoa mais concreta do que abstrata.", "Você guia suas ações pensando mais no presente do que no futuro.", "Você enxerga os acontecimentos da vida como eventos individuais e não cria padrões entre eles."],
    
    "racionalidadeEmotividade": ["As pessoas conseguem te aborrecer com facilidade.", "As pessoas te descreveriam mais como caloroso(a) e emotivo(a) do que impessoal e inexpressivo(a).", "Você valoriza mais o bem-estar geral do que os fatos.", "Você possui uma pré-disposição a dar razão a uma pessoa que você já conhece e admira independentemente do contexto."],
    
    "julgamentoPercepcao": ["Ser adaptável é mais importante do que ser organizado(a).", "Manter suas opções em aberto é mais importante do que ter uma lista de afazeres.", "Você não gosta de rotina.", "Você frequentemente tem experiências melhores começando um projeto do que terminando-o."]]


