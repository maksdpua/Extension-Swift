
import Foundation

extension Int {
    var isEven : Bool {
        return self % 2 == 0
    }
    
    var isOdd : Bool {
        return !isEven
    }
    
    enum EvenOrOdd {
        case Even
        case Odd
    }
    
    var evenOrOdd : EvenOrOdd {
        return isEven ? .Even : .Odd
    }
    
    func pow(value: Int) -> Int {
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
    mutating func powTo(value: Int) {
        self = pow(value)
    }
    
    var binaryString : String {
        
        var result = ""
        for i in 0..<8 {
            result = String(self & (1 << i) > 0) + result
        }
        return result
    }
}

extension String {
    init(_ value: Bool) {
        self.init(value ? 1 : 0)
    }
    
    subscript(start: Int, length: Int) -> String {
        
        let startIndex = self.startIndex.advancedBy(start)
        let endIndex = self.startIndex.advancedBy(start+length-1)

        return self[startIndex...endIndex]
    }
}


extension Int.EvenOrOdd {
    var string : String {
        switch self {
        case .Even: return "even"
        case .Odd: return "odd"
        
        }
    }
    
}


var a = 5


if a % 2 == 0 {
    print("a")
}

if a.isOdd {
    print("isOdd")
}

a.evenOrOdd

print(a.evenOrOdd)

a.evenOrOdd.string

a.pow(4)

a.powTo(2)

a.binaryString

let s = "Hello, World!"

//let start = s.startIndex
//let end = advance(s)

s[0,5]




