//
//  ViewController.swift
//  TextField
//
//  Created by Raphael Augusto Gonzaga on 24/05/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfEmail.delegate = self
        tfPassword.delegate = self
    }

    // CASO TOQUE EM QUALQUER LUGAR DA VIEW, RETIRA O FOCO.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        } else if textField == tfEmail{
            print("Enviado dados ao servidor.")
            textField.resignFirstResponder() // retirar o foco
//            view.endEditing(true) // retirar o foco
            
        }
        
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }

}

