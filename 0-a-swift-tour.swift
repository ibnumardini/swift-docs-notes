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
let emptyDictonaryOfOccupations: [String: Integer] = [:]
