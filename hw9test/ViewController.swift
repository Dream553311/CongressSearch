//
//  ViewController.swift
//  hw9test
//
//  Created by Jiayu Li on 18/11/2016.
//  Copyright © 2016 Jiayu Li. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift//change

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

class ContainerViewController: SlideMenuController {
    
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Left") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }
    
}

