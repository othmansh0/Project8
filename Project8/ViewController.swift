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
        //create score label
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score: 0"
        view.addSubview(scoreLabel)
        
        //create clues label
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.text = "CLUES"
        
        //UIFont. numberOfLines is an integer that sets how many lines the text can wrap over, but we’re going to set it to 0 – a magic value that means “as many lines as it takes.”
        cluesLabel.numberOfLines = 0
        view.addSubview(cluesLabel)
        
        //create answers label
        answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.font = UIFont.systemFont(ofSize: 24)//give us 24-point font in whatever font is currently being used by iOS.
        answersLabel.text = "ANSWERS"
        answersLabel.numberOfLines = 0
        answersLabel.textAlignment = .right
        view.addSubview(answersLabel)
        
        //create current answer text field
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Tap letters to guess"
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        currentAnswer.isUserInteractionEnabled = false
        view.addSubview(currentAnswer)
        
        //create submit button
        let submit = UIButton(type: .system)
        submit.setTitle("SUBMIT", for: .normal)
        submit.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(submit)
        
        
        let clear = UIButton(type: .system)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.setTitle("CLEAR", for: .normal)
        view.addSubview(clear)
        
        
        NSLayoutConstraint.activate([
            //Notice the way I’m pinning the label to view.layoutMarginsGuide – that will make the score label have a little distance from the top + right edge of the screen by view.layoutMarginsGuide
            //if i used view.topAnchor no little space would be added
            scoreLabel.topAnchor.constraint(equalTo:view.layoutMarginsGuide.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            
            // pin the top of the clues label to the bottom of the score label
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),

            // pin the leading edge of the clues label to the leading edge of our layout margins, adding 100 for some space
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),

            // make the clues label 60% of the width of our layout margins, minus 100
            cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),

            // also pin the top of the answers label to the bottom of the score label
            answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),

            // make the answers label stick to the trailing edge of our layout margins, minus 100
            answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),

            // make the answers label take up 40% of the available space, minus 100
            answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),

            // make the answers label match the height of the clues label
            answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
            
            currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20),
            
            submit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
            submit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            submit.heightAnchor.constraint(equalToConstant: 44),
            
            //for  clear button we’ll be setting its Y anchor so that its stays aligned with the Y position of the submit button...Both buttons will remain aligned even if we move one
            clear.centerYAnchor.constraint(equalTo: submit.centerYAnchor),
            
            //To stop them overlapping, we’ll subtract 100 from the submit button’s X position, and add 100 to the clear button’s X position
            clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            clear.heightAnchor.constraint(equalToConstant: 44)
            
            
        ])
        
        cluesLabel.backgroundColor = .red
        answersLabel.backgroundColor = .blue
        // it takes the multiplier into account first, then the constant.
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

