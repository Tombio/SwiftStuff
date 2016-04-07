/*:
 # Syntaksi
 - Lähellä Scalaa
 - Ei pakollisia puolipisteitä
 - Huomattava ero Objective-C:n verrattuna
 - Objective-C ilman C:tä
---
**/
import Foundation
//: ### Eksplisiittinen ja implisiittinen arvo
let explicitInt: Int = 10 // Pakotettu tyyppi, let == vakio
let implicitInt = 42 // Inferoitu

var variable = 10 // var == muuttuja
var optionalVariable: Int? // "Vapaaehtoinen muuttuja", ei pakko alustaa rakentajassa

var calculated: Int { // Laskettu arvo, tyypitys vapaaehtoista
    return explicitInt + implicitInt
}


/*:
### Taulukot
**/
let stringArray = ["foo, bar"] // [String]
let intArray: [Int] = [1,2,3,4]
let arr = ["foo", "bar", 1 , 2] // [NSObject]
let explString: [String] = [] // Tyhjä String taulukko

/*:
### Iteraatiot
**/
for var i in 0..<10 {
   // print(i)
}

for  value in arr.enumerate() { // "for-each"
   // print("\(value)")
}

for (index, value) in arr.enumerate() { // "for-each + indeksi"
   // print("\(index) => \(value)")
}

/*: 
 ### Operaattorit
 - Lähes kaikki C-tyyppiset operaattorit (+,-,*,<,>,...)
 - ++ operaattorista luovuttu, koska se on koettu melko hyödyttömäksi
 - Custom-operaattorit mahdollisia, joskin saattavat aiheutta enemmän harmia kuin hyötyä
    - Prefix
    - Infix
    - Postfix
    - Mutable / ei mutable
*/
struct Dollar {
    let amount: Double
}

postfix operator ~~ {} // "Euro-muunnosoperaattori"
postfix func ~~(lhs: Dollar) -> Double {
    return lhs.amount * 1.3
}

let dollar = Dollar(amount: 5.0)
print(dollar~~)
print(dollar)


/*: 
 ### Rakenteet
 - Protocol ja struct suositellaan ensisijaisesti
 - Class vain jos se on tarpeellista ja järkevää
*/
protocol Proto {
    func myString() -> String
}

struct Struct: Proto {
    func myString() -> String {
        return "Rakenne"
    }
}

class Luokka: Proto {
    func myString() -> String {
        return "Luokka"
    }
}

enum Basic: Proto {
    case Foo
    case Bar
    
    func myString() -> String {
        return "Enumeraatio"
    }
}

//: [Previous](@previous) | [Next](@next)
