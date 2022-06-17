//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Raphael Augusto Gonzaga on 24/05/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor(_ sender: UIButton)  {
        if let reference = self  as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            
            //modal
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = reference
            
            present(colorPicker, animated: true, completion: nil)
        }   
    }
}
