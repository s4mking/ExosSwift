//
//  Exercice_1.swift
//  SwiftFirstProject
//
//  Created by Samuel on 17/10/2019.
//  Copyright © 2019 Samuel. All rights reserved.
//

import Foundation

func condog(str: String, prefix: Character, suffix : String) -> String {
    let arrayString = [String(prefix), str, suffix]
    let join = arrayString.joined(separator: "")
    return join
}
