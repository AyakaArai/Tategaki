//
//  ViewController.swift
//  Tategaki
//
//  Created by Shiromu on 2018/12/01.
//  Copyright © 2018 Shiromu. All rights reserved.
//

import UIKit
import TTTAttributedLabel

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ここでラベル宣言 場所・サイズも指定している
        let myLabel: TTTAttributedLabel = TTTAttributedLabel(frame: CGRect(x: 0, y: 80, width: 320, height: 320))
        myLabel.backgroundColor = UIColor.white
        view.addSubview(myLabel)
        
        //基本的なラベルの設定
        myLabel.textColor = UIColor.black               //黒色
        myLabel.numberOfLines = 0
        myLabel.font = UIFont.systemFont(ofSize: 20)    //フォントサイズ
        myLabel.verticalAlignment = .top
        
        let angle = (Double.pi)/2   //ラベルを90度回転
        
        myLabel.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        
        
        //ここをString型変数にしておくと表示する文章が変更できる
        let text = "国境の長いトンネルを抜けると雪国であった。夜の底が白くなった。信号所に汽車が止まった。\n向側の座席から娘が立って来て、島村の前のガラス窓を落した。雪の冷気が流れこんだ。娘は窓いっぱいに乗り出して、遠くへ叫ぶように、\n「駅長さあん、駅長さあん。」\n明りをさげてゆっくり雪を踏んで来た男は、襟巻で鼻の上まで包み、耳に帽子の毛皮を垂れていた。"
        
        // ここでsettext(文字の表示)をしている 内容はすこし複雑なので割愛
        myLabel.setText(text) { (mutableAttributedString) -> NSMutableAttributedString? in
            
            mutableAttributedString!.addAttribute(NSAttributedString.Key(rawValue: kCTVerticalFormsAttributeName as String as String), value: true, range: NSMakeRange(0,mutableAttributedString!.length))
            return mutableAttributedString
        // Do any additional setup after loading the view, typically from a nib.
        }
    }
}

