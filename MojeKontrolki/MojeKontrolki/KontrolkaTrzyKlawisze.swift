//
//  KontrolkaTrzyKlawisze.swift
//  MojeKontrolki
//
//  Created by Slawek Kurczewski on 28.02.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

class KontrolkaTrzyKlawisze: UIView {
    
    let colorWithTitles: [(UIColor, String)] = [(UIColor.red, "Czerwony"),
            (UIColor.green, "Zielony"), (UIColor.gray, "Niebieski")]
 
    required init?(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)
        addButtions()
    }
    
    func addButtions() {
     
        let size=100
        let margin = 10
        for i in 0..<colorWithTitles.count
        {
            let hOffset=i * (size+margin)
            let colorButton=UIButton(frame: CGRect(x: hOffset, y:0, width: size, height:size))
            configureButton(button:colorButton, i)
            addSubview(colorButton)
        }
    }
    func configureButton(button : UIButton, _ index:Int)
    {
        button.backgroundColor=colorWithTitles[index].0
        button.setTitle(colorWithTitles[index].1, for: .normal)
        button.addTarget(self, action: #selector(KontrolkaTrzyKlawisze.displayColor), for: .touchUpInside)
    }
    
    func displayColor(sender: UIButton){
        let title="Videopoint"
        let message=sender.currentTitle!
        let alertController=UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "OK",style: .cancel))
        self.window?.rootViewController?.show(alertController, sender: self)
    }
    
    
    
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
