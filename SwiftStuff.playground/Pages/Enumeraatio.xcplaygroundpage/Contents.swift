/*: 
# Enumeraatiot
---
*/

import Foundation

enum Numbers: Int {
    case ZERO = 0
    case ONE  = 1
    case TWO // = 2
    case THREE // = 3
}

print(Numbers.ONE.rawValue)
print(Numbers.THREE.rawValue)


enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

let barcode = Barcode.UPCA(1, 2, 3, 4)

switch barcode {
    case .UPCA(let eka, let toka, let kolmas, let neljas) : // Labeloidaan tuplen indeksit
        print("\(neljas)")
    default :
        print("Foobar")
}
//:[Previous](@Syntaksi) | [Next](@next)
