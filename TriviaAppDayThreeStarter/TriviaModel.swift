//
//  TriviaModel.swift
//  TriviaAppDayThreeFinished
//
//  Created by flatironstudent on 2/12/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import Foundation

struct TriviaModel {
    
    let facts: [String] = ["When hippos are upset, their sweat turns red.", "29th May is officially 'Put a Pillow on Your Fridge Day'.", "If you lift a kangaroo’s tail off the ground it can’t hop.", "A mantis shrimp can swing its claw so fast it boils the water around it and creates a flash of light.", "Honey does not spoil. You could feasibly eat 3000 year old honey.", "The state sport of Maryland is jousting.", "If you were to remove all of the empty space from the atoms that make up every human on earth, the entire world population could fit into an apple.", "The woolly mammoth was still around when the pyramids were being built.", "There are more possible iterations of a game of chess than there are atoms in the known universe.", "Written language was invented independently by the Egyptians, Sumerians, Chinese, and Mayans.", "It can take a photon 40,000 years to travel from the core of the sun to the surface, but only 8 minutes to travel the rest of the way to earth.", "A day on the planet Venus is longer than a year on Venus.", "The fingerprints of koala bears are virtually indistinguishable from those of humans.", "The time difference between when Stegosaurus and Tyrannosaurus lived is greater than the time difference between Tyrannosaurus and now.", "Russia is bigger than Pluto.", "Charlie Chaplin once entered a Charlie Chaplin look alike contest and lost.", "The bushes in Mario were just recolored clouds."]
    
    
    func randomFact()->String {
        let arrayLength = facts.count
        let randomIndex = Int(arc4random_uniform(UInt32(arrayLength)))
        return facts[randomIndex]
    }
    
}