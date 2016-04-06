/*:
# Optionals
 - Swiftin tapa välttää null (== nil) ongelmia
 - Pyritään välttämään "pyramid of doom" ja muita yleisiä nulleihin liittyviä ongelmia
 - ? operaattorilla voidaan testata turvallisesti optinalia
 - ! operaattorilla voidaan pakottaa, mutta saatetaan aiheuttaa "null pointer exception"
---
 */

import Foundation

var optionalString: String?

if let isThereAnything = optionalString {
    // isThereAnything ei voi olla nil täällä
}

optionalString?.capitalizedString // Ei kaadu, koska ?
// optionalString!.capitalizedString // Kaatuu, koska nil

struct SomeOptionals {
    var maybe: String?
}

var instance: SomeOptionals?

print(instance?.maybe?.capitalizedString) // Ei kaadu, koska ?
print(instance?.maybe!.capitalizedString) // Ei kaadu, koska ?

/*:
 ### Optionalin testaaminen
 - Pakottaa hyviin tapoihin
*/

instance = SomeOptionals(maybe: nil)
if let instance = instance {
    print(instance.maybe?.capitalizedString)
}


instance = SomeOptionals(maybe: "maybe not")

print(instance?.maybe?.capitalizedString)

//: [Previous](@previous) | [Next](@next)
