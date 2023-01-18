    //  RaceMiniGame
    //  Created by Just Sasha on 15.12.2022

import UIKit
class mainScreenVC: UIViewController {
        
        // MARK: - Variables
    var finalResultLabel = ""
    var finalResultImage = #imageLiteral(resourceName: "racePreviewImageSecond")
    var audioModel = AudioModel()
    var participantFirst = ParticipantFirst(name: "Matthew", age: 22, vechile: "Formula 1", carPaintWork: "RedSky", points: 0)
    var participantSecond = ParticipantSecond(name: "Alex", age: 25, vechile: "Ferrari", carSolidColor: "Blue", points: 0)
    
        // MARK: - IBOutlets
    @IBOutlet weak var player1Image: UIImageView!
    @IBOutlet weak var player2Image: UIImageView!
    
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    
    @IBOutlet weak var player1InfoButton: UIButton!
    @IBOutlet weak var player2InfoButton: UIButton!

    
        // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        audioModel.playWelcomeSound()

    }
    
        // MARK: - IBActions
    @IBAction func getPlayer1Information(_ sender: UIButton) {
        audioModel.playGetInformationTappedSound()
        print("Name: \(participantFirst.name) | Age: \(participantFirst.age) | Vechile: \(participantFirst.vechile) | Paint work: \(participantFirst.carPaintWork)")
        participantFirst.useDriftMode()
    }
    
    @IBAction func getPlayer2Information(_ sender: UIButton) {
        audioModel.playGetInformationTappedSound()
        print("Name: \(participantSecond.name) | Age: \(participantSecond.age) | Vechile: \(participantSecond.vechile) | CarSolidColor: \(participantSecond.carSolidColor)")
        participantSecond.useNitroMode()
    }
    
    @IBAction func startRace(_ sender: UIButton) {
        audioModel.playMainButtonTappedSound()
        participantFirst.points = Int.random(in: 0..<20)
        participantSecond.points = Int.random(in: 0..<20)
        print(participantFirst.points)
        print(participantSecond.points)
        
        if (participantFirst.points > participantSecond.points) {
            finalResultLabel = "Enrico won this game!"
            finalResultImage = #imageLiteral(resourceName: "FirstParticipant")
        } else if (participantFirst.points == participantSecond.points) {
            finalResultLabel = "Draw! Good game!"
            finalResultImage = #imageLiteral(resourceName: "drawImage")
        } else {
            finalResultLabel = "Bob won this game!"
            finalResultImage = #imageLiteral(resourceName: "SecondParticipant")
        }
    }
    
    // MARK: - Prepare Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startRaceTapped" {
            let destinationVC = segue.destination as! resultScreenVC
            destinationVC.resultText = finalResultLabel
            destinationVC.resulImage = finalResultImage
        }
    }
}
