import UIKit
class imageBackgroundDesign: UIImageView {
    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowOpacity = 0.5
    }
}
