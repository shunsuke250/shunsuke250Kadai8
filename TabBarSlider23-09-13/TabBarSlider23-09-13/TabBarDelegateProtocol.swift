//
//  TabBarDelegateProtocol.swift
//  TabBarSlider23-09-13
//
//  Created by 副山俊輔 on 2023/09/16.
//

import Foundation
import UIKit

protocol SliderValueDelegate: AnyObject {
    func sliderValueChanged(newValue: Float)
}
