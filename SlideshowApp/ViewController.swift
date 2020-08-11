//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Yoko Sato on 2020/08/11.
//  Copyright © 2020 yoko.sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func prevImage(_ sender: Any) {
        
        imageNumber -= 1
        showImage()
    }
    
    
    @IBAction func nextImage(_ sender: Any) {
        imageNumber += 1
        showImage()
    }
    
    var imageNumber = 0
    
    func showImage() {
        
        let imageArray = ["aosagi", "hasibosogarasu", "kawasemi", "kogera", "yurikamome"]
        
        if imageNumber < 0 {
            imageNumber = 4
        }
        
        if imageNumber > 4 {
            imageNumber = 0
        }

        
        let name = imageArray[imageNumber]
        let image = UIImage(named: name)
        
        imageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

