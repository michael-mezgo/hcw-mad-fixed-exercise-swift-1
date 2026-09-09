//: # Swift Exercise
//: Welcome to the Swift Exercise. This document is an interactive Playground. The goal of this exercise is to familiarize yourself with the Swift syntax, terminology and concepts.
//:
//: If this text you're currently reading is being displayed as a code comment with `//:`, you can make it look prettier by selecting `Editor` --> `Show Rendered Markup` in the menu bar at the very top of your screen. You can switch back to the raw markup by clicking `Editor` --> `Show Raw Markup`. The document is designed to be viewed in Rendered Markup mode.
//:
//: You can type your Swift code in here and it'll automatically compile.
//: If the automatic compilation annoys you, you can turn it off by clicking-and-holding your mouse on the "Play" icon in the toolbar below. Then, select `Manually Run`.
//:
//: If you need help or have any questions, please feel free to contact me. You can find my contact info on the [course website](https://avf.github.io/mobile-app-dev/). I'm always happy to help!
//:
//: ## How to do the exercises
//: - Follow the instructions for the exercises.
//: - Please write any code that I ask for right into the playground.
//: - Any time I ask a question in an exercise, **please add a comment with the explanation in your own words.**
//:
//: Here's an example:
//:
//: Write a Hello World program in Swift in a single line. Why is this a valid Swift program?

print("Hello, World!") // This works because Swift programs by default execute statements in the global scope. A `main` function or similar is not required.

//: ## Exercises
//: ### Variables and Constants
//: 1. Declare a variable with value `42` that is implicitly assigned type `Int`.
//: 1. Declare a constant with value `42` that is implicitly assigned type `Int`.
//: 1. Declare a variable with value `42.5`. What type does it have?
//: 1. Declare a variable with explicit type `Float` and value `42.5`.
//: 1. Declare an uninitialized constant with type `String`. Will you ever be able to assign a value to this constant?
// 1.1
var myNumber = 42

// 1.2
let myConstant = 42

//1.3
var myCommaNumber = 42.5
print(type(of: myCommaNumber)) // Type: Double

//1.4
var myFloat: Float = 42.5

//1.5
let myUninitializedConstant: String
// --- EXTRA TASKS / TRIES ---
//myUninitializedConstant = "Hello, World!" // i can assign a value once
//myUninitializedConstant = "Hello again!" // this won't work
// Answer: YES, i'll be able to assign a value once
//: ### Strings and String interpolation
//: 1. Create a constant of type `String` containing the text `"This is a String."`.
//: 1. Create a mutable String with `"This is an Int: "` as its initial value.
//: 1. Create an `Int` constant with value 42 and append it to the mutable string, resulting in the value: `"This is an Int: 42"`.
//: 1. Create another constant containing the same string, but this time use a string literal and string interpolation (the `\()` syntax) to create it.
//: 1. Create a multiline string using the multiline string literal.
// 2.1
let myString: String = "This is a String."
// let myString = "This is a String." // implicit assignment

// 2.2
var myMutableString = "This is an Int: "

// 2.3
let myIntConstant = 42
myMutableString.append(String(myIntConstant))
// --- EXTRA TASKS / TRIES ---
// myMutableString = myMutableString + String(myIntConstant)
// myMutableString += String(myIntConstant)

// 2.4
let myConstantString = "This is an Int: \(myIntConstant)"


// 2.5
var multilineString = """
    This is my example
    with a second line
    and a third line
    """
// \ are not needed for a line break - \ are used as a soft line break!
//: ### Arrays and Dictionaries
//: Arrays
//: 1. Create an immutable array and initialize it with an array literal containing 3 `String` elements
//: 1. Create an empty mutable array of type `[String]`
//: 1. Append the second element of the first (immutable) array to the second (mutable) array.
//: 1. Can you modify one of the `String` elements in the first array (for example, append a word to it)? Why/why not? What if the elements were not of type `String`, but instead of a class?
//: 1. What happens if you modify the `String` element in the second array (for example, if you append a word to it)? Will the second element in the first array also change, or stay the same? Explain why.
//: 1. Create an immutable empty array of type `[Int]` without any literals, using the name of the class (`Array`) and the standard initializer for generic types (`var value = ClassName<GenericType>()`)
// 3.1
let immutableArray = ["String 1", "String 2", "String 3"]
// immutableArray.append("String 4") //does not work -> array is immutable

