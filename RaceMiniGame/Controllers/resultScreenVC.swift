    //  RaceMiniGame
    //  Created by Just Sasha on 16.12.2022.
import UIKit
class resultScreenVC: UIViewController {
    // MARK: - Variables
    var audioModel = AudioModel()
    var resultText = ""
    var resulImage = #imageLiteral(resourceName: "drawImage")
    
    // MARK: - IBOutlet
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var winnerImage: UIImageView!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultText
        winnerImage.image = resulImage
    }
    // MARK: - IBAction
    @IBAction func playAgainTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        audioModel.playMainButtonTappedSound()
    }
}
