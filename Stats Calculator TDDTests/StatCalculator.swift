//
//  StatCalculator.swift
//  Stats Calculator TDD
//
//  Created by Vito Borghi on 15/11/2023.
//

import Foundation

struct StatCalculator {
    
    func getMinimumValue(in inputArray: [Int]) -> Int? {
        inputArray.min()

    }
    func getHighestValue(in inputArray: [Int]) -> Int? {
        inputArray.max()
    }
    
    func getCount(of inputArray: [Int]) -> Int {
        inputArray.count
    }
    
    func getAverageValue(of inputArray: [Int]) -> Double? {
        guard inputArray.count > 0 else { return -1 }
        
        let avg: Double = Double(inputArray.reduce(0, +)) / Double(inputArray.count)
        
        return avg
    }
}
