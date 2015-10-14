// while loop

import UIKit

var todo: [String] = ["Return calls", "Write blog", "Cook dinner", "Pickup Laundry", "Buy bulbs"]

var index = 0;

/* //sudo
while something is true {
    println(todo[index])
}
*/

while index < todo.count {
    // index++ : execution time, bad access - Array index out of range
    println(todo[index])
    index++;
}



index = 0
do {
    println(todo[index])
    index++
} while index < todo.count