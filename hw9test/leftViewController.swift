//
//  leftViewController.swift
//  hw9test
//
//  Created by Jiayu Li on 23/11/2016.
//  Copyright © 2016 Jiayu Li. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class leftViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let data:[String] = ["Legislators","Bills","Committee","Favorite","About"]
    var mainViewController: UIViewController!
    var BillViewController: UIViewController!
    var ComViewController: UIViewController!
    var FavViewController: UIViewController!
    var AboutViewController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        mainViewController = storyboard.instantiateViewController(withIdentifier: "mainViewController") as! mainViewController
//        self.mainViewController = UINavigationController(rootViewController: mainViewController)

        
        BillViewController = storyboard.instantiateViewController(withIdentifier: "BillViewController") as! BillViewController
//        self.BillViewController = UINavigationController(rootViewController: BillViewController)
        
        ComViewController = storyboard.instantiateViewController(withIdentifier: "ComViewController") as! ComViewController
//        self.ComViewController = UINavigationController(rootViewController: ComViewController)
        
        FavViewController = storyboard.instantiateViewController(withIdentifier: "FavViewController") as! FavViewController
//        self.FavViewController = UINavigationController(rootViewController: FavViewController)
        
        AboutViewController = storyboard.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
//        self.AboutViewController = UINavigationController(rootViewController: AboutViewController)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            self.slideMenuController()?.changeMainViewController(self.mainViewController, close: true)
        }
        else if indexPath.row == 1 {
            self.slideMenuController()?.changeMainViewController(self.BillViewController, close: true)
        }
        else if indexPath.row == 2 {
            self.slideMenuController()?.changeMainViewController(self.ComViewController, close: true)
        }
        else if indexPath.row == 3 {
            self.slideMenuController()?.changeMainViewController(self.FavViewController, close: true)
        }
        else if indexPath.row == 4 {
            self.slideMenuController()?.changeMainViewController(self.AboutViewController, close: true)
        }
    }


}
