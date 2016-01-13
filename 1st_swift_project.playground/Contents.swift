//: Playground - noun: a place where people can play

import UIKit

class TipCalculator {
    // Set Constants
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // Inialize the calculator
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    // The function that determines the amount to tip
    func calctipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    // Percentages to tip
    func printPossibleTips() {
        print("15%: \(calctipWithTipPct(0.15))")
        print("18%: \(calctipWithTipPct(0.18))")
        print("20%: \(calctipWithTipPct(0.20))")
    }
    
}
// Make it all work
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.0825)
tipCalc.printPossibleTips()