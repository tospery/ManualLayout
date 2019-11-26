//
//  UIView+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

// I wish there was an easier way to do this in Swift.
extension UIView {

    // MARK: - Position
    public var ml_origin: CGPoint {
        get { return layer.ml_origin }
        set { layer.ml_origin = newValue }
    }
    public var origin: CGPoint {
        get { return ml_origin }
        set { ml_origin = newValue }
    }

    public var ml_x: CGFloat {
        get { return layer.ml_x }
        set { layer.ml_x = newValue }
    }
    public var x: CGFloat {
        get { return ml_x }
        set { ml_x = newValue }
    }

    public var ml_y: CGFloat {
        get { return layer.ml_y }
        set { layer.ml_y = newValue }
    }
    public var y: CGFloat {
        get { return ml_y }
        set { ml_y = newValue }
    }

    public var ml_centerX: CGFloat {
        get { return layer.ml_centerX }
        set { layer.ml_centerX = newValue }
    }
    public var centerX: CGFloat {
        get { return ml_centerX }
        set { ml_centerX = newValue }
    }

    public var ml_centerY: CGFloat {
        get { return layer.ml_centerY }
        set { layer.ml_centerY = newValue }
    }
    public var centerY: CGFloat {
        get { return ml_centerY }
        set { ml_centerY = newValue }
    }

    // MARK: - Size
    public var ml_size: CGSize {
        get { return layer.ml_size }
        set { layer.ml_size = newValue }
    }
    public var size: CGSize {
        get { return ml_size }
        set { ml_size = newValue }
    }

    public var ml_width: CGFloat {
        get { return layer.ml_width }
        set { layer.ml_width = newValue }
    }
    public var width: CGFloat {
        get { return ml_width }
        set { ml_width = newValue }
    }

    public var ml_height: CGFloat {
        get { return layer.ml_height }
        set { layer.ml_height = newValue }
    }
    public var height: CGFloat {
        get { return ml_height }
        set { ml_height = newValue }
    }

    // MARK: - Edges
    public var ml_top: CGFloat {
        get { return layer.ml_top }
        set { layer.ml_top = newValue }
    }
    public var top: CGFloat {
        get { return ml_top }
        set { ml_top = newValue }
    }

    public var ml_right: CGFloat {
        get { return layer.ml_right }
        set { layer.ml_right = newValue }
    }
    public var right: CGFloat {
        get { return ml_right }
        set { ml_right = newValue }
    }

    public var ml_bottom: CGFloat {
        get { return layer.ml_bottom }
        set { layer.ml_bottom = newValue }
    }
    public var bottom: CGFloat {
        get { return ml_bottom }
        set { ml_bottom = newValue }
    }

    public var ml_left: CGFloat {
        get { return layer.ml_left }
        set { layer.ml_left = newValue }
    }
    public var left: CGFloat {
        get { return ml_left }
        set { ml_left = newValue }
    }

    // MARK: - Alternative Edges
    public var ml_top2: CGFloat {
        get { return layer.ml_top2 }
        set { layer.ml_top2 = newValue }
    }
    public var top2: CGFloat {
        get { return ml_top2 }
        set { ml_top2 = newValue }
    }

    public var ml_right2: CGFloat {
        get { return layer.ml_right2 }
        set { layer.ml_right2 = newValue }
    }
    public var right2: CGFloat {
        get { return ml_right2 }
        set { ml_right2 = newValue }
    }

    public var ml_bottom2: CGFloat {
        get { return layer.ml_bottom2 }
        set { layer.ml_bottom2 = newValue }
    }
    public var bottom2: CGFloat {
        get { return ml_bottom2 }
        set { ml_bottom2 = newValue }
    }

    public var ml_left2: CGFloat {
        get { return layer.ml_left2 }
        set { layer.ml_left2 = newValue }
    }
    public var left2: CGFloat {
        get { return ml_left2 }
        set { ml_left2 = newValue }
    }

    // MARK: - Automatic Sizing
    @discardableResult
    public func sizeToFit(_ width: CGFloat, _ height: CGFloat) -> CGSize {
        return sizeToFit(CGSize(width: width, height: height))
    }

    @discardableResult
    public func sizeToFit(_ constrainedSize: CGSize) -> CGSize {
        var newSize = sizeThatFits(constrainedSize)
        newSize.width = min(newSize.width, constrainedSize.width)
        newSize.height = min(newSize.height, constrainedSize.height)
        size = newSize
        return newSize
    }
}
