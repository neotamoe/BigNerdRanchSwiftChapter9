//: Playground - noun: a place where people can play

import UIKit

// creating an array
//var bucketList: Array<String>
//<String> says what kind of instances the array can accept

// changing the syntax
// this also tells you that bucketList is an array and that it accepts String types
//var bucketList: [String]

// above array is not yet initialized, so...
//var bucketList:[String] = ["Climb Mt. Everest"]

// swift can infer type too
var bucketList = ["Climb Mt. Rainier"]
bucketList.append("Fly hot air balloon")
bucketList.append("Watch all Star Wars movies in one day")
bucketList.append("Go on a walkabout")
bucketList.append("scuba dive in great barrier reef")
bucketList.append("find a triple rainbow")

// removing an item from an array
// arrays are 0 index
bucketList.remove(at:2)
// then hover on eye (on the right pane on line 28) and you can see the array
bucketList

// counting items in array
print(bucketList.count)

//subscripting
print(bucketList[0...2])
print(bucketList[3])
print(bucketList[1...3])

// subscripting to append new information
bucketList[2] += " in Australia"
bucketList

// replacing an array item
bucketList[0] = "Climb Mt Kilimanjaro"
bucketList

// using a loop to append items from one array to another
var newItems = [
    "Fly in a helicopter",
    "Punky Brewster marathon",
    "run a half marathon",
]
//for item in newItems {
//    bucketList.append(item)
//}

// OR use addition and assignment operator
bucketList += newItems

// insert a new item in array at particular spot
bucketList.insert("ride on a dogsled", at: 2)

// say your friend copied your list.  compare equality
//var friendsList = [
//    "Climb Mt Kilimanjaro",
//    "Fly hot air balloon",
//    "ride on a dogsled",
//    "Go on a walkabout in Australia",
//    "scuba dive in great barrier reef",
//    "find a triple rainbow",
//    "Punky Brewster marathon",
//    "Fly in a helicopter",
//    "run a half marathon"
//    ]

//let equal = (bucketList == friendsList)
// this evaluates to false because the lists are not the same--they are ordered differently and order/index in an array matters
// so...reordered, then...
var friendsList = [
    "Climb Mt Kilimanjaro",
    "Fly hot air balloon",
    "ride on a dogsled",
    "Go on a walkabout in Australia",
    "scuba dive in great barrier reef",
    "find a triple rainbow",
    "Fly in a helicopter",
    "Punky Brewster marathon",
    "run a half marathon"
    ]
// it is true!
let equal = (bucketList == friendsList)

// create an inmutable array
let lunches = [
    "cheeseburger",
    "veggie pizza",
    "chicken salad",
    "burrito",
    "falafel"
]
// because it is let and not var, you can't modify the array in any way

//bronze challenge: find a var defined on the array type that will tell you if toDoList contains any elements
var toDoList = ["Take out garbage", "pay bills", "cross off finished items"]

toDoList.count

// Silver Challenge
//reverse the order of the array
for item in toDoList.reversed() {
    print(item)
}


// GOLD Challenge: find a method on Array that will locate the index of "Fly hot air balloon."  
// Use it to compute the index two positions later in the array.  
// Use the new index to find the String at that position in your bucketList.
// GOLD Challenge
if var bucketSpot = bucketList.index(of: "Fly hot air balloon"){
    print(bucketSpot)
    print(bucketList[bucketSpot])
    bucketSpot += 2
    print(bucketList[bucketSpot])
}
