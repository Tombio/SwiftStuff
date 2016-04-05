//: # Syntaksi

import Foundation

// Eksplisiittinen arvo
let explicitInt: Int = 10

// Implisiittinen arvo
let implicitInt = 42

let str = "Foobar"

// [NSObject]
let arr = ["foo", "bar", 1 , 2]

// Iteraatio
for (index, value) in arr.enumerate() {
    print("\(index) => \(value)")
}


protocol proto {}
struct rakenne: proto {}
class luokka {}
//: [Previous](@previous) | [Next](@next)
