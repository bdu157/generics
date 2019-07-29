//: [Previous](@previous)

import Foundation

//first in first out
struct Queue<Element> {
    
    init(elements: [Element] = []) {
        items = elements
    }
    //if keyword is class then no mutating is needed it is because struct
    //to be able to modify func here they should be mutating
    mutating func enqueue(_ value: Element) {
        items.append(value)
    }
    
    mutating func dequeue() -> Element? {
        if let first = items.first {
            items.remove(at: 0)
            return first
        } else {
            return nil
        }
    }
    
    private var items: [Element] = []
}

var q = Queue<Int>()

q.enqueue(1)
q.enqueue(2)
q.enqueue(3)

q = Queue(elements: [1,2,3,4,5])
while let next = q.dequeue() {
    print(next)
}

q.dequeue() //1
q.dequeue() //2
q.dequeue() //3
q.dequeue() // nil
//: [Next](@next)
