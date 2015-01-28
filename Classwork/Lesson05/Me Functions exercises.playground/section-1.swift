// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times
func displayHelloWorld(nrOfPrints:Int) {
    for i in 1...nrOfPrints {
    println("hello world")
    }
}

displayHelloWorld(10)


// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func doAndPrintIterations(nrOfTimes:Int) {
    for i in 1...nrOfTimes {
        println("hit this line \(nrOfTimes) times!")
    }
}

doAndPrintIterations(20)


// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func stringAsParameter(valueOfString:String) {
    println("hello \(valueOfString)")
}

stringAsParameter("ali")



//BUG TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"
func stringOptional(myPossibleString:String?) {
    if let name = myPossibleString {
        println("hello \(myPossibleString!)")
    }
    else {
        println("hello world")
    }
}

//stringOptional("ali")
stringOptional(nil)
//you have to pass a nil for an optional when it's defined as input parameter for a function

// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.
func fib(fibIndex:Int) ->Int {
    var result = 0, thisValue = 0, nextValue = 1
    if fibIndex == 1 {
        return 0
    } else if fibIndex == 2 {
        return 1
    } else {
    
    for i in 1..<fibIndex-1 {
        result = thisValue + nextValue
        thisValue = nextValue
        nextValue = result
    }
    }
    
    return result
}

fib(7)

// 0 1 1 2 3 5 8 13

// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.
func addFibsUpToThisIndex(fibIndex:Int) ->Int {
    var fibSum = 0
    for i in 1...fibIndex {
        fibSum = fibSum + fib(i)
    }
    return fibSum
}

addFibsUpToThisIndex(7)

// 0 1 2 4 7 12 20

// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.



// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).
func billTip (billAmount:Double, tipPercent:Double?) -> (Double, Double) {
    var tipAmount = 0.0,
        totalBillAmount = billAmount
    
    if let actualTip = tipPercent {
        tipAmount = totalBillAmount * actualTip
        totalBillAmount += tipAmount
    }
    
    let billDetails = (totalBillAmount, tipAmount)
    
    return billDetails
}

billTip(10.0, nil)


// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.
//ali -> ila
func reverseString(word:String) ->String {
    var reverseWord = ""
    for character in word {
        reverseWord = String(character) + reverseWord
    }
    
    return reverseWord
}

reverseString("hello")

func reverseStringAndAttach(#word:String) ->String {
    var longString = ""
    longString = word + reverseString(word)
    
    return longString
}

reverseStringAndAttach(word: "hello")

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

func searchString(#inputArray:[String], #searchTerm:String) ->Bool {
    var isThere = false
    for var counter = 0; counter < inputArray.count; counter++ {
        println("\(inputArray[counter])")
        if(inputArray[counter] == searchTerm) {
            println("if")
            isThere = true
        }
    }
    
    return isThere
}

searchString(inputArray: ["ali", "hadi", "wisal"], searchTerm: "ali")


// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

//func palindrome(word:String) ->Bool {

//    var word = "ali"
//    var max = countElements(word)
//    var i = 1
//for charIndex in i...max {
//    if charIndex[i] == charIndex[max] && i <= Int(max/2) {
//        ++charIndex
//    } else {
//        return false
//    }
//}

//}

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.
