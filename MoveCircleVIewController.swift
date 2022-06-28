//
//  moveCircleVIewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 23/06/2022.
//

import Foundation
//
//  SquareViewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 23/06/2022.
//

import Foundation
import UIKit

public final class MoveCirleViewController: UIViewController{

private var movedButtonLeft: UIButton = UIButton()
private var movedButtonDown: UIButton = UIButton()
private var movedButtonUp: UIButton = UIButton()
private var movedButtonRight: UIButton = UIButton()
    private var label: UILabel = UILabel()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
    }
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movedButtonLeft.frame = CGRect(x: 50, y: 750, width: 100, height: 50)
        movedButtonDown.frame = CGRect(x: 160, y: 750, width: 100, height: 50)
        movedButtonUp.frame = CGRect(x: 160, y: 690, width: 100, height: 50)
        movedButtonRight.frame = CGRect(x: 270, y: 750, width: 100, height: 50)
        label.frame = CGRect(x: 160, y: 400, width: 50, height: 50)
        label.layer.cornerRadius = 25
        label.clipsToBounds = true
        
        movedButtonLeft.setTitle("left", for: .normal)
        movedButtonDown.setTitle("down", for: .normal)
        movedButtonUp.setTitle("up", for: .normal)
        movedButtonRight.setTitle("right", for: .normal)
      movedButtonLeft.addTarget(self, action: #selector(moveLeft), for: .touchUpInside)
        movedButtonDown.addTarget(self, action: #selector(moveDown), for: .touchUpInside)
       movedButtonUp.addTarget(self, action: #selector(moveUp), for: .touchUpInside)
       movedButtonRight.addTarget(self, action: #selector(moveRight), for: .touchUpInside)
     
        view.addSubview(movedButtonLeft)
        view.addSubview(movedButtonDown)
        view.addSubview(movedButtonUp)
        view.addSubview(movedButtonRight)
        view.addSubview(label)
        
        movedButtonLeft.backgroundColor = .red
        self.view.addSubview(movedButtonLeft)
        movedButtonDown.backgroundColor = .red
        self.view.addSubview(movedButtonDown)
        movedButtonUp.backgroundColor = .red
       self.view.addSubview(movedButtonUp)
        movedButtonRight.backgroundColor = .red
       self.view.addSubview(movedButtonRight)
        label.backgroundColor = .blue
        self.view.addSubview(label)
        label.center = view.center
    }
    

    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }

    @objc func moveLeft() {
           label.frame = CGRect(x: 80, y: 400, width: 50, height: 50)
       }
    
    @objc func moveUp() {
           label.frame = CGRect(x: 180, y: 300, width: 50, height: 50)
       }
    @objc func moveDown() {
           label.frame = CGRect(x: 180, y: 500, width: 50, height: 50)
       }
    @objc func moveRight() {
           label.frame = CGRect(x: 300, y: 400, width: 50, height: 50)
       }
    
 

}
