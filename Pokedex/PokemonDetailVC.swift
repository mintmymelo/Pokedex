//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Penpitcha Natisupalak on 1/31/2560 BE.
//  Copyright © 2560 Penpitcha Natisupalak. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexidLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLabel: UILabel!
    
    var pokemon: Pokemon!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        /*
        pokemon.downloadPokemonDetail {
            //self.updateUI()
        }
        */
    }
    
    func updateUI() {
        nameLabel.text = pokemon.name
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