// 3.2
var mutableArray : [String] = [] // new sytax - ols syntax was : String[] - Source: https://stackoverflow.com/a/24213101

// 3.3
mutableArray.append(immutableArray[1])

// 3.4
// append is not possible (line 73)
/*
// also not possible: immutableArray[1] = "New string!"

class Student {
    var firstName = ""
    var lastName = ""
    
    init(firstName: String = "", lastName: String = "") {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let studentMax = Student(firstName: "Max", lastName: "Mustermann")
let studentErika = Student(firstName: "Erika", lastName: "Musterfrau")

let immutableStudentArray = [studentMax]
//immutableStudentArray[0] = studentErika //also not possible

// I can only edit the objects themselves
immutableStudentArray[0].firstName.append("imilian")
print(immutableStudentArray[0].firstName)
*/
// 4) Antwort: Dies funktioniert, da im Array nur eine Referenz zur Instanz gespeichert ist und ich diese ändern kann. Änderungen am Array selbst sind nicht möglich.

// 3.5
mutableArray[0].append(" Test change")
print(mutableArray[0])
print(immutableArray[1])
// Antwort: Strings werden in Swift wie "primitive Datentypen" - um in der C#-Bezeichnung zu bleiben - behandelt. Sprich sie werden bei einer Zuweisung zu einer anderen Varibale kopiert
// Eine Änderung hat daher keine Auswirkung auf den ursprünglichen Wert (wie z.B. bei INT in C# / Java) - Strings werden in diesen Programmiersprachen ja als Objekte im Gegensatz zu Swift implementiert

// 3.6
let immutableEmptyIntArray = Array<Int>()
//: Dictionaries
//: 1. Create a mutable empty Dictionary of type `[String: Double]`
//: 1. Set the value for the key `"Answer to Life, the Universe and Everything"` to `42`.
// 4.1
var dict: [String: Double] = [:] // https://developer.apple.com/documentation/swift/dictionary

// 4.2
// print(dict["Answer to Life, the Universe and Everything"] ?? "nicht vorhanden")
dict["Answer to Life, the Universe and Everything"] = 42
// print(dict["Answer to Life, the Universe and Everything"] ?? "nicht vorhanden")

//: ### Optionals
//: 1. Create an optional `String` variable and assign a non-nil value of your choice
//: 1. Print the String on the console. Make sure the variable is first unwrapped and only the actual value is printed. You may either force-unwrap the string or use an `if let` construct.
//: 1. What happens if you force-unwrap an optional variable that contains `nil`?
//: 1. Create another optional `String` variable and asign the value `nil`. Use the nil coalescing operator (`??`) to print the first unwrapped String from above.
//: 1. Do the same thing again, but this time use the ternary conditional operator `(a ? b : c)`.
// 5.1
var stringOptional: String? = "Hello Optional!"

// 5.2
// Force unwrap - unsafe!
print(stringOptional!)
// If let
if let stringOptional {
    print(stringOptional)
}
// ?? (like Elvis Operator ?: in Kotlin)
print(stringOptional ?? "Optional not set!")

// 5.3
// stringOptional = nil
// print(stringOptional!)
// Answer: The program crashes (unsafe)

// 5.4
var stringOptional2 : String? = nil
print(stringOptional2 ?? stringOptional ?? "Both optionals are not set!") //Added fallback sting - ozherwise XCode would warn me about an unsafe operation

// 5.5
print(stringOptional2 != nil ? stringOptional2! : stringOptional!) //unsafe if both are nil
//: Optional chaining
//: 1. Consider the following `struct`. Use optional chaining to change the value of `anOptionalInt` in `instance` to a new value of your choice in a single line of code. What would happen if we executed that line while `instance` is `nil`?
//: 1. Use the `if let` conditional and optional chaining to print the value of `anOptionalInt` in `instance`. What would happen if `instance` or `anOptionalInt` were `nil`?
//: 1. Use optional chaining to call the method `sayHelloWorld` of `instance`. What would happen if `instance` were `nil`?

