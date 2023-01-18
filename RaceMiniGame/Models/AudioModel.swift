import Foundation
import AVFoundation

struct AudioModel {
    var player: AVAudioPlayer!
    
    mutating func playWelcomeSound() {
        let url = Bundle.main.url(forResource: "welcomeSound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    mutating func playMainButtonTappedSound() {
        let url = Bundle.main.url(forResource: "mainButtonSound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    mutating func playGetInformationTappedSound() {
        let url = Bundle.main.url(forResource: "getInformationButtonSound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
