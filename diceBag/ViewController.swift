import UIKit

class ViewController: UIViewController {
    
    let diceList = ["DiceZero", "DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix", "DiceSeven", "DiceEight", "DiceNine", "DiceTen", "DiceTwenty", "DiceThirty", "DiceFourty", "DiceFifty", "DiceSixty", "DiceSeventy", "DiceEighty", "DiceNinety", "DiceHundred"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func diceChoice(lower: Int, upper: Int) -> Int {
        return Int.random(in: lower...upper)
    }
    
    @IBAction func D100ButtonPressed(_ sender: UIButton) {
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1
        diceImageView1.image = UIImage(imageLiteralResourceName: "\(diceList[diceChoice(lower: 10, upper: 19)]).png")
        diceImageView2.image = UIImage(imageLiteralResourceName: "\(diceList[diceChoice(lower: 0, upper: 9)]).png")
    }
}

