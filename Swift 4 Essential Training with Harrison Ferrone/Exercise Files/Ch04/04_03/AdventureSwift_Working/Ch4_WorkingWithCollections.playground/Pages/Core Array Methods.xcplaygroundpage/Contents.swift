/*:
 # Core Array Methods
 ---
 
 ## Topic Essentials
 Now that we know how to create and access arrays, we need to learn how to manipulate them. Arrays come with several handy methods out of the box, including `append`, `insert`, `remove`, and `sort`, among others.
 
 ### Objectives
 + Create an array called **characterClasses** and give it a few initial values
 + Change the value of the second item, and use `append` to add an item
 + Use the `insert` and `remove` methods to change the array further
 + Explore the `reverse`, `contains`, and`sort` methods
 + Create a new array called **skillTree** that stores arrays as its values, in essence a nested array list
 + Use chained **subscript syntax** to access a value in **skillTree**
 */
// Changing & appending items
var characterClasses = ["Ranger", "Paladin", "Druid"]
characterClasses[1] = "Knight"
characterClasses.append("Gunslinger")
characterClasses += ["Healer", "Berserker"]

//Inserting and removing items
characterClasses.insert("Beast Master", at: 2)
characterClasses.remove(at: 1)

// Other methods
characterClasses.reverse()
characterClasses.contains("Gunslinger")

// Nested arrays and subscripts
var skillTree: [[String]] = [
    ["Attack+", "Barrage", "Heavy Hitter", "Stomp"],
    ["Guard+", "Evasion", "Run Like Hell"]
]

var attackTreeSkill = skillTree[0][2]


print(characterClasses)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
