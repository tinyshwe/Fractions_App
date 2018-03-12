//
//  Fractions.swift
//  Fractions
//
//  Created by Shweta Prakash on 2/2/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import Foundation

class Fractions {
    
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
    
    func isDenominatorZero(den:Int)->Bool{
        if den == 0{
            return false
        }
        else{
            return true
        }
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
    
    func add(f: Fractions) -> Fractions {
        var result: Fractions = Fractions()
        result.num = num * f.den + den * f.num
        result.den = den * f.den
        result.reduce()
        return result
    }
    
    func subtract(f: Fractions) -> Fractions {
        var result: Fractions = Fractions()
        result.num = self.num * f.den - den * f.num
        result.den = den * f.den
        result.reduce()
        return result
    }
    
    func multiply(f: Fractions) -> Fractions {
        var result: Fractions = Fractions()
        result.num = num * f.num
        result.den = den * f.den
        result.reduce()
        return result
    }
    
    func divide(f: Fractions) -> Fractions{
        var result: Fractions = Fractions()
        result.num = num * f.den
        result.den = den * f.num
        result.reduce()
        return result
    }
    
    func reduce() {
        let sign = num >= 0 ? 1:-1
        var u = num * sign
        var v = den
        var r: Int
        while v != 0 {
            r = u % v
            u = v
            v = r
        }
        num /= u * sign
        den /= u
    }
    
    
    
}



