/*:
 # Protocol Oriented Programming
 - Applen näkemyksen mukaan siistimpi ja järkevämpi tapa kuin OOP
 - Swift on täysin kykenevä kieli myös OOP:n
 - Protokolla kuten interface monessa kielessä, mutta höystettynä laajennusmahdollisuudella
 - Perusrakenteet tulisi "Best practices" mukaan rakentaa pääasiassa Structeja, Protokollia ja Enumeja käyttäen
 - Classeilla tehdään se, mikä on järkevää, ja käytetään siellä missä on pakko
 - Tyypin tai luokan tulee toteuttaa kaikki protokollan vaatimukset (conformance)
 **/
import Foundation

/*:
 ### Mikä on protokolla
 - Kuten interface, määrittää propertyja ja funktioita tiettyä tarkoitusta varten
 - Laajennusmahdollisuus
    - Default-toteutus mahdollista
 
*/

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

// Lentäviä lintuja varten oma protokolla
protocol Flyable {
    var airspeedVelocity: Double { get }
}

/*:
 Structit toteuttavat tarvittavat protokollat
*/
struct FlappyBird: Bird, Flyable {
    let name: String
    let canFly = true // Tämä on public, joten toteuttaa vaatimuksen canFly { get }
    
    let flappyAmplitude: Double
    let flappyFrequency: Double
    
    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}

struct Penguin: Bird {
    let name: String
    let canFly = false
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    let canFly = true
    var airspeedVelocity: Double { return 2000.0 }
}
/*: 
 Jokainen toteutus toteuttaa canFly { get } vaatimuksen, vaikka
 meillä on _Flyable_ porotokolla, joka sisältää semanttisesti saman tiedon.
 Tämä on siis tavallaan boiler-platea
 
 protokolla laajennos hätiin!
 **/

/*
extension Bird where Self: Flyable {
    var canFly: Bool { return true }
}
*/

let birds: [Bird] = [
    FlappyBird(name: "Flappy", flappyAmplitude: 3.14, flappyFrequency: 50),
    Penguin(name: "Pingu"),
    SwiftBird(version: 2.2)]

for bird in birds {
    print("\(bird.name) can fly \(bird.canFly)")
}





//: [Previous](@previous) | [Next](@next)
