import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var numberLabel: UITextField!
  @IBOutlet weak var uniquePlatesLabel: UILabel!
  @IBOutlet weak var plateLabel: UILabel!
  
  let plateMaker = PlateMaker()
  let numberformatter = NSNumberFormatter()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    uniquePlatesLabel.hidden = true
  }

  @IBAction func generatePlateButton(sender: AnyObject) {
    let number: Int? = numberLabel.text.toInt()
    let result = plateMaker.generateNumberOfLicensePlates(slots: number!)
    numberformatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
    let formattedNumber = numberformatter.stringFromNumber(result)
    uniquePlatesLabel.text = "\(formattedNumber!) unique plates!"
    uniquePlatesLabel.hidden = false
    let plateNumber = plateMaker.generatePlate(slots: number!)
    var character = plateNumber[0]
    for i in 1..<number!{
      character += plateNumber[i]
    }
    plateLabel.text = character
    self.view.endEditing(true)
  }

  override func prefersStatusBarHidden() -> Bool { return true }
}

