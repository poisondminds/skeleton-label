//
//  SkeletonLabel
//  SkeletonLabel
//
//  Created by Ryan Burns on 7/31/19.
//  Copyright © 2019 Ryan Burns. All rights reserved.
//

import UIKit

@IBDesignable public class SkeletonLabel: UILabel {
    var skeletonColor: UIColor?

    @IBInspectable var color: UIColor? {
        get { return self.skeletonColor }
        set {
            self.skeletonColor = newValue
            self.backgroundColor = newValue
        }
    }

    override var text: String? {
        didSet {
            guard let string = self.text, !string.isEmpty else { return }
            self.unskeletonize()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.skeletonize()
    }

    public func skeletonize() {
        self.text = " " // :) needs to be a space so view takes a height without setting one explicitly
        self.backgroundColor = self.skeletonColor
    }

    private func unskeletonize() {
        self.backgroundColor = UIColor.clear
    }
}
