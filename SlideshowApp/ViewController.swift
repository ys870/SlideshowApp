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
    
    //　画像番号の初期値
    //　0でないのは、アプリ起動直後に戻るボタンを押した時、配列の最後にある画像を表示するため
    var imageNumber = -1
    
    //　画像表示用の関数
    func showImage() {
        
        //　画像ファイルの配列
        let imageArray = ["0_aosagi", "1_hasibosogarasu", "2_kawasemi", "3_kogera", "4_yurikamome"]
        
        /*
        画像ファイル名と鳥の名前、特徴についての説明
        　0_aosagi　アオサギ　川の中にいる、首の長細い鳥
        　1_hasibosogarasu　ハシボソガラス　ミカンをつついている、くちばしの細いカラス
        　2_kawasemi　カワセミ　水辺で羽づくろいをしている、青い小さな鳥
        　3_kogera　コゲラ　森の中にいる、小さなキツツキ
        　4_yurikamome　ユリカモメ　水辺でたそがれている白い鳥
        */
        
        //　画像番号が0ならアオサギを表示
        if imageNumber == 0 {
            imageNumber = 0
            
        //　画像番号が-2ならユリカモメを表示
        //　アプリ起動直後に戻るボタンを押した時、最後の画像（ユリカモメ）を表示するため
        } else if imageNumber == -2 {
            imageNumber = 4
        
        //　画像番号が0より小さくなったら、最後の画像（ユリカモメ）を表示
        } else if imageNumber < 0 {
            imageNumber = 4
        
        //　画像番号が0より大きくなったら、最初の画像（アオサギ）を表示
        } else if imageNumber > 4 {
            imageNumber = 0
        }
        
        //　配列の要素を取り出す
        let number = imageArray[imageNumber]
        //　配列の要素を取り出してnumberに代入
        let image = UIImage(named: number)
        
        //　画像を表示するプロパティ
        imageView.image = image
    }
    
    @IBAction func prevImage(_ sender: Any) {
    
        //　戻るボタンを押すと、画像番号がマイナス1される
        imageNumber -= 1
        //　画像表示用の関数を呼び出す
        showImage()
    }
    
    @IBAction func nextImage(_ sender: Any) {
        
        //　進むボタンを押すと、画像番号がプラス1される
        imageNumber += 1
        //　画像表示用の関数を呼び出す
        showImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

