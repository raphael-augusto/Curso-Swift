//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Raphael Augusto Gonzaga on 16/05/22.
//

import UIKit

class QuizViewController: UIViewController {

    
    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var btAnswers: [UIButton]!
    
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear) {
            self.viTimer.frame.size.width = 0
        } completion: { success in
            self.showResults()
        }
        
        getNewQuiz()

    }

    func getNewQuiz(){
        quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question
        
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            let button = btAnswers[i]
            
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults(){
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    
    //passar informação para outra tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        
        resultViewController.totalAnwers = quizManager.totalAnswers
        resultViewController.totalCorrectAnswers = quizManager.totalAnswers
    }
    
    
    @IBAction func selectAnswers(_ sender: UIButton) {
        let index = btAnswers.firstIndex(of: sender)!
        quizManager.validateAnswers(index: index)
        
        getNewQuiz()
    }
    
}
