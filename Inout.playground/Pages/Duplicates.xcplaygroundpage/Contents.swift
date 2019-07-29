//: [Previous](@previous)

var array = [1, 2, 3, 4, 1, 1, 2, 3, 6, 7]

//func noDuplicates(x: Int, y: Int) {
//    for i in 0..<array.count {
//
//    }
//}

func removeDuplicates(array: [Int]) -> [Int] {
    var results: [Int] = []
    
    for item in array {
        if !results.contains(item) {
            results.append(item)
        }
    }
    return results
}

removeDuplicates(array: array)


func removeDuplicates<Element: Equatable>(array: [Element]) -> [Element] {
    var results: [Element] = []
    
    for item in array {
        if !results.contains(item) {
            results.append(item)
        }
    }
    return results
}

var nameArray = ["dongwoo", "dongwoo", "steve", "john"]

removeDuplicates(array: nameArray)

// Generic for Sequence
func removeDuplicates<S>(_ sequence: S) -> [S.Element]
    where S: Sequence, S.Element: Equatable {
        
        var results: [S.Element] = []
        
        for item in sequence {
            if !results.contains(item) {
                results.append(item)
            }
        }
        return results
}

extension Sequence where Element: Equatable {
    func removeDuplicates() -> [Element] {
        var results: [Element] = []
        
        for item in self {
            if !results.contains(item) {
                results.append(item)
            }
        }
        return results
    }
}

let arr = [1,2,3,4,5,1,3,2,4,5,1]
print(arr.removeDuplicates())

//: [Next](@next)
