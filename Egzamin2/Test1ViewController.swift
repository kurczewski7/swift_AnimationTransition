//
//  Test1ViewController.swift
//  Egzamin2
//
//  Created by Slawek Kurczewski on 01.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit
//tablica krotek: tytuł, obrazek, petanie1, pytanie2, pytanie3, dobraOdpowiedź, uzyskanaOdpowiedź
var testList: [(String, String, String, String,String, Int, Int)]=[
    ("Jaki to most?", "most", " Most Rędzński "," Most Zwierzyniecki "," Most Grunwaldzki ",3,0),
    ("W pobliżu czego  jest ten most?", "wrynku", " Placu Grunwaldzkiego "," Rynku "," Hali Ludowej ",2,0),
    ("Czy ten most nazywa się", "redzinski", " Most Rędzński "," Most Sikorskiego "," Most Milenijny ",1,0)]



class Test1ViewController: UIViewController {
    let currentIndex:Int = 0

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let currentIndex = 0
        //  testList[0].6=2
        //  testList[1].6=2
        
        titleLabel.text=testList[currentIndex].0
        image.image = UIImage(named: testList[currentIndex].1)
        
        button1.setTitle(testList[currentIndex].2, for: .normal)
        button2.setTitle(testList[currentIndex].3, for: .normal)
        button3.setTitle(testList[currentIndex].4, for: .normal)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        // Dispose of any resources that can be recreated.  
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)         {
        
        if segue.identifier == "segueTest1A"  {    testList[currentIndex].6=1   }
        if segue.identifier == "segueTest1B"  {    testList[currentIndex].6=2   }
        if segue.identifier == "segueTest1C"  {    testList[currentIndex].6=3   }
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
