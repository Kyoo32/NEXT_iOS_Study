// for-in

import UIKit

var todo: [String] = ["Return calls", "Write blog", "Cook dinner", "Pickup Laundry", "Buy bulbs"]


for item in todo {
    println(item)
}

for number in 1...10{
    println("\(number) times 2 is \(number*2)")
}
// 1...10 three dots is a closed range
// the upper limit is inclusive

// 1..<10 is a half-closed range
// the upper limit is non-inclusive



