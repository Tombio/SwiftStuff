//: # Enumeraatiot

import Foundation

enum Basic {
    case Foo
    case Bar
}

let basic = Basic.Foo

enum Numbers: Int {
    case ZERO = 0
    case ONE  = 1
    case TWO
    case THREE
}

print(Numbers.ONE.rawValue)
print(Numbers.THREE.rawValue)

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

let upca = Barcode.UPCA(1, 2, 3, 4)

//:[Previous](@Syntaksi) | [Next](@next)
