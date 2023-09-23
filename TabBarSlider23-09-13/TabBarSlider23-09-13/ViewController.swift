//
//  ViewController.swift
//  TabBarSlider23-09-13
//
//  Created by 副山俊輔 on 2023/09/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }

    @IBAction func didMoveSlider(_ sender: Any) {
        let sliderValue = slider.value
        resultLabel.text = "\(sliderValue)"
        SliderData.shared.sliderValue = sliderValue
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sliderValue = SliderData.shared.sliderValue
        resultLabel.text = "\(sliderValue)"
        slider.value = sliderValue
    }
}
