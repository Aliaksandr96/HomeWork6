//
//  CatsViewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 23/06/2022.
//

import Foundation

import UIKit

class CatsViewController: UIViewController {
    
    private let movedButton: UIButton = UIButton()
 
override func viewDidLoad() {
super.viewDidLoad()
    view.backgroundColor = .systemYellow
    
    movedButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    movedButton.setTitle("click me", for: .normal)

    movedButton.addTarget(self, action: #selector(movedCircle(sender:)), for: .touchUpInside)
    
    view.addSubview(movedButton)
    movedButton.center = view.center
    movedButton.backgroundColor = .gray
    movedButton.layer.cornerRadius = 50
    
}

@objc func movedCircle(sender: UIButton) {
    
    let randomWidth = CGFloat.random(in: 100..<300)
    let randomHeight = CGFloat.random(in: 100..<700)
    sender.center = CGPoint (x: randomWidth, y: randomHeight)
   
}
}
