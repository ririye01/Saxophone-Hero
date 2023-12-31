import UIKit
import SpriteKit

class Level1ViewController: UIViewController {

    let gameManager = GameManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the view
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true

        let level = gameManager.levels[gameManager.currentLevel]
        let scene = GameScene(size: skView.bounds.size, tempo: gameManager.difficulties[gameManager.currentDifficulty], notesArray: level.notesArray, noteLengths: level.noteLengths)

        scene.scaleMode = .aspectFill

        // Present the scene
        skView.presentScene(scene)

        // Handle user input (for example, tap gestures to move the player up and down)
        //let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        //skView.addGestureRecognizer(tapGesture)
    }
    /*
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
            if let gameScene = (view as? SKView)?.scene as? GameScene {
                let tapLocation = gesture.location(in: view)
                gameScene.handleInput(yCoordinate: tapLocation.y)
            }
    }*/

    // ... (any additional code you may need)
}
