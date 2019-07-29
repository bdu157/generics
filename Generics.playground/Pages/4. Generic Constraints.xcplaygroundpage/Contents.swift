//: [Previous](@previous)
import Foundation

//raise the base to the "exponent" power
func powerInt(base: Int, exponenet: Int) -> Int {
    var result = 1
    for _ in 0..<exponenet {
        result *= base
    }
    return result
}

powerInt(base: 3, exponenet: 3)

//: [Next](@next)
