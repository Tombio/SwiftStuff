//: # Syntaksi
/*:
 - Lähellä Scalaa
 - Ei pakollisia puolipisteitä
 - Huomattava ero Objective-C:n verrattuna
 - Objective-C ilman C:tä
---
**/
import Foundation
//: ### Eksplisiittinen ja implisiittinen arvo
let explicitInt: Int = 10 // Pakotettu tyyppi
let implicitInt = 42 // Inferoitu


/*:
### Taulukot
**/
let stringArray = ["foo, bar"] // [String]
let intArray = [1,2,3,4] // [Int]
let arr = ["foo", "bar", 1 , 2] // [NSObject]
let explString: [String] = [] // Tyhjä String taulukko

/*:
### Iteraatiot
**/
for  value in arr.enumerate() { // "for-each"
    print("\(value)")
}

for (index, value) in arr.enumerate() { // "for-each + indeksi"
    print("\(index) => \(value)")
}

/*: 
 ### Operaattorit
 - Lähes kaikki C-tyyppiset operaattorit (+,-,*,<,>,...)
 - ++ operaattorista luovuttu, koska se on koettu melko hyödyttömäksi
 - Custom-operaattorit mahdollisia
*/
struct Dollar {
    let amount: Double
}

postfix operator ~~ {}
postfix func ~~(lhs: Dollar) -> Double {
    return lhs.amount * 1.3
}

let dollar = Dollar(amount: 5.0)
print(dollar~~)

//: ### Protokollat, Structit ja Luokat

protocol Proto {
    func myString() -> String
}

struct Rakenne: Proto {
    func myString() -> String {
        return "Rakenne"
    }
}

class Luokka: Proto {
    func myString() -> String {
        return "Luokka"
    }
}

extension Array where Element: Comparable {
    func desc() -> Array {
        return self.sort(>)
    }
    
    func asc() -> Array {
        return self.sort(<)
    }
}

//: [Previous](@previous) | [Next](@next)
