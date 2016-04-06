/*:
 # Funktiot
 - Ensimmäisen luokan kansalaisia
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



func omittedParamLabels(firstByDefault: String, _ secondWithUnderScrore: String) -> String {
    return firstByDefault + secondWithUnderScrore
}
omittedParamLabels("No need for ", "parameter labels")



func functionParameter(another: (Int, String) -> Void){
    another(1, "String")
}



func returnsFunction() -> () -> Void {
    return {
        print("Me be function, me do nothing")
    }
}

let foo = returnsFunction()
foo()

returnsFunction()()



//: [Previous](@previous) | [Next](@next)