struct MyStruct {
    var anOptionalInt: Int? = 5
    
    func sayHelloWorld() {
        print("Hello, World! Optional func.")
    }
}

var instance: MyStruct? = MyStruct()

// 5.1
instance?.anOptionalInt = 6

var nilInstance: MyStruct? = nil
nilInstance?.anOptionalInt = 8
// Antwort: Ausführung wird wegen "?" abgebrochen, da Instanz nicht initialisiert
// Der Wert wird dadurch nicht gesetzt.
// Wenn ich force verwenden würde "!", würde das Programm abstürzen

// 5.2
if let value = instance?.anOptionalInt {
    print(value)
}
// Test with nil instance - nothing happens
if let value = nilInstance?.anOptionalInt {
    print(value)
} /*else {
    print("Something in the chain is nil")
}*/
// Test with int is nil - nothing happens
instance?.anOptionalInt = nil
if let value = nilInstance?.anOptionalInt {
    print(value)
} /*else {
    print("Something in the chain is nil")
}*/

// 5.3
instance?.sayHelloWorld()
nilInstance?.sayHelloWorld()
// Antwort: Wird ausgeführt, wenn Instanz initialisiert ist
// Ansonsten wird nichts gemacht (siehe 5.1)
//: ### Control flow
//: 1. Write a `for-in` loop that sums up all the values in `myNumbers`.
//: 1. Create an empty mutable `[Int: Int]` dictionary. Use a `for-in` loop to iterate over the elements in `myNumbers` and add each value to the dictionary, using the index of each element in `myNumbers` as its key. So for example, the dictionary should contain the key/value pair `0:12`, because 12 is element 0 of `myNumbers`.

let myNumbers = [12, 23, 1, 104]

//6.1
var result = 0

for i in myNumbers {
    result += i
}
print("Result: \(result)")

// 6.2
var mutableDict: [Int:Int] = [:]

for (index, value) in myNumbers.enumerated() {
    mutableDict[index] = value
}

// alternative
var mutableDict2: [Int:Int] = [:]
for index in 0..<myNumbers.count {
    mutableDict2[index] = myNumbers[index]
}

//: ### Functions and Closures
//: Functions
//: 1. Declare and call a function without any parameters or return type that prints Hello World.
//: 1. Declare and call a function that takes two strings as parameters and returns a string. Remember that in Swift, most funtions have argument labels. Make sure to include them, you don't need to modify the argument labels in any way.
//: 1. Declare and call a function with the same signature (two strings as parameters and returns a string), but this time remove the first argument label.
//: 1. Declare and call a function with the same signature (two strings as parameters and returns a string), but this time make the first argument label **different** from the parameter name (=use a custom argument label).
//: 1. Declare a function with a default parameter value. Call the function twice, once with the argument present, once without.
//: 1. Declare a function with name `callAFunction` that takes another function as parameter and then executes it. Call your newly declared `callAFunction` and pass in one of the functions you previously declared.
// 7.1
func printHelloWorld() {
    print("Hello World Function!")
}
printHelloWorld()

// 7.2
func unionStrings(string1: String, string2: String) -> String {
    return "\(string1) \(string2)"
}
print(unionStrings(string1: "Hello", string2: "World!"))

/*
// without labels
func unionStringsWithOptionalLabels(_ string1: String, _ string2: String) -> String {
    return "\(string1) \(string2)"
}
print(unionStringsWithOptionalLabels("Hello", "World"))
 */

// 7.3
func unionStrings(_ string1: String, string2: String) -> String {
    return "\(string1) \(string2)"
}
print(unionStrings("Hello", string2: "World"))

// 7.4
func unionStrings(first string1: String, string2: String) -> String {
    return "\(string1) \(string2)"
}
print(unionStrings(first: "Hello", string2: "World"))

