//
//  ViewController.swift
//  ViewsOutletsActions
//
//  Created by Raphael Augusto Gonzaga on 20/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    //button collections
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func runSomenthing(_ sender: UIButton) {
        print("runSomenthing")
    }
    
    @IBAction func change(_ sender: Any) {
        print("Change")
    }
    
}
