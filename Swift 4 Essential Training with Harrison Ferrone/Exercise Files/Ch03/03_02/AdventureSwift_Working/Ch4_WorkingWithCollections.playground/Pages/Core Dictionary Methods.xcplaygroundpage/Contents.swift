/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
 Knowing how to update, add, remove, and iterate over dictionary items is the next fundamental step in mastering the basics of this collection type.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Add and update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 */
// Adding & updating key-value pairs
var playerStats: [String:Int] = ["HP":100, "Attack": 35, "Gold": 29]
playerStats["Defense"] = 24
playerStats["HP"] = 95
playerStats.updateValue(3, forKey: "GuildMembers")
// Removing key-value pairs
playerStats.removeValue(forKey: "Defense")
// Nested dictionaries
var multiDimentionalDictionary = [
    "set1": ["one": 1, "two": 2, "three": 3],
    "set2": ["four": 4, "five": 5, "six": 6]
]
var element = multiDimentionalDictionary["set1"]?["three"]
print(playerStats)
print(element)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
