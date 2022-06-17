//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Raphael Augusto Gonzaga on 20/05/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        para esconder navigation bar
//        navigationController?.setNavigationBarHidden(false, animated: true)

    }
    
    //MODO DE VOLTAR UTILIZANDO NAVIGATION CONTROLLER
    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    

}
