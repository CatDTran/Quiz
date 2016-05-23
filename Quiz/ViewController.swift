//
//  ViewController.swift
//  Quiz
//
//  Created by Ca Rot on 5/16/16.
//  Copyright © 2016 Cinamon_roll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!    //@IOOutlet keyword let Xcode know this will connect to label objects using Interface Builder
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["From what is conag made?", "What is 7+7?", "What is capital of Vermont?"]
    let answers: [String] = ["Grape", "14", "Montpelier"]
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    //@IBAction keyword let Xcode know this will connect to label objects using Interface Builder
    @IBAction func showNextQuestion(sender: AnyObject)
    {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count
        {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject)
    {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

