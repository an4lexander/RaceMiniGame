import UIKit
class mainButtonDesign: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 15
        layer.shadowColor = #colorLiteral(red: 0.7529411765, green: 0.8705882353, blue: 1, alpha: 0.7025976118)
        layer.shadowOpacity = 0.5
    }
}
