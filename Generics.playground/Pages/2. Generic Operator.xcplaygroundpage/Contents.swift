//: [Previous](@previous)

import Foundation
// define the operator
//custom operator shouldn't be used as much - infix
//just use multiply and divide and plus and minus

infix operator <=>

func <=> <T>(lhs: inout T, rhs: inout T) {
    print("before: \(lhs) and \(rhs)")
    let temp = lhs
    lhs = rhs
    rhs = temp
    print("after: \(lhs) and \(rhs)")
}

var t1 = 42
var t2 = 69
t1 <=> t2

//: [Next](@next)
