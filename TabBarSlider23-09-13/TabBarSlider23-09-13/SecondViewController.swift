//
//  SecondViewController.swift
//  TabBarSlider23-09-13
//
//  Created by 副山俊輔 on 2023/09/14.
//

import UIKit

class SecondViewController: UIViewController {

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
