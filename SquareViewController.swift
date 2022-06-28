//
//  SquareViewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 23/06/2022.
//

import Foundation
import UIKit

public final class SquareViewController: UIViewController{

    let label1: UILabel = UILabel()
            let label2: UILabel = UILabel()
            let label3: UILabel = UILabel()
            let label4: UILabel = UILabel()
            let label5: UILabel = UILabel()
            let label6: UILabel = UILabel()
            let label7: UILabel = UILabel()
            let label8: UILabel = UILabel()

            public override func viewDidLoad() {
                super.viewDidLoad()
                view.backgroundColor = .systemYellow
            }
            override public func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
                
                label1.frame = CGRect(x: 20, y: 25, width: 50, height: 50)
                view.addSubview(label1)
                label1.backgroundColor = .blue
                label2.frame = CGRect(x: 20, y: 25, width: 50, height: 50)
                view.addSubview(label2)
                label2.backgroundColor = .darkGray
                label3.frame = CGRect(x: 20, y: 25, width: 50, height: 50)
                view.addSubview(label3)
                label3.backgroundColor = .red
                label4.frame = CGRect(x: 20, y: 25, width: 50, height: 50)
                view.addSubview(label4)
                label4.backgroundColor = .systemGreen
                label5.frame = CGRect(x: 20, y: 25, width: 50, height: 50)
                view.addSubview(label5)
                label5.backgroundColor = .black
                label6.frame = CGRect(x: 20, y: 25, width: 50, height: 50)
                view.addSubview(label6)
                label6.backgroundColor = .systemCyan
                label7.frame = CGRect(x: 20, y: 25, width: 50, height: 50)
                view.addSubview(label7)
                label7.backgroundColor = .brown
               
            }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(0)) {
                self.label1.center = CGPoint(x: 45, y: 50)
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)){
                self.label2.center = CGPoint(x: 100, y: 50)
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
                self.label3.center = CGPoint(x: 155, y: 50)
                }
              DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)){
                self.label4.center = CGPoint(x: 210, y: 50)
                }
               DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
                self.label5.center = CGPoint(x: 265, y: 50)
            }
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
                self.label6.center = CGPoint(x: 320, y: 50)
            }
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(6)) {
                self.label7.center = CGPoint(x: 375, y: 50)
            }
              
        }

}
