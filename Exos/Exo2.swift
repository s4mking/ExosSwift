//
//  Exercice_2.swift
//  SwiftFirstProject
//
//  Created by Samuel on 17/10/2019.
//  Copyright © 2019 Samuel. All rights reserved.
//

import Foundation

func cleanHobbits(myTinyArray: [String]) -> (first : String, last : String, arraySlice : [String], elementsNumber : Int) {
    let first = myTinyArray.first
    let last = myTinyArray.last
    var arrayReversed = myTinyArray
    arrayReversed.remove(at: 0)
    arrayReversed.removeLast()
    var arrayReversedResult:[String] = []
    for value in arrayReversed {
        arrayReversedResult.insert(value, at: 0)
    }
    let sumNumber = arrayReversed.count
    return (first!,last!,arrayReversedResult,sumNumber)
}
