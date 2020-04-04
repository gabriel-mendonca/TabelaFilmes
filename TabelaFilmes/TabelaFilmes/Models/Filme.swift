//
//  Filme.swift
//  TabelaFilmes
//
//  Created by Gabriel Mendonça on 02/04/20.
//  Copyright © 2020 Gabriel Mendonça. All rights reserved.
//

import UIKit

class Filmes {
    
    var titulo: String
    var descricao: String
    var imagem: UIImage
    
    init (titlet: String, descricion: String, image: UIImage){
        self.titulo = titlet
        self.descricao = descricion
        self.imagem = image
        
    }
}
