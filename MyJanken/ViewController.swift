//
//  ViewController.swift
//  MyJanken
//
//  Created by Tomoya takatsu on 2021/08/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        //answerNumber = Int.random(in: 0..<3)
        
        var newAnswerNumber = 0
        
        while answerNumber == newAnswerNumber {
            
            newAnswerNumber = Int.random(in: 0..<3)
            
        }
        
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        } else if answerNumber == 1 {
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == 2 {
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

