

// Created on: Nov-2017
// Created by: Ethan Bellem
// Created for: ICS3U
// This program is a SpriteKit template

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import SpriteKit

class splashScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let ship = SKSpriteNode(imageNamed: "IMG_p.PNG" )
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0.15, green:0.15, blue:0.3, alpha: 1.0)
        
        ship.position = CGPoint(x: (250 ), y: 100)
        ship.name = "space ship"
        //self.addChild(ship)
        ship.setScale(0.65)
        
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        let mainMenuScene = menuScene(size: self.size);self.view!.presentScene(mainMenuScene)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
}
class menuScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let ship = SKSpriteNode(imageNamed: "IMG_1979.PNG" )
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 1, green:0.0, blue:0.0, alpha: 1.0)
        
        ship.position = CGPoint(x: (250 ), y: 100)
        ship.name = "space ship"
        //self.addChild(ship)
        ship.setScale(0.65)
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        let mainGameScene = gameScene(size: self.size);self.view!.presentScene(mainGameScene)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
}

class gameScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let ship = SKSpriteNode(imageNamed: "IMG_1979.PNG" )
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0, green:0, blue:0, alpha: 1.0)
        
        ship.position = CGPoint(x: (250 ), y: 100)
        ship.name = "space ship"
        self.addChild(ship)
        ship.setScale(0.65)
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        let mainSplashScene = splashScene(size: self.size);self.view!.presentScene(mainSplashScene)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
}

// this will be commented out when code moved to Xcode

// set the frame to be the size for your iPad
let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height
let frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)

let scene = splashScene(size: frame.size)
scene.scaleMode = SKSceneScaleMode.resizeFill

let skView = SKView(frame: frame)
skView.showsFPS = true
skView.showsNodeCount = true
skView.presentScene(scene)

PlaygroundPage.current.liveView = skView
