import Foundation
protocol PremiumCarMode {
    // Premium car mode allows set uniq car paint works and use X5 nitro
    var carPaintWork: String { get set }
    func useDriftMode()
}
protocol LightCarMode {
    // Light car mode allows set own solid color and use X2 nitro;
    var carSolidColor: String { get set }
    func useNitroMode()
}
struct ParticipantFirst: PremiumCarMode {
    var name: String
    var age: Int
    var vechile: String
    var carPaintWork: String
    var points: Int
    
    func useDriftMode() {
        print("Drift boost X5")
    }
}
struct ParticipantSecond: LightCarMode {
    var name: String
    var age: Int
    var vechile: String
    var carSolidColor: String
    var points: Int
    
    func useNitroMode() {
        print("Nitro boost X2")
    }
}
