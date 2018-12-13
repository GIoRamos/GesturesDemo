//
//  ViewController.swift
//  GesturesDemo
//
//  Created by GIOVANNI GARCIA on 11/8/18.
//  Copyright © 2018 GIOVANNI GARCIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    var isBlue = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTap(_ sender: Any) {
        if isBlue == true {
            blueView.backgroundColor = yellowView.backgroundColor
        }else{
            blueView.backgroundColor = .blue
        
        }
        isBlue = !isBlue
    
    }
    @IBAction func onPAn(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        yellowView.center = CGPoint(x: point.x, y: point.y)
        print(point)
    }
    

}

