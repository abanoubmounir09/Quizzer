//
//  ViewController.swift
//  Quizzler-ios11
//
//  Created by pop on 1/1/20.
//  Copyright © 2020 pop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelTXT: UILabel!
    @IBOutlet weak var trueBTN: UIButton!
    @IBOutlet weak var faleBTN: UIButton!
    @IBOutlet weak var progressbar: UIProgressView!
    
    var timer = Timer()
   var quizeBrain = QuizeBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updatequestion()
    }

 
    @IBAction func answerbtnclicked(_ sender: UIButton) {
        let useranswer = sender.currentTitle!
        let UserGotRight = quizeBrain.CheckAnswewr(answer: useranswer)
        if UserGotRight{
            sender.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }else{
            sender.backgroundColor = UIColor.red
        }
        // next quest num
        quizeBrain.NextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updatequestion), userInfo: nil, repeats: false)
     
        
    }
    
    @objc func updatequestion(){
        progressbar.progress = quizeBrain.getProgress()
        labelTXT.text = quizeBrain.GetQuestion()
        trueBTN.backgroundColor = UIColor.clear
        faleBTN.backgroundColor = UIColor.clear
}
    

}

