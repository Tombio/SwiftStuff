/*:
 # Closure
 - Kuten yleensä, ei mitään ihmeellistä muihin verrattuna
 - Syntaksisokeria tyyppipäättelyn kanssa
 ---
 **/

import Foundation

let arr = [4, 3, 1, 5, 2, 5]
let strings = ["Foo", "Bar", "42"]
/*: 
### "Normaali" syntaksi
sort(T, T) -> Bool
 */
var sorted = arr.sort({ (i1: Int, i2: Int) -> Bool in return i1 < i2 })

//: Voidaan poistaa tyyppimäärittelyt, koska käsitellään Int-taulukko
sorted = arr.sort( { i1, i2 in return i1 < i2 } )

//: Voidaan poistaa return avainsana, koska funktiossa on yksi rivi, joka palauttaa eksplisiittisesti Bool
sorted = arr.sort( { i1, i2 in i1 < i2 })

//: Voidaan edelleen korvata nimetyt parametrit sisäänrakennetuilla parametreilla `$0, $1, ...`
sorted = arr.sort( { $0 < $1 })

/*: 
 Voidaan antaa lopulta pelkkä operaattori, koska Int tyypin operaattoreilla `<` ja `>`
 on signature (Int, Int) -> Bool jonka perusteella tyyppipäättelymekanismi osaa valita
 oikean luokan operaattorin
 */
sorted = arr.sort(<)

/*:
 ### Sama toiminnallisuus extensionin kautta
 */
extension Array where Element: Comparable {
    
    var desc: Array {
        return self.sort(>)
    }
    
    var asc: Array {
        return self.sort(<)
    }
    
}

print(arr.desc)
print(arr.asc)
print(strings.desc)

/*:
 ### map, reduce, jne...
 */
var asString = arr.map({ (param: Int) -> String in return String(param) })

var invertedWords = strings.map({ String($0.characters.reverse()) })

var reducedToFirst = strings.reduce("", combine: { $0 + String($1[0]) }) // $1[0] kutsu ei standardi APIssa

print(asString)
print(invertedWords)
print(reducedToFirst)

//: [Previous](@previous) | [Next](@next)
