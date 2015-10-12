// Array

import UIKit

var todo: [String] = ["Return Calls", "Write Blogpost", "Cook Dinner"]
//explicit string array type

todo += ["Pickup Laundry", "Buy Bulbs"]
//todo = todo + ["Pickup Laundry"]

todo[0]

todo.count

todo.append("Edit Blog Post")
todo[2] = "Clean dishes"

todo[2]


let item = todo.removeLast()
item

let item2 = todo.removeAtIndex(1)
item2


todo.insert("Call Mom", atIndex: 0)
todo


