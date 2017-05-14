//
//  ViewController.swift
//  SwiftApp
//
//  Created by Marc Six on 5/13/17.
//  Copyright © 2017 Marc Six. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var phase = 0;
    var stringPhase = "";
    var pressed = false;
    var colors = [UIColor.purple, UIColor.blue, UIColor.green, UIColor.white]
    var colorIndex = 0;
    
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var theButton: UIButton!
    @IBAction func theButtonAction(_ sender: Any) {
        add();
        stringPhase = String(phase);
        theLabel.text = "You've pressed the button \(stringPhase) times";
        theButton.backgroundColor = colors[colorIndex];
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor = UIColor.blue;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func add(){
        phase += 1;
        colorIndex += 1;
        if(colorIndex > 3){
            colorIndex = 0;}
    }
}

