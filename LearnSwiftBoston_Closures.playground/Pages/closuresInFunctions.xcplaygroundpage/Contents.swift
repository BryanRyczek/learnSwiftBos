//: [Previous](@previous)

import Foundation

// CLOSURES IN FUNCTIONS

//define operation closures
let add = { (a: Int, b: Int) in
    a + b
}
let subtract = { (a: Int, b: Int) in
    a - b
}

let multiply = { (a: Int, b: Int) in
    a * b
}

let divide = { (a: Int, b: Int) in
    a / b
}

func operation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a,b)
    return result
}

//call function with previously declared closures
operation(4, 4, operation: add)
operation(4, 4, operation: subtract)
operation(4, 4, operation: multiply)
operation(4, 4, operation: divide)

//declare the closure as a parameter directly
operation(4, 4, operation: { (a: Int, b: Int) in
    a * b * b
})

//since we know the types of both a & b, we can abstract the closure even further.
operation(3, 5, operation: {
    $0 * $1 - 55
})

//Even further...
operation(6, 15, operation: + /* == $0 + $1 == 6 + 15 */)

//ONLY IF the closure is the final parameter of the function...
//This is called Trailing closure syntax
operation(3, 9) {
    $0 * $0 * $1
   //3 *  3 *  9 == 81
}
