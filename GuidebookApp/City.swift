//
//  City.swift
//  GuidebookApp
//
//  Created by Jonathan Guerrero on 5/12/25.
//

import Foundation

struct City: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    var attractions: [Attraction]
}
