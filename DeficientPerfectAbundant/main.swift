//
//  main.swift
//  DeficientPerfectAbundant
//
//  Created by Li, Muchen on 2020-03-09.
//  Copyright © 2020 Li, Muchen. All rights reserved.
//

import Foundation

// Loop until valid input provided by user
while true {
    
    //
    // INPUT SECTION OF PROGRAM
    //
    var total = 0
    var integer = -1
    
    
    // Ask for input
    print("What is the number?")
    guard let inputGiven = readLine() else {
        
        // No input given, return to top of loop and ask again
        continue
    }
    
    // Attempt to make input into an integer
    guard let integerGiven = Int(inputGiven) else {
        
        // Could not make input into an integer, so return to top and ask again
        continue
        
    }
    
    // Check that integer is in desired range
    // REMEMBER: Guard statement conditions describe what we WANT
    guard integerGiven >= 1, integerGiven <= 32500 else {
        
        // Integer not in desired range, return to top and ask again
        continue
        
    }
    
    // If we've made it here, the input is valid
    integer = integerGiven
    
    //loop over all the possible values
    for x in 1...32500 {
        
        //if the number is a possible diviser, add the number to total
        if integer % x == 0{
            total += x
        }
        
    }

    //compare the total vlue to the integer
    if total-integer < integer {
        print("\(integer) is a deficeint number")
    } else if total-integer == integer{
        print("\(integer) is a perfect number")
    } else if total-integer > integer{
       print("\(integer) is a abundant number")
    }
    
}


