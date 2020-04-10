//
//  TrackersStackView.swift
//  DuckDuckGo
//
//  Copyright © 2020 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit

class TrackersStackView: UIStackView {

    @IBOutlet var firstIcon: UIImageView!
    @IBOutlet var secondIcon: UIImageView!
    @IBOutlet var thirdIcon: UIImageView!
    
    var crossOutBackgroundColor: UIColor = .clear
    
    func animateTrackers() {
        
        let visibleIcons = [firstIcon, secondIcon, thirdIcon]

        visibleIcons.forEach { imageView in
            imageView?.animateCrossOut(foregroundColor: self.tintColor!,
                                       backgroundColor: self.crossOutBackgroundColor)
        }
    }
    
    func resetTrackers() {
        
        let visibleIcons = [firstIcon, secondIcon, thirdIcon]

        visibleIcons.forEach { imageView in
            imageView?.resetCrossOut()
        }
    }
}
