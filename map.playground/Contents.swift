import UIKit

// MARK: Convert text to upper case
let list = ["a", "b", "c", "d"]

// 1
var uppercasedList = list.map ({(char: String) -> String in
    char.uppercaseString
})

// 2
uppercasedList = list.map ({$0.uppercaseString})

// 3 with FlatMap
let multiList = [["a", "b"], ["c"], ["d"]]
var uppercasedMultiList = multiList
    .flatMap{$0}
    .map{$0.uppercaseString}