//
//  ViewController.swift
//  caraOuCoroa
//
//  Created by diego.rios on 11/02/19.
//  Copyright © 2019 diego.rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        upSwipe.direction = .up
        
        
        view.addGestureRecognizer(upSwipe)
    }

    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        if sender.state == .ended {
            switch sender.direction {
                case .up:
                    if random() {
                        label.text = "Cara"
                    }else{
                        label.text = "Coroa"
                    }
                    break
                default:
                    break
            }
        }
    }
    
    func random() -> Bool {
        let stayOrGo = Bool.random()
        return stayOrGo
    }

}

