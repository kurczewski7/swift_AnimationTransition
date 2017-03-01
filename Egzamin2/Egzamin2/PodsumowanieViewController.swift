//
//  PodsumowanieViewController.swift
//  Egzamin2
//
//  Created by Slawek Kurczewski on 01.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

class PodsumowanieViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var procentPoprawnych: UILabel!
    @IBOutlet weak var wynikTestu1: UILabel!
    @IBOutlet weak var wynikTestu2: UILabel!
    @IBOutlet weak var wynikTestu3: UILabel!
    
    var procent: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        



        
        //var procent =  100 * div(Int32(iloscPoprawnych), Int32(testList.count))
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let textNotOK=": źle"
        let textOK=": dobrze"
        
        print("Rozmiar: \(testList.count)")
        var iloscPoprawnych:Int=0
        
        wynikTestu1.textColor=UIColor.red
        wynikTestu2.textColor=UIColor.red
        wynikTestu3.textColor=UIColor.red
        
        wynikTestu1.text="Test 1"+textNotOK
        wynikTestu2.text="Test 2"+textNotOK
        wynikTestu3.text="Test 3"+textNotOK
        
        for i in 0 ..< testList.count
        {
            print("   i= \(i)")
            
            if(testList[i].5 == testList[i].6){
                iloscPoprawnych+=1
                print("iloscPoprawnych: \(iloscPoprawnych)")
                
                switch i {
                    case 0: wynikTestu1.textColor=UIColor.green; wynikTestu1.text="Test 1"+textOK
                    case 1: wynikTestu2.textColor=UIColor.green; wynikTestu2.text="Test 2"+textOK
                    case 2: wynikTestu3.textColor=UIColor.green; wynikTestu3.text="Test 3"+textOK
                default:  break
                }
            }
        }
        //iloscPoprawnych=1
        procent = 100
        procent.multiply(by: Double(iloscPoprawnych))
        procent.divide(by: Double(testList.count))
        procent.round()
        
        procentPoprawnych.text=String(procent)
        progressBar.setProgress(Float(procent/100), animated: false)
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
