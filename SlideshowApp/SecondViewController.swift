//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by Yoko Sato on 2020/08/13.
//  Copyright © 2020 yoko.sato. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var zoomImage: UIImageView!
        var selectImage = UIImage()
            
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 選択した画像を表示
        zoomImage.image = selectImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
