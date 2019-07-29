//: [Previous](@previous)

var x = 1
var y = 2
//
//func swap(a: inout Int, b: inout Int) {
//    let z = a;
//    a = b;
//    b = z;
//}
//
//swap(&x, &y)
//
//print(x)
//print(y)


//generic way
func swap<Value>(lhs: inout Value, rhs: inout Value) {
    let tempValue = lhs
    lhs = rhs
    rhs = tempValue
}

swap(&x, &y)

print(x)
print(y)

var david = "david"
var david1 = "david1"

swap(&david, &david1)

print(david)
print(david1)

//define a new operator (<, >, <=, !)
infix operator <=>

func <=> <T>(lhs: inout T, rhs: inout T) {
    let tempValue = lhs
    lhs = rhs
    rhs = tempValue
}
//swiping back from above
x <=> y

print(x)
print(y)

var foo = "foo"
var bar = "bar"

foo <=> bar
print(foo)
print(bar)

//: [Next](@next)


