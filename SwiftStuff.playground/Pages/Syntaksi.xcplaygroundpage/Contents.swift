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
let explicitInt: Int = 10 // Pakotettu tyyppi, let == vakio
let implicitInt = 42 // Inferoitu

var variable = 10 // var == muuttuja
var optionalVariable: Int? // "Vapaaehtoinen muuttuja", ei pakko alustaa

var calculated: Int { // Laskettu arvo, tyypitys vapaaehtoista
    return explicitInt + implicitInt
}


/*:
### Taulukot
**/
let stringArray = ["foo, bar"] // [String]
let intArray: [Int] = [1,2,3,4]
let arr: [NSObject] = ["foo", "bar", 1 , 2] // [NSObject]
let explString: [String] = [] // Tyhjä String taulukko

/*:
### Funktiot
**/

func function() {  // Ei parametreja, ei palauta

}

func withParam(param: Int) {
    print(param)
}

func withParamAndReturnType(param: String) -> String {
    return param + param
}

func withMultipleParameters(publicLabel localLabel: String, param2: String) -> String {
    return localLabel + param2
}
withMultipleParameters(publicLabel: "foo", param2: "bar")



func omittedParamLabels(firstByDefault: String, _ secondWithUnderScrore: String) -> String {
    return firstByDefault + secondWithUnderScrore
}
omittedParamLabels("No need for ", "parameter labels")



func functionParameter(another: (Int, String) -> Void){
    another(1, "String")
}



func returnsFunction() -> () -> Void {
    return {
        print("Me be function, me do nothing")
    }
}

let foo = returnsFunction()
foo()

returnsFunction()()


/*:
### Iteraatiot
**/
for var i in 0..<10 {
    print(i)
}

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
 - Custom-operaattorit mahdollisia, joskin saattavat aiheutta enemmän harmia kuin hyötyä
    - Prefix
    - Infix
    - Postfix
    - Mutable / ei mutable
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


/*: ### Protokollat, Structit ja Luokat
 - Protocol ja struct suositellaan ensisijaisesti
 - Class vain jos se on tarpeellista ja järkevää
*/

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

enum Basic {
    case Foo
    case Bar
}
let basic = Basic.Foo

//: [Previous](@previous) | [Next](@next)
