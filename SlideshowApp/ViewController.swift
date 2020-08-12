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
    
    var imageNumber = -1
    
    @IBAction func prevImage(_ sender: Any) {
        
        imageNumber -= 1
        showImage()
    }
    
    
    @IBAction func nextImage(_ sender: Any) {
        imageNumber += 1
        showImage()
    }

    func showImage() {
        
        let imageArray = ["0_aosagi", "1_hasibosogarasu", "2_kawasemi", "3_kogera", "4_yurikamome"]
        
        if imageNumber == 0 {
            imageNumber = 0
    
        } else if imageNumber == -2 {
            imageNumber = 4
            
        } else if imageNumber < 0 {
            imageNumber = 4
            
        } else if imageNumber > 4 {
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

