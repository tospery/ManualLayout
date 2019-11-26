//
//  UIViewController+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 25/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

extension UIViewController {

    public var ml_bounds: CGRect {
        return view.bounds
    }
    public var bounds: CGRect {
        return ml_bounds
    }

    // MARK: - Center
    public var ml_center: CGPoint {
        return view.center
    }
    public var center: CGPoint {
        return ml_center
    }

    public var ml_centerX: CGFloat {
        return view.ml_centerX
    }
    public var centerX: CGFloat {
        return ml_centerX
    }

    public var ml_centerY: CGFloat {
        return view.ml_centerY
    }
    public var centerY: CGFloat {
        return ml_centerY
    }

    // MARK: - Size
    public var ml_size: CGSize {
        return view.ml_size
    }
    public var size: CGSize {
        return ml_size
    }

    public var ml_width: CGFloat {
        return view.ml_width
    }
    public var width: CGFloat {
        return ml_width
    }

    public var ml_height: CGFloat {
        return view.ml_height
    }
    public var height: CGFloat {
        return ml_height
    }

    // MARK: - Edges
    public var ml_top: CGFloat {
        return topLayoutGuide.length
    }
    public var top: CGFloat {
        return ml_top
    }

    public var ml_right: CGFloat {
        return view.ml_width
    }
    public var right: CGFloat {
        return ml_right
    }

    public var ml_bottom: CGFloat {
        return view.ml_height - bottomLayoutGuide.length
    }
    public var bottom: CGFloat {
        return ml_bottom
    }

    public var ml_left: CGFloat {
        return 0
    }
    public var left: CGFloat {
        return ml_left
    }
    
}
