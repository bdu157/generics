//: [Previous](@previous)

struct Queue<Element> {
    
    private(set) var elements: [Element]
    
    mutating func push(_ element: Element) {
        self.elements.append(element)
    }
    
    mutating func pop() -> Element? {
        return elements.removeFirst()
    }
}

var queue = Queue(elements: ["foo", "bar"])

queue.push("Moin")

queue.pop()

var numberQueue = Queue(elements: [1,2,3,4,5])

numberQueue.push(6)

numberQueue.pop()

//: [Next](@next)
