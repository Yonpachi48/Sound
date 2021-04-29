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
    
    //ピアノのサウンドファイルを読み込んで、プレイヤーを作る
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ギターのサウンドファイルを読み込んで、プレイヤーを作る
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton: UIButton!
    
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //ドラムがタップされた時に呼ばれる
    @IBAction func touchDownDrumButton() {
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    //ドラムボタンの上でタッチが終わるときに呼ばれる
    @IBAction func touchUpDrumButton() {
        //ドラムが鳴っていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

    //ピアノがタップされた時に呼ばれる
    @IBAction func touchDownpianoBotton() {
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        //ピアノの音を巻き戻す(再生位置を0にする)
        pianoSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        pianoSoundPlayer.play()
    }
    
    //ピアノボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpPianoBotton(){
        //ピアノが鳴っていない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    //ギターがタップされた時に呼ばれる
    @IBAction func touchDwonguitarButton() {
        //ギターが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        //ギターの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
        
        //ギターの音を再生する
        guitarSoundPlayer.play()
    }
    
    //ギターボタンの上でタッチが終わる時呼ばれる
    @IBAction func touchUpguitarButton() {
        //ギターが鳴っていない時の画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}

