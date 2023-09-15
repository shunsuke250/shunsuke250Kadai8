//
//  ViewController.swift
//  TabBarSlider23-09-13
//
//  Created by 副山俊輔 on 2023/09/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }
    
    @IBAction func didMoveSlider(_ sender: Any) {
        resultLabel.text = "\(slider.value)"
    }
    

}

