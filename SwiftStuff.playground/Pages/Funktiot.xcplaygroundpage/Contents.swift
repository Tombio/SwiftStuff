/*:
 # Funktiot
 - Ensimmäisen luokan kansalaisia
 ---
 **/

import Foundation

func function() {  // Ei parametreja, ei palauta
    
}

func withParam(param: Int) {
    print(param)
}

func withParamAndReturnType(param: String) -> String {
    return param + param
}

func withMultipleParameters(publicLabel localLabel: String, param2: String) -> String {
    return localLabel + param2
}
withMultipleParameters(publicLabel: "foo", param2: "bar")

func withNParameters(param: String ... ) {
    // param => [String]
}
withNParameters("","","")


func omittedParamLabels(firstByDefault: String, _ secondWithUnderScrore: String) -> String {
    return firstByDefault + secondWithUnderScrore
}
omittedParamLabels("No need for ", "parameter labels")


func functionParameter(another: (Int, String) -> String){
    print(another(1, "String"))
}
functionParameter({(i:Int, s: String) in return "\(i) \(s)"})

//functionParameter{"\($0) \($1)"}


func returnsFunction() -> () -> Void {
    return {
        print("Me be function, me do nothing")
    }
}

let foo = returnsFunction()
foo()

returnsFunction()()



//: [Previous](@previous) | [Next](@next)
