//
//  RandomJokes.swift
//  RandomJokes
//
//  Created by Sebastian Frosch on 20.04.23.
//

import Foundation

struct RandomJokes: Identifiable {
    let type: String
    let setup: String
    let puchline: String
    let id: Int
}
let exampleRandomeJokes = RandomJokes(type: "general", setup: "How much does a hipster")
