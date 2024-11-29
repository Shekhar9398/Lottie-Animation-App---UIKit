

import UIKit
import Lottie

class ViewController: UIViewController {
    //Define Lottie Animation View
    var animationView : LottieAnimationView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Display
        
        //Cat animation View
        playAnimation(animationName: "CatFly", Distance: CGRect(x: 50, y: 100, width: 280, height: 280))
        //OnePiece animation View
        
        playAnimation(animationName: "OnePiece", Distance: CGRect(x: 50, y: 400, width: 280, height: 280))
    }

    //setup the animationView
    func playAnimation(animationName : String, Distance : CGRect){
        animationView = LottieAnimationView(name: animationName)
        
        animationView?.frame = Distance
        animationView?.loopMode = .loop
        animationView?.contentMode = .scaleAspectFit
        
        animationView?.play()
        
        //Add Subview to the View
        if let animationView = animationView {
            self.view.addSubview(animationView)
        }
        
    }
    
}

