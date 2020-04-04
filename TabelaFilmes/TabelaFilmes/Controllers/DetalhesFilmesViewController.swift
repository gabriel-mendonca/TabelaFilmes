//
//  DetalhesFilmesViewController.swift
//  TabelaFilmes
//
//  Created by Gabriel Mendonça on 03/04/20.
//  Copyright © 2020 Gabriel Mendonça. All rights reserved.
//

import UIKit

class DetalhesFilmesViewController: UIViewController {
    
    var filmes: Filmes!

    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var filmeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filmes.imagem
        tituloLabel.text = filmes.titulo
        descricaoLabel.text = filmes.descricao

    }
    
    
    


}
