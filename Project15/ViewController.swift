//
//  ViewController.swift
//  Project15
//
//  Created by Joao Gabriel Dourado Cervo on 07/03/21.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var currentAnimation = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, options: []) {
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                
            default:
                break
            }
        } completion: { finished in
            sender.isHidden = false
        }

        currentAnimation = (currentAnimation + 1) % 8 // Ao chegar no 8 volta pra 0, pois 7 animações
    }


}

