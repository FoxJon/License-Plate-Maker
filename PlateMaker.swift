import Foundation

struct PlateMaker {
  let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  
  let numbers = ["0","1","2","3","4","5","6","7","8","9"]
  
  func generateNumberOfLicensePlates(slots: Int) -> Int {
    let totalCharacters = alphabet.count + numbers.count
    return calculatePower(totalCharacters, power: slots)
  }
  
  
  func generatePlate(slots: Int) -> Array<String> {
    var tempArray = alphabet + numbers
    var plateArray:[String] = []
    let sum = tempArray.count
    for _ in 1...slots{
      let random = Int(arc4random_uniform(UInt32(sum)))
      let character = tempArray[random]
      plateArray.append(character)
    }
    return plateArray
  }
  
  
  //MARK - HELPER
  func calculatePower(int: Int, power: Int) -> Int {
    var sum = 0
    sum = int
    for _ in 1..<power{
      sum = sum * int
    }
    return sum;
  }
}




