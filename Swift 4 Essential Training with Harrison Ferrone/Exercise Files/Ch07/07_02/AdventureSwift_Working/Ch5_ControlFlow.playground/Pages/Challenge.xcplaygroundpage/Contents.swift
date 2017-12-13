/*:
 # Chapter Challenge: Game Conditions
 ---
 ### Tasks
 1. Create an optional called **currentWeapon** and assign it a string value
 2. Use optional binding to access **currentWeapon** and handle if it is nil
 3. Create a variable called **currentEXP** and assign it an integer value
 4. Use a `switch` statement with **currentEXP** to evaluate different cases
 5. Create a dictionary called **playerLevels** and assign it player names as keys and level numbers as values
 6. Use a `for-in` loop to iterate over **playerLevels** and print out it's key-value pairs in an interpolated string
 7. Add a guard statement inside the `for-in` loop to make sure each player is at least level 1 to proceed
 */
// 1
var currentWeapon: String? = "Giant's Hammer"

// 2
if let weapon = currentWeapon {
    print("I've got a \(weapon) for ya!")
} else {
    print("I'm unarmed...")
}

// 3
var currentEXP = 1059

// 4
switch currentEXP {
case 0...200:
    print("Kinda low...")
case 201...500:
    print("Getting better, just a bit more...")
case 501...1000:
    print("Time to level up!")
default:
    print("Corrupted data...")
}

// 5
var playerLevels = ["Harrison": 23, "Steven": 25, "Bob": 0]

// 6
for (playerName, playerLevel) in playerLevels {
    
    // 7
    guard playerLevel > 0 else {
        print("\(playerName) you need to do the tutorial, because you're a noob")
        continue
    }
    
    print("Player \(playerName) is at level \(playerLevel)")
}
//: [Previous Topic](@previous)
