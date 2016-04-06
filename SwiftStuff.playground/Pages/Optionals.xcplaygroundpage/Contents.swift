/*:
# Optionals
 - Swiftin tapa välttää null (== nil) ongelmia
 - Pyritään välttämään yleisiä nulleihin liittyviä ongelmia
 - ? operaattorilla voidaan testata turvallisesti optinalia
 - ! operaattorilla voidaan pakottaa, mutta saatetaan aiheuttaa "null pointer exception"
 - Yleisesti ottaen ! postfix operaattoria tulisi välttää
    - Ei tule sekoittaa ! prefix-operaattoriin (negaatio)
---
 */

import Foundation

var optionalString: String?

if let isThereAnything = optionalString {
    // isThereAnything ei voi olla nil täällä
    // Tänne ei edes tulla, mikäli optionalString == nil
}

optionalString?.capitalizedString // Ei kaadu, koska ?
// optionalString!.capitalizedString // Kaatuu, koska nil

struct SomeOptional {
    var maybe: String?
}

var instance: SomeOptional?

print(instance?.maybe?.capitalizedString) // Ei kaadu, koska ?
print(instance?.maybe!.capitalizedString) // Ei kaadu, koska ?

/*:
 ### Optionalin testaaminen
 - Pakottaa hyviin tapoihin
*/

instance = SomeOptional(maybe: nil)
if let instance = instance {
    print(instance.maybe?.capitalizedString)
}

instance = SomeOptional(maybe: "maybe not")

print(instance?.maybe?.capitalizedString)

/*:
 ### Nil Coalescing operaattori
 */

let anotherInstance = SomeOptional(maybe: nil)
let neverNil = anotherInstance.maybe ?? "Default to the rescue" // Lyhyempi versio ?: operaattorista
print(neverNil)

//: [Previous](@previous) | [Next](@next)
