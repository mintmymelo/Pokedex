//
//  Pokemon.swift
//  Pokedex
//
//  Created by Penpitcha Natisupalak on 1/31/2560 BE.
//  Copyright © 2560 Penpitcha Natisupalak. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionText: String!
    private var _pokemonURL: String!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    var defense: String {
        return _defense
    }
    
    var attack: String {
        return _attack
    }
    
    var height: String {
        return _height
    }
    
    var weight: String {
        return _weight
    }
    
    init(name: String, pokedexId: Int, height: String, weight: String) {
        self._name = name.capitalized
        self._pokedexId = pokedexId
        self._height = height
        self._weight = weight
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
    }
    
    func downloadPokemonDetail(completed: DownloadComplete) {
        print(_pokemonURL)
        Alamofire.request(_pokemonURL).responseJSON { (response) in
//            
//            switch response.result {
//            case .success:
//                print(response.result.value)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
            
            //let result = response.result
            print(response.result.value)
//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                print(dict)
//                if let weight = dict["weight"] as? String {
//                    self._weight = weight
//                }
//                if let height = dict["height"] as? String {
//                    self._height = height
//                }
//                if let attack = dict["attack"] as? Int {
//                    self._attack = "\(attack)"
//                }
//                if let defense = dict["defense"] as? Int {
//                    self._defense = "\(defense)"
//                }
//                
//                print(self._weight)
//                print(self._height)
//                print(self._attack)
//                print(self._defense)
//                
//            }
//            else {
//                print("else ===== ")
//            }
            //completed()
        }
    }
}
