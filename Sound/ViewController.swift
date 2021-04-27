//
//  ViewController.swift
//  Sound
//
//  Created by Yudai Takahashi on 2021/04/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //ドラムのサウンドファイルを読み込んで、プレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumBtton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //ドラムがタップされた時に呼ばれる
    @IBAction func touchDownDrumButton() {
        
        //ドラムが鳴っている画像に切り替える
        drumBtton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton() {
        drumBtton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

}

