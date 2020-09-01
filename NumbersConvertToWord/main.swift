//
//  main.swift
//  NumersConvertToWord
//
//  Created by Karthick Nachimuthu on 01/09/20.
//  Copyright © 2020 Karthick. All rights reserved.
//

import Foundation

// Ones and tens and static string

let ones: [String] = [ "", "one ", "two ", "three ", "four ",
                       "five ", "six ", "seven ", "eight ",
                       "nine ", "ten ", "eleven ", "twelve ",
                       "thirteen ", "fourteen ", "fifteen ",
                       "sixteen ", "seventeen ", "eighteen ",
                       "nineteen "]
let tens: [String] = ["", "", "twenty ", "thirty ", "forty ",
                      "fifty ", "sixty ", "seventy ", "eighty ",
                      "ninety "]
let crore = "crore "
let lakh = "lakh "
let thousand = "thousand "
let hundred = "hundred "

print("Please enter the number to convert the corresponding word")

let enterNumber = readLine()

private func numbersToWord(num: Int, word: String) -> String {
    var wordConversion: String = ""
    if num > 19 {
        wordConversion += tens[num / 10] + ones[num % 10]
    } else {
        wordConversion += ones[num]
    }
    if num != 0 {
        wordConversion += word
    }
    return wordConversion
}

private func convertToWord(num: Int) -> String {
    var word: String = ""
    word += numbersToWord(num: (num / 10000000), word: crore)
    word += numbersToWord(num: ((num / 100000) % 100), word: lakh)
    word += numbersToWord(num: ((num / 1000) % 100), word: thousand)
    word += numbersToWord(num: ((num / 100) % 10), word: hundred)
    word += numbersToWord(num: (num % 100), word: "")
    return word
}

if let enteredNumber = Int(enterNumber ?? ""), enteredNumber > 0 {
    let numberToWord = convertToWord(num: enteredNumber)
    print("\(numberToWord.firstCapitalized)")
} else {
    print("Please enter the valid number")
}


