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
        sliderData = SliderData()
        // 初期のsliderDataの値を設定
        sliderData.sliderValue = 0.0
    }
    var sliderData: SliderData!

    @IBAction func didMoveSlider(_ sender: Any) {
        let sliderValue = slider.value
        resultLabel.text = "\(sliderValue)"
        sliderData.sliderValue = sliderValue
        self.tabBarController?.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sliderValue = slider.value
        resultLabel.text = "\(sliderValue)"
    }

}

extension ViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // タブが切り替わった際に、sliderDataから値を取得して表示
        let sliderValue = sliderData.sliderValue
        resultLabel.text = "\(sliderValue)"
        }
}
