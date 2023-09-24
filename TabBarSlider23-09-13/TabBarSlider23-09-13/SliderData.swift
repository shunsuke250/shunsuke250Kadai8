//
//  SliderData.swift
//  TabBarSlider23-09-13
//
//  Created by 副山俊輔 on 2023/09/22.
//

import Foundation

final class SliderData {
    static let shared = SliderData()
    var sliderValue: Float = 0.0
    private init() {}
}
