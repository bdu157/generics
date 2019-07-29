import Foundation

func exchangeInts(lhs: inout Int, rhs: inout Int) {
    print("before: \(lhs) and \(rhs)")
    let temp = lhs
    lhs = rhs
    rhs = temp
    print("after: \(lhs) and \(rhs)")
}

var a = 23
var b = 99
exchangeInts(lhs: &a, rhs: &b)


func exchangeStrings(lhs: inout String, rhs: inout String) {
    print("before: \(lhs) and \(rhs)")
    let temp = lhs
    lhs = rhs
    rhs = temp
    print("after: \(lhs) and \(rhs)")
}

var a1 = "hello"
var b2 = "world"
exchangeInts(lhs: &a, rhs: &b)


//using generics T as Type so we can use different types without hainvg to change parameter
//making us more productive and helping us avoid mistakes
func exchange<T>(lhs: inout T, rhs: inout T) {
    print("before: \(lhs) and \(rhs)")
    let temp = lhs
    lhs = rhs
    rhs = temp
    print("after: \(lhs) and \(rhs)")
}

var s1 = [1,2,4]
var s2 = [5,6,7]
exchange(lhs: &a, rhs: &b)
exchange(lhs: &a1, rhs: &b2)
exchange(lhs: &s1, rhs: &s2)

