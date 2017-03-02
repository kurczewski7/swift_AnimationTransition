//
//  ViewController.swift
//  AnimacjaPrzejsc
//
//  Created by Slawek Kurczewski on 02.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let transition=MyAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToViewController(sender: UIStoryboardSegue){
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dstViewControler = segue.destination as UIViewController
        dstViewControler.transitioningDelegate=transition
        
    }


}

