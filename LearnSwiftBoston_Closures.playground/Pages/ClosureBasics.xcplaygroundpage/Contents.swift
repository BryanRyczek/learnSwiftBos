//: [Previous](@previous)

import Foundation
/*
 
 Definition of a closure: Closures are self-contained blocks of functionality that can be passed around and used in your code. 😴💤😴💤😴😴💤😴😴💤
 
 */

// Closures, like functions, are first-class objects in swift. This means closures:

//    1) can be stored (assigned to a let / var).

var theAbsoluteMostBasicClosure : () -> ()

// theAbsoluteMostBasicClosure takes in nothing and returns nothing, essentially leaving the developer with an executable.

theAbsoluteMostBasicClosure = { () -> () in
    print("hello, closure world!")
}


print("--- Basic execution of a closure---")
theAbsoluteMostBasicClosure()

//    2) can be passed as arguments to functions.

func basicPassIn(_ function: () -> ()) {
    function()
}


print("--- Basic pass in ---")
basicPassIn(theAbsoluteMostBasicClosure)

basicPassIn {
    print("--- Basic pass in with trailing closure syntax ---")
    theAbsoluteMostBasicClosure()
}

//    3) can return other functions (or closures) .

var returnClosure : () -> (() -> ())
returnClosure = {
    print("---return other functions---")
    return theAbsoluteMostBasicClosure
}

let notBasic = returnClosure() // == theAbsoluteMostBasicClosure
notBasic() // == theAbsoluteMostBasicClosure()

//4 /* Closures capture the values inside their scope */

let className: String = "Learn Swift Boston"
