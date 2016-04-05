/*:
# Value type vs. Reference type
 * struct vs. class
 * Mitä samaa, mitä eroa?
    * Voivat toteuttaa protokollan
    * Voivat sisältää propertyja ja funktiota
 * Esim. "Natiivi" array on oikeasti struct, joka toteuttaa
    * CollectionType, MutableCollectionType
    * Monia extensioneita, jotka laajentavat toiminnallisuutta
 ---
 ### Struct
 - Ei voi periä luokkia
 - Default- valinta, jos ei tarvita luokkan erityispiirteitä
 - Kuljetetaan aina kopiona, ei ikinä samoja viittauksia muiden instanssien kanssa
 - Turvallinen, ei voida mutatoida "vahingossa" scopen ulkopuolelta
 - Mikäli == operaattorin käyttö tuntuu järkevältä, valitaan struct
 */
struct Struct {
    var value: Int = -1
}
var a = Struct()
var b = a           // Kopio, ei yhteisiä viittauksia
a.value = 42
print("\(a.value), \(b.value)")

/*: 
 ### Class
 - Voi periä muita luokkia
 - Kuljetetaan referenssinä, yhteiset viittaukset
 - Voidaan myös kirjoittaa täysin immutableksi, jolloin käyttätyy structin tavoin
 - Käytetään, jos halutaan mallintaa tilaa
 - Mikäli === operaattorin käyttö tuntuu järkevältä, valitaan class
 */

class Class {
    var value: Int = -1
}
var x = Class()
var y = x           // Viittaus samaan arvoon
x.value = 42        // Muuttaa kummankin olion arvoa
print("\(x.value), \(y.value)")

//: [Previous](@previous) | [Next](@next)
