//
//  ViewController.swift
//  Project8
//
//  Created by othman shahrouri on 8/17/21.
//

import UIKit
//anchors: let us very clearly and descriptively place views relative to each other

class ViewController: UIViewController {
    var cluesLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var scoreLabel: UILabel!
    var letterButtons = [UIButton]()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score: 0"
        view.addSubview(scoreLabel)
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }


}

