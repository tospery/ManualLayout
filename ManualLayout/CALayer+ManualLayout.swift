//
//  CALayer+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

extension CALayer {

    // MARK: - Position
    public var ml_origin: CGPoint {
        get { return frame.origin }
        set { ml_x = newValue.x; ml_y = newValue.y }
    }
    public var origin: CGPoint {
        get { return ml_origin }
        set { ml_origin = newValue }
    }

    public var ml_x: CGFloat {
        get { return frame.ml_x }
        set { frame.ml_x = newValue }
    }
    public var x: CGFloat {
        get { return ml_x }
        set { ml_x = newValue }
    }

    public var ml_y: CGFloat {
        get { return frame.ml_y }
        set { frame.ml_y = newValue }
    }
    public var y: CGFloat {
        get { return ml_y }
        set { ml_y = newValue }
    }

    public var ml_center: CGPoint {
        get { return frame.ml_center }
        set { frame.ml_center = newValue }
    }
    public var center: CGPoint {
        get { return ml_center }
        set { ml_center = newValue }
    }
    
    public var ml_centerX: CGFloat {
        get { return frame.ml_centerX }
        set { frame.ml_centerX = newValue }
    }
    public var centerX: CGFloat {
        get { return ml_centerX }
        set { ml_centerX = newValue }
    }
    
    public var ml_centerY: CGFloat {
        get { return frame.ml_centerY }
        set { frame.ml_centerY = newValue }
    }
    public var centerY: CGFloat {
        get { return ml_centerY }
        set { ml_centerY = newValue }
    }

    // MARK: - Size
    public var ml_size: CGSize {
        get { return frame.size }
        set { ml_width = newValue.width; ml_height = newValue.height }
    }
    public var size: CGSize {
        get { return ml_size }
        set { ml_size = newValue }
    }

    public var ml_width: CGFloat {
        get { return frame.size.width }
        set { frame.size.width = snapToPixel(pointCoordinate: newValue) }
    }
    public var width: CGFloat {
        get { return ml_width }
        set { ml_width = newValue }
    }

    public var ml_height: CGFloat {
        get { return frame.size.height }
        set { frame.size.height = snapToPixel(pointCoordinate: newValue) }
    }
    public var height: CGFloat {
        get { return ml_height }
        set { ml_height = newValue }
    }

    // MARK: - Edges
    public var ml_top: CGFloat {
        get { return frame.ml_top }
        set { frame.ml_top = newValue }
    }
    public var top: CGFloat {
        get { return ml_top }
        set { ml_top = newValue }
    }

    public var ml_right: CGFloat {
        get { return frame.right }
        set { frame.right = newValue }
    }
    public var right: CGFloat {
        get { return ml_right }
        set { ml_right = newValue }
    }

    public var ml_bottom: CGFloat {
        get { return frame.bottom }
        set { frame.bottom = newValue }
    }
    public var bottom: CGFloat {
        get { return ml_bottom }
        set { ml_bottom = newValue }
    }

    public var ml_left: CGFloat {
        get { return frame.left }
        set { frame.left = newValue }
    }
    public var left: CGFloat {
        get { return ml_left }
        set { ml_left = newValue }
    }

    // MARK: - Alternative Edges
    public var ml_top2: CGFloat {
        get { return frame.ml_top2 }
        set { frame.ml_top2 = newValue }
    }
    public var top2: CGFloat {
        get { return ml_top2 }
        set { ml_top2 = newValue }
    }

    public var ml_right2: CGFloat {
        get { return frame.ml_right2 }
        set { frame.ml_right2 = newValue }
    }
    public var right2: CGFloat {
        get { return ml_right2 }
        set { ml_right2 = newValue }
    }

    public var ml_bottom2: CGFloat {
        get { return frame.ml_bottom2 }
        set { frame.ml_bottom2 = newValue }
    }
    public var bottom2: CGFloat {
        get { return ml_bottom2 }
        set { ml_bottom2 = newValue }
    }

    public var ml_left2: CGFloat {
        get { return frame.ml_left2 }
        set { frame.ml_left2 = newValue }
    }
    public var left2: CGFloat {
        get { return ml_left2 }
        set { ml_left2 = newValue }
    }
    
}
