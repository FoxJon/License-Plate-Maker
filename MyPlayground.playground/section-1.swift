// Playground - noun: a place where people can play

import Cocoa

let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

let numbers = ["0","1","2","3","4","5","6","7","8","9"]

var tempArray = alphabet + numbers

tempArray.count


func generateLicensePlates(slots: Int) -> (Int) {
  let numberOfPlates = alphabet.count * alphabet.count * alphabet.count

  
  
  return numberOfPlates
}

func power(#int: Int, #power: Int)->Int {
  var sum = int;
  for i in 1..<power{
    sum = sum * int
  }
  return sum;
}

power(int: 36, power: 1)
