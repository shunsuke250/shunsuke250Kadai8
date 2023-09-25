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
