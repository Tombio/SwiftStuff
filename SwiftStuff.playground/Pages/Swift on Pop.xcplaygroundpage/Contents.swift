/*:
 # Swift on POP
 _"Protocol Oriented Programming"_
 
 ---
 
 ### Mikä?
 - Applen uusi multi-paradigmakieli (2014 loppuvuodesta julkaistu)
 - Alunperin kaikille Applen alustoille, iOS, OS X, TV, Watch
    - Open sourcetuksen jälkeen nopeasti Linuxille.
    - Nykyisin jo pilvialustoillakin ajettavissa
 - Korvannee tulevaisuudessa Objective-C:n kokonaan
 - LLVM kääntäjä (Sama kuin Obj-C)
    - Sama runtime kuin Obj-C, eli voidaan ajaa yhtäaikaisesti C, C++ ja Objective-C koodin kanssa.
 - Active Reference Count, ARC - Muistinhallinta (ei hallitse ristiviittauksia)
 - Yhteensopivuus Obj-C koodin kanssa Bridging Headerin avulla
 - GitHubissa: https://github.com/apple/swift
 
 ### Miksi?
 - Objective-C:n syntaksi erikoinen, muutenkin ehkä jo vanhentunut?
 - Halu kehittää modernimpi, tehokkaampi ja helpommin lähestyttävä kieli
 - Pelkästään syntaksin ansiosta potentiaalinen käyttäjäkunta moninkertaistui
 - Yritys tehdä jotain uutta ja kerätä paras tietämys samaan kieleen
 - Funktionaaliset ominaisuudet, funktiot 1. luokan kansalaisia
*/
import Foundation

var str = "Hello, playground"
print(str)


//: ---
//: Playground - noun: a place where people can play

//: [Next](@next)
