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
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.textAlignment = .center
        view.addGestureRecognizer(upSwipe)
    }

    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        if sender.state == .ended {
            switch sender.direction {
                case .up:
                    if random() {
                        label.text = "😶"
                    }else{
                        label.text = "👑"
                    }
                    break
                default:
                    break
            }
        }
    }
    
    func random() -> Bool {
        label.text = ""
        sleep(1)
        let stayOrGo = Bool.random()
        return stayOrGo
    }

}

