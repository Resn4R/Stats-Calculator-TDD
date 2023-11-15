//
//  Stats_Calculator_TDDTests.swift
//  Stats Calculator TDDTests
//
//  Created by Vito Borghi on 15/11/2023.
//

import XCTest
@testable import Stats_Calculator_TDD

final class Stats_Calculator_TDDTests: XCTestCase {
    /*
     process a sequence of ints to determine the following:
     - minimum value
     - maximum value
     - number of elements in the sequence
     - average value
     */
    
    func testGivenAnEmptyArrayReturnsNil() {
        let calculator = StatCalculator()
        
        let sampleArray = [Int]()
        
        XCTAssertEqual(calculator.getMinimumValue(in: sampleArray), nil)
    }
    
    func testGivenAnArrayWithOneValueReturnsValue() {
        let calculator = StatCalculator()
        
        let sampleArray = [3]
        
        XCTAssertEqual(calculator.getMinimumValue(in: sampleArray), 3)
    }
    
    func testGivenAnArrayOfIntsReturnsMinimumValue() {
        let calculator = StatCalculator()
        
        let sampleArray = [3,7,5,2,-2,6,-6]
        
        XCTAssertEqual(calculator.getMinimumValue(in: sampleArray), -6)
    }
    
    func testGivenAnArrayOfIntsReturnsHighestValue() {
        let calculator = StatCalculator()
        
        let sampleArray = [3,7,5,2,-2,6,-6]
        
        XCTAssertEqual(calculator.getHighestValue(in: sampleArray), 7)
    }
    
    func testGivenAnArrayOfIntsReturnsMinAndMaxInArray() {
        let calculator = StatCalculator()
        let sampleArray = [3,7,5,2,-2,6,-6]
        
        var stats = [Int?]()
        stats.append(calculator.getMinimumValue(in: sampleArray))
        stats.append(calculator.getHighestValue(in: sampleArray))
        
        XCTAssertEqual(stats, [-6,7])
    }
    
    func testGivenAnEmptyArrayWhenAskedForCountReturns0() {
        let calculator = StatCalculator()
        let sampleArray = [Int]()
        
        XCTAssertEqual(calculator.getCount(of: sampleArray), 0)
    }
    
    func testGivenAnArrayWhenAskedForCountNumberOfItems() {
        let calculator = StatCalculator()
        
        let sampleArray = [3,7,5,2,-2,6,-6]

        XCTAssertEqual(calculator.getCount(of: sampleArray), 7)
    }
    
    func testGivenAnArrayWhenAskedForAvgReturnsAvgOfArray() {
        let calculator = StatCalculator()
        
        let sampleArray = [3,7,5,2,-2,6,-6]

        XCTAssertEqual(calculator.getAverageValue(of: sampleArray), 2.142857142857143)
    }
}
