//
//  ViewController.swift
//  Look Ma It Draws in Technicolor
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/27/17.
//  Copyright © 2017 Aditya Srimat Tirumala Pallerlamudi. All rights reserved.
//

import UIKit

var dynamicColor:UIColor = UIColor.black

class ViewController: UIViewController {
    
    
    @IBAction func redBTN(_ sender: Any) {
        dynamicColor = .red
    }
    
    @IBAction func orangeBTN(_ sender: Any) {
        dynamicColor = .orange
    }
    
    @IBAction func yellowBTN(_ sender: Any) {
        dynamicColor = .yellow
    }
    
    @IBAction func greenBTN(_ sender: Any) {
        dynamicColor = .green
    }
    
    @IBAction func blueBTN(_ sender: Any) {
        dynamicColor = .blue
    }
    
    @IBAction func purpleBTN(_ sender: Any) {
        dynamicColor = .purple
    }
    
    @IBAction func cyanBTN(_ sender: Any) {
        dynamicColor = .cyan
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

