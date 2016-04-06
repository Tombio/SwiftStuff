import Foundation

protocol Ordered {
    func isBefore(other: Self) -> Bool
}

struct Letter: Ordered {
    let value: Character
    
    func isBefore(other: Letter) -> Bool {
        return value < other.value
    }
}

struct Number: Ordered {
    let value: Int
    
    func isBefore(other: Number) -> Bool {
        return value < other.value
    }
}


let ten = Number(value: 10)
let eleven = Number(value: 11)

let c = Letter(value: "C")
let d = Letter(value: "D")