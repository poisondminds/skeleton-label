//
//  ViewController.swift
//  SkeletonLabelDemo
//
//  Created by Ryan Burns on 7/31/19.
//  Copyright © 2019 Ryan Burns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: SkeletonLabel!
    @IBOutlet weak var label2: SkeletonLabel!
    @IBOutlet weak var label3: SkeletonLabel!
    @IBOutlet weak var reloadButton: UIButton!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.loadSomething()
    }

    @IBAction func onTapReload(_ sender: Any) {
        self.skeletonizeLabels()
        self.reloadButton.isHidden = true
        self.loadSomething()
    }
    
    private func loadSomething() {
        // Fake some loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: { () -> Void in
            self.reloadButton.isHidden = false
            self.setLabelText()
        })
    }
    
    private func skeletonizeLabels() {
        self.label1.skeletonize()
        self.label2.skeletonize()
        self.label3.skeletonize()
    }
    
    private func setLabelText() {
        self.label1.text = "Hello"
        self.label2.text = "Thank you so much for your support"
        self.label3.text = "I hope you choose to use SkeletonLabel"
    }
}

