//
//  ViewController.swift
//  Navegacao
//
//  Created by Raphael Augusto Gonzaga on 19/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    Função para apertar qualquer parte da tela para navegar para outra tela
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        performSegue(withIdentifier: "segue", sender: nil)
//    }

    @IBAction func showSecondScreen(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    //Action do botão para voltar para primeira tela
    @IBAction func unwindView1(segue: UIStoryboardSegue){
        
    }
    
}

