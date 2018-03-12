//
//  Fraction.swift
//  Fractions_App
//
//  Created by Satya Prakash on 2/19/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import Foundation

class Fraction: CustomStringConvertible{
private var num: Int
private var den: Int

    
    var decimal: Float {
        get {
            // num and den are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den);
        }
    }
    
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    
    init() {
        
        self.num = 0
        self.den = 1
    }
    
    init(num : Int, den : Int) {
        // Check the denominator...
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
    }

    func getNumerator()-> Int{
        return self.num
    }
    
    func setNumerator(num: Int)-> Void{
        self.num = num
    }

    func getDenominator()-> Int{
        return self.num
    }
    
    func setDenominator(den: Int)-> Void{
        self.den = den
    }
    
    
    
    
}
