//: [Previous](@previous)

func power(_ value: Int, _ exponent: Int) -> Int {
    var result: Int = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    return result
}

power(2, 3)

// MARK: - Solution one

func power<Number: Numeric>(_ value: Number, _ exponent: Int) -> Number {
    var result: Number = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    return result
}
let value = power(3.5, 3)

// MARK: - Solution two
extension Numeric {
    func raisedTo(_ expoent: Int) -> Self {
        var result: Self = 1
        
        for _ in 0..<expoent {
            result *= self
        }
        return result
    }
}
let number = 10

number.raisedTo(2)

// MARK - Solution3

infix operator **

func ** <Number: Numeric>(value: Number, exponent: Int) -> Number {
    var result: Number = 1
    for _ in 0..<exponent {
        result *= value
    }
    return result
}

2 ** 3

//: [Next](@next)
