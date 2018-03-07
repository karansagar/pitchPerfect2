//
//  ViewController.swift
//  pitchPerfect2
//
//  Created by Karan Sagar on 07/03/18.
//  Copyright © 2018 Karan Sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordingLable: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopRecordButton.isEnabled = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear called")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startRecording(_ sender: UIButton) {
        
        recordingLable.text = "Recording Started ..."
        stopRecordButton.isEnabled = true
        recordButton.isEnabled = false

    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
        recordingLable.text = "Tap to Record"
    }
    
    
}

