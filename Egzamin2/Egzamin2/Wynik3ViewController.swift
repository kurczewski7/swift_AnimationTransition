//
//  Wynik3ViewController.swift
//  Egzamin2
//
//  Created by Slawek Kurczewski on 01.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

class Wynik3ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let currentIndex = 2
        titleLabel.text=testList[currentIndex].0
        image.image = UIImage(named: testList[currentIndex].1)
        
        button1.setTitle(testList[currentIndex].2, for: .normal)
        button2.setTitle(testList[currentIndex].3, for: .normal)
        button3.setTitle(testList[currentIndex].4, for: .normal)
        
        markButtons(currentIndex)

        // Do any additional setup after loading the view.
    }

    func markButtons(_ currentIndex: Int)
    {
        let okWybor=testList[currentIndex].5
        
        if(okWybor != testList[currentIndex].6){
            switch testList[currentIndex].6 {
            case 1: button1.backgroundColor=UIColor.red
            case 2: button2.backgroundColor=UIColor.red
            case 3: button3.backgroundColor=UIColor.red
            default: break
            }
        }
        
        switch okWybor {
        case 1: button1.backgroundColor=UIColor.green
        case 2: button2.backgroundColor=UIColor.green
        case 3: button3.backgroundColor=UIColor.green
        default: break
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
