import SpriteKit

class Sprite: SKSpriteNode {
    init(named: String, x: CGFloat, y: CGFloat) {
        let texture = SKTexture(imageNamed: named)
        super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
        self.position = CGPoint(x: x, y: y)
        self.setScale(2)
        self.name = named
    }

    convenience init(named: String, x: CGFloat, y: CGFloat, scale: CGFloat) {
        self.init(named: named, x: x, y: y)
        self.setScale(scale)
    }

    convenience init(named: String, x: CGFloat, y: CGFloat, size: CGSize) {
        self.init(named: named, x: x, y: y)
        self.size = size
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func addTo(parentNode: SKNode) -> Sprite {
        parentNode.addChild(self)
        return self
    }
}