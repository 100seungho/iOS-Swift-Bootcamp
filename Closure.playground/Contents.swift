import UIKit
/*
func calculator (n1: Int, n2: Int, opperation: (Int, Int) -> Int) -> Int {
    
    return opperation(n1,n2)
    
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

calculator(n1: 2, n2: 3, opperation: add)
*/
/*
func calculator (n1: Int, n2: Int, opperation: (Int, Int) -> Int) -> Int {
    
    return opperation(n1,n2)
    
}

calculator(n1: 2, n2: 3, opperation: { (no1: Int, no2: Int) -> Int in
    return no1 + no2
})

calculator(n1: 2, n2: 3, opperation: { (no1, no2) -> Int in
    return no1 + no2
})

calculator(n1: 2, n2: 3, opperation: { (no1, no2) in
    return no1 + no2
})

calculator(n1: 2, n2: 3, opperation: { (no1, no2) in no1 + no2})


// Anonymous parameter name
var result = calculator(n1: 2, n2: 3, opperation: {$0 + $1})

print(result)

// Trailing Closure
result = calculator(n1: 2, n2: 3) {$0 + $1}

print(result)
*/

let array = [6,2,3,9,4,1]

print(array.map{$0 + 1})

let newArray = array.map{"\($0)"}
