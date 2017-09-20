//
//  PokeCell.swift
//  pokedex
//
//  Created by user on 9/7/17.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg:UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon:Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    
    func configureCell(_ pokemon:Pokemon) {
        
        self.pokemon = pokemon
        
        self.nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(pokemon.pokedexId)")
        
    }
    
    
}
