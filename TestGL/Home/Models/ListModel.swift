//
//  ListModel.swift
//  TestGL
//
//  Created by Uriel Martinez  on 08/02/2023.
//

import Foundation

struct ListModelElement: Codable {
    let title, description: String
    let image: String
}

typealias ListModel = [ListModelElement]
