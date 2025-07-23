// hello world
print("Hello, World!")

// variable with var, and constant with let
// var can reassign, but let can't
var myVariable = 42
myVariable = 50
let myConstant = 42

// display something with print
print(myVariable, myConstant)

// type in swift is necessary, either implicit (type will be follow the value)
// or explicit (we type after variable with colon [:])
let implicitInteger = 10
let implicitDouble = 70.0
let explicitDouble: Double = 70.0
let explicitFloat: Float = 4

print(implicitInteger, implicitDouble, explicitDouble, explicitFloat)

// but value never implicit converted to other, we must converted manuallay
let label = "The width is "
let width = 30
let widthLabel = label + String(width)

print(widthLabel)

// more simple without convert manual, use escape with parenticies inside of string
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

print(appleSummary, fruitSummary)

// 3 double quotes, make we can write multiple line of string
// and ignore whitespace in left, but still care with line break
let quotation = """
    Even though there's whitespace to the left,
    the actual lines aren't indented.
        Except for this line.
    Double quotes (") can appear without being escaped.

    I still have \(apples + oranges) pieces of fruit.
    """

print(quotation);

// we create an array using bracked
// and access with bracket following by index
var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

// in data structure we call it hashmap, contain key and value
// in swift we callit dictonary
var occupations = [
    "Malcolm": "Captaion",
    "Kaylee": "Mehcanic"
]
occupations["Jane"] = "Public Relations"

// array can grow, will be safe in heap area
// simply with call the append method
fruits.append("blueberries")

print(fruits)
print(occupations)

// if declare empty array or dict, must be specify the type
let emptyArrayOfFruits: [String] = []
let emptyDictonaryOfOccupations: [String: Int] = [:]

// control flow
// conditionals [if, switch]
// loops [for-in, while, repeat-while]
let indivitualScores: [Int] = [72, 43, 103, 87, 12]
var teamScore = 0
for score in indivitualScores {
    if score > 70 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

// if and switch expressions
// value dari kondisi if, langsung di simpen di variable
// jika multiline, maka harus pakai keyword 'return',
// jika hanya 1 line, maka otomatis return
let scoreDecoreation = if teamScore > 10 {
    "🎉"
} else {
    ""
}

print("Score: ", teamScore, scoreDecoreation)

// optional condition
var optionalString: String? = "Jokow"
print(optionalString == nil)

// experiment: change to nil
var optionalName: String? = "Gib"
var greeting = "Halooo!"
if let name = optionalName {
    greeting = "\(greeting) \(name)"
}

print(greeting)

// using ?? to set default value, when nil
let nickName: String? = nil
let fullName: String = "Pakde Jo"
let informalGreeting: String = "Hi, \(nickName ?? fullName)"

print(informalGreeting)

// switch support any kind data
// don't need explicitly 'brak', by default does't contiue to next case
let vegetable: String = "red pepper"
switch vegetable {
case "celery":
    print("Celery")
case "cucumber", "watercress":
    print("Cucumber, watercress")
case let x where x.hasSuffix("pepper"):
    print("Pakai varibale x nih")
default:
    print("Udah default aja!")
}

// for-in use for dictonary (unorderd collection), base on arbitary order
// in [for (_, _)] can use _ underscore to ignore (unused) the value 
// cause when the variable declare, is must be used
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest: Int = 0
var kind: String = ""
for (name, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kind = name
        }
    }
}

print("largest number: \(largest) with kind: \(kind)")

// while - repeat block until condition changes, like something unpredictable loop (from db)
var n = 2
while n < 100 {
    n *= 2
}
print(n)

// repat is like, do while
// with min loop once, in any condition
var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// range: use three dots [...], or 2 dots with lt [..<]
var i: Int = 0
var total = 0
for x in 0..<4 {
    i += 1
    total += x
}
print(i, total)
