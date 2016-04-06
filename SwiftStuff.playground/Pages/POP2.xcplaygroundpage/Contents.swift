/*:
 # Protokolla ja type-safety
 - Kaksi loogisesti järjestettävää tyyppiä
 - Eivät kuitenkaan ole yhteensopivia
 - Toteuttavat saman protokollan
 **/
import Foundation

protocol Ordered {
    func isBefore(other: Ordered) -> Bool
}

struct Letter: Ordered {
    let value: Character
    
    func isBefore(other: Ordered) -> Bool {
        return value < (other as! Letter).value // code smell
    }
}

struct Number: Ordered {
    let value: Int
    
    func isBefore(other: Ordered) -> Bool {
        return value < (other as! Number).value // code smell
    }
}


let ten = Number(value: 10)
let eleven = Number(value: 11)

let c = Letter(value: "C")
let d = Letter(value: "D")

print(eleven.isBefore(ten))
print(c.isBefore(d))


/*:
 ### Kaikki hyvin, kunnes
 - Tämä menee kääntäjästä läpi, koska ten ja c ovat molemmat Ordered
 **/
// ten.isBefore(c)
//: [Previous](@previous)
