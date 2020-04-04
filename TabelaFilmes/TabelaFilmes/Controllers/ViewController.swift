//
//  ViewController.swift
//  TabelaFilmes
//
//  Created by Gabriel Mendonça on 02/04/20.
//  Copyright © 2020 Gabriel Mendonça. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var filme: [Filmes]  = []
    var imagem = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        var filmes: Filmes
        filmes = Filmes(titlet: "Star Wars", descricion: "Sinopse: Com o retorno do Imperador Palpatine, todos voltam a temer seu poder e, com isso, a Resistência toma a frente da batalha que ditará os rumos da galáxia. Treinando para ser uma completa Jedi, Rey (Daisy Ridley) ainda se encontra em conflito com seu passado e futuro, mas teme pelas respostas que pode conseguir a partir de sua complexa ligação com Kylo Ren (Adam Driver), que também se encontra em conflito pela Força.",image: #imageLiteral(resourceName: "filme2") )
        filme.append(filmes)
        
        filmes = Filmes(titlet: "Deadpool", descricion: "Sinopse: Ex-militar e mercenário, Wade Wilson (Ryan Reynolds) é diagnosticado com câncer em estado terminal, porém encontra uma possibilidade de cura em uma sinistra experiência científica. Recuperado, com poderes e um incomum senso de humor, ele torna-se Deadpool e busca vingança contra o homem que destruiu sua vida.",image: #imageLiteral(resourceName: "filme4"))
        filme.append(filmes)
        
        filmes = Filmes(titlet: "Caçadores de Emoção", descricion:"Sinopse: Em uma cidade costeira da Califórnia atua uma gangue de ladrões de banco que se autodenomina Os Ex-Presidentes, pois cometem seus assaltos usando as máscaras de Reagan, Carter, Nixon e Johnson. O F.B.I. acredita que os membros da quadrilha possam ser surfistas e manda para lá um jovem agente disfarçado, Johnny Utah (Keanu Reeves), que tem como missão se infiltrar entre os surfistas e obter informações.",image: #imageLiteral(resourceName: "filme7") )
               filme.append(filmes)
               
        filmes = Filmes(titlet: "007", descricion: "Sinopse: O roubo de um HD contendo informações valiosas sobre a identidade de diversos agentes, infiltrados em células terroristas espalhadas ao redor do planeta, faz com que James Bond (Daniel Craig) parta atrás do ladrão. A perseguição segue pelas ruas de uma cidade na Turquia e acaba em cima de um trem.",image: #imageLiteral(resourceName: "filme1"))
               filme.append(filmes)
        filmes = Filmes(titlet: "Regresso do Mal", descricion: "Sinopse: Durante um desfile na noite de Halloween, um menino de oito anos desaparece misteriosamente. Depois de um ano sem qualquer pista, os pais do garoto começam a sentir presenças estranhas. O casal decide se unir para procurar seu filho em toda a cidade de Nova York. O que ninguém esperava é a descoberta de um espirito vingativo, cheio de segredos antigos que colocam a vida do menino em perigo.",image: #imageLiteral(resourceName: "filme8") )
               filme.append(filmes)
               
        filmes = Filmes(titlet: "A herdeira", descricion: "Sinopse: Dina (Rebecca Emilie Sattrup) herdou da mãe a habilidade sobrenatural de olhar a alma das pessoas, fazendo com que os observados tenham vergonha. Ela é requisitada para fazer com que o herdeiro de um trono confesse ter assassinado sua família, mas se recusa a usar seu dom para fins malignos e acaba presa, o que faz com que ela precise descobrir quem é o verdadeiro culpado dos crimes para salvar a si própria.",image: #imageLiteral(resourceName: "filme6"))
               filme.append(filmes)
        filmes = Filmes(titlet: "Impacto Mortal", descricion: "Sinopse: Colt (Freida Pinto) e John (Ryan Kwanten) são pistoleiros, amantes e companheiros num controverso e obscuro mundo de duelos perigosos, e contam com a ajuda um do outro para encontrar e eliminar o assassino do irmão de Colt, vingando assim sua morte.",image: #imageLiteral(resourceName: "filme9") )
               filme.append(filmes)
               
        filmes = Filmes(titlet: "O Regresso", descricion: "Sinopse: 1822. Hugh Glass (Leonardo DiCaprio) parte para o oeste americano disposto a ganhar dinheiro caçando. Atacado por um urso, fica seriamente ferido e é abandonado à própria sorte pelo parceiro John Fitzgerald (Tom Hardy), que ainda rouba seus pertences. Entretanto, mesmo com toda adversidade, Glass consegue sobreviver e inicia uma árdua jornada em busca de vingança.",image: #imageLiteral(resourceName: "filme5"))
               filme.append(filmes)
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filme.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filmes: Filmes = filme[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FilmeCell
        cell.fotoFilme.image = filmes.imagem
        cell.tituloFilme.text = filmes.titulo
        cell.descricaoFilme.text = filmes.titulo
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalhesFilmes"{
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmesSelecionado = self.filme[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmesViewController
                viewControllerDestino.filmes = filmesSelecionado
            }
        }
    }


    
    


}

