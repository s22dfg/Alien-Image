//
//  ViewController.swift
//  Alien Image
//
//  Created by D7703_19 on 2018. 4. 4..
//  Copyright © 2018년 D7703_19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var count: UILabel!
    
    var index = 1
    var direction = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 첫번째 이미지 보이기
        myImageView.image = UIImage(named: "frame1.png")
        count.text = String(1)
    }

    @IBAction func update(_ sender: Any) {
        
        if index == 5 {
            direction = false
        } else if index == 1 {
            direction = true
        }
        
        if direction == true {
            index += 1
        } else if direction == false {
            index = index - 1
        }
        
        myImageView.image = UIImage(named:"frame\(index).png")
        count.text = String(index)
    }
}

