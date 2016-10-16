//
//  ViewController.swift
//  USRecordandProcess
//
//  Created by Mark Chen on 10/16/16.
//  Copyright © 2016 Mark Chen. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var recordButton: UIButton!
    
    var recordingSession: AVAudioSession!
    var whistleRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "What's that whistle"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWhistle))
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Home", style: .plain, target: nil, action: nil)
    }
    func addWhistle(){
        let vc = RecordWhistleViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

