//
//  DrugiViewController.swift
//  AnimacjaPrzejsc
//
//  Created by Slawek Kurczewski on 02.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

class DrugiViewController: UIViewController {
    
    let transition=MyAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction  func rewindBeck(sender: UIStoryboardSegue)  {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dstViewControler = segue.destination as UIViewController
        dstViewControler.transitioningDelegate=transition
        
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