// 7.5
func greetDefault(myGreeting: String = "Seavas") {
    print(myGreeting)
}
greetDefault()
greetDefault(myGreeting: "Hallo")

// 7.6
func callAFunction(operation:(String, String) -> String) {
    let result = operation("Hello", "HCW!")
    print(result)
}
callAFunction(operation: unionStrings(string1:string2:))
//: Closures
//: 1. Create an optional variable that holds a closure (with a `String` parameter and no return type) and assign `nil`.
//: 1. Call the closure using optional chaining. What will happen?
//: 1. Create a `typealias` for this type of closure.

//: 1. Take a look at the following function, which takes a closure as parameter and calls it. This function is then called. For each of the following exercises, call the function again, but each time use one more simplification:
//:   * Omit closure parameter types.
//:   * Omit the closure return type
//:   * Omit the round brackets and argument label (we can do that since it's the last function parameter)
//:   * Omit the closure parameters completely. In the closure body, use the shorthand argument names (for example `$0`)
//:   * Omit the keyword `return`

func callAClosure(closure: (String, String) -> String) {
    print(closure("Hello", "World"))
}
callAClosure(closure: { (item1: String, item2: String) -> String in
    return "\(item1) \(item2)"
})


//: ### Classes
//: 1. Create a new class named `Person`. Add non-optional `firstName` and `lastName` properties and an initializer.
//: 1. Add a `name` computed property that returns a `String` containing the first and last name.
//: 1. Add a method named `greet` that returns the following `String`: `"Hi, I'm \(name)."`
//: 1. Create a subclass of `Person` and name it `Student`.
//: 1. Add a `Float?` optional property called `grade`. Use the `didSet` property observer to make sure that the grade is not lower than 1.0 and not higher than 5.0 after it was set. Clamp the new value to this interval - so if a value higher than 5.0 is set, set it to 5.0 afterwards. If a value lower than 1.0 is set, set it to 1.0 afterwards.
//: 1. Override the `greet` function from the superclass. If the `grade` property is set, it should now return `"Hi, I'm \(name). My grade is: \(grade)"`. If the `grade property isn't set, return the superclass's implementation.

//: ### Enums and Structs
//: 1. Create an enum named `PetType` with cases `dog` and `cat`
//: 1. In your new enum, create a function or computed property named `animalSound` that returns a `String`. Use a `switch` statement on `self` to differentiate between the cases and return `"woof"` for the `.dog` case and `"meow"` for the `.cat` case.
//: 1. Create a structure named `Pet`, with a `name` property of type `String` and a `type` constant of type `PetType` (both non-optional).
//: 1. Add a function to your structure named `makeNoise` that returns a `String`. In its implementation, return the `animalSound` of its `type`.
//: 1. Create 3 or more instances of your `Pet` struct and store them in `let` constants. Then create a new array that contains all your pets and store it in a variable.
//: 1. Change one of the names of the pets in your array. Does this change the name of any of the pets stored in the `let` constants? Explain why/why not.
//: 1. Can you change the name of one of the pets stored in the `let` constants? Explain why/why not.
//: 1. Create 3 or more instances of your `Student` class from above and store them in `let` constants. Then create a new array that contains all your students and store it in a variable.
//: 1. Change one of the names of the students in your array. Does this change the name of any of the students stored in the `let` constants? Explain why/why not.
//: 1. Can you change the name of one of the students stored in the `let` constants? Explain why/why not.

//: ### Protocols and extensions
//: 1. Create a protocol called `NamedThing`. Add a `get` variable of type `String`, with the name `name`.
//: 1. Use extensions to make your `Person` class and `Pet` structs from above conform to the new protocol.
//: 1. Create a new array that contains all the objects you declared as `let` constants above. You may have to explicitly specify the type of the array as `[NamedThing]`.
//: 1. Iterate over the objects in the array and print out their names.
//: 1. Create a protocol extension for `NamedThing` that contains a new computed property of type `String` called `initial`. Add a default implementation in your protocol extension, which returns the first character of the `name` property, or, if `name` is empty, an empty string.
//: 1. Print the new `initials` property in the loop you created above.
