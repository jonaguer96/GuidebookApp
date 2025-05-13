//
//  Attraction.swift
//  GuidebookApp
//
//  Created by Jonathan Guerrero on 5/12/25.
//

import Foundation

struct Attraction: Identifiable {
    
    var id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String 
}
