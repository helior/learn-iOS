/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias called **Attack** with named values for name and damage
 2. Create a type alias called **ItemClosure** with a dictionary of string keys and int values as its parameter and no return value
 3. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 4. Write an overloaded version of **attackEnemy** with a parameter of type Attack and returns a boolean
 5. Use both **attackEnemy** methods
 6. Write a function called **fetchShopItems** that has a closure parameter of type ItemClosure and use it to return an array of scores
 7. Call the **fetchShopItems** closure, loop through the shop items and print out an interpolated string
 */
// 1
typealias Attack = (name: String, damage: Int)

// 2
typealias ItemClosure = ([String:Int]) -> Void

// 3
func attackEnemy(damage: Int) {
    print("Enemy hit for \(damage) damage!\n")
}

// 4
func attackEnemy(attack: Attack) -> Bool {
    print("You attacked with \(attack.name)\nEnemy hit for \(attack.damage)!\n")
    return false
}

// 5
attackEnemy(damage: 23)
var enemyWasDefeated = attackEnemy(attack: ("Power Slam", 88))

// 6
func fetchShopItems(closure: ItemClosure) {
    let shopItems = ["Mage Robes": 34, "Rangers Tunic": 13, "Warriors Belt": 5]
    closure(shopItems)
}

// 7
fetchShopItems { (itemsDictionary) in
    for (item, value) in itemsDictionary {
        print("\(item) worth \(value)")
    }
}


//: [Previous Topic](@previous)
