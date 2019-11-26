//
//  CGRect+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 30/03/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

extension CGRect {
    
    // MARK: - Position
    public var ml_x: CGFloat {
        get { return origin.x }
        set { origin.x = snapToPixel(pointCoordinate: newValue) }
    }
    public var x: CGFloat {
        get { return ml_x }
        set { ml_x = newValue }
    }

    public var ml_y: CGFloat {
        get { return origin.y }
        set { origin.y = snapToPixel(pointCoordinate: newValue) }
    }
    public var y: CGFloat {
        get { return ml_y }
        set { ml_y = newValue }
    }
    
    public var ml_center: CGPoint {
        get { return CGPoint(x: ml_centerX, y: ml_centerY) }
        set { ml_centerX = newValue.x; ml_centerY = newValue.y }
    }
    public var center: CGPoint {
        get { return ml_center }
        set { ml_center = newValue }
    }

    public var ml_centerX: CGFloat {
        get { return origin.x + size.width / 2 }
        set { ml_x = newValue - size.width / 2 }
    }
    public var centerX: CGFloat {
        get { return ml_centerX }
        set { ml_centerX = newValue }
    }

    public var ml_centerY: CGFloat {
        get { return origin.y + size.height / 2 }
        set { ml_y = newValue - size.height / 2 }
    }
    public var centerY: CGFloat {
        get { return ml_centerY }
        set { ml_centerY = newValue }
    }

    // MARK: - Edges
    public var ml_top: CGFloat {
        get { return ml_y }
        set { ml_y = newValue }
    }
    public var top: CGFloat {
        get { return ml_top }
        set { ml_top = newValue }
    }
    
    public var ml_right: CGFloat {
        get { return origin.x + size.width }
        set { ml_x = newValue - size.width }
    }
    public var right: CGFloat {
        get { return ml_right }
        set { ml_right = newValue }
    }
    
    public var ml_bottom: CGFloat {
        get { return origin.y + size.height }
        set { ml_y = newValue - size.height }
    }
    public var bottom: CGFloat {
        get { return ml_bottom }
        set { ml_bottom = newValue }
    }
    
    public var ml_left: CGFloat {
        get { return ml_x }
        set { ml_x = newValue }
    }
    public var left: CGFloat {
        get { return ml_left }
        set { ml_left = newValue }
    }
    
    // MARK: - Alternative Edges
    public var ml_top2: CGFloat {
        get { return ml_top }
        set {
            if newValue <= ml_bottom {
                size.height += snapToPixel(pointCoordinate: ml_top - newValue)
                ml_y = newValue
            } else {
                // Swap top with bottom.
                let newTop = ml_bottom
                size.height = snapToPixel(pointCoordinate: newValue - newTop)
                ml_y = newTop
            }
        }
    }
    public var top2: CGFloat {
        get { return ml_top2 }
        set { ml_top2 = newValue }
    }
    
    public var ml_right2: CGFloat {
        get { return ml_right }
        set {
            if newValue >= ml_left {
                size.width += snapToPixel(pointCoordinate: newValue - ml_right)
            } else {
                // Swap left with right.
                let newRight = ml_left
                size.width = snapToPixel(pointCoordinate: newRight - newValue)
                ml_x = newValue
            }
        }
    }
    public var right2: CGFloat {
        get { return ml_right2 }
        set { ml_right2 = newValue }
    }
    
    public var ml_bottom2: CGFloat {
        get { return ml_bottom }
        set {
            if newValue >= ml_top {
                size.height += snapToPixel(pointCoordinate: newValue - ml_bottom)
            } else {
                // Swap bottom with top.
                let newBottom = ml_top
                size.height = snapToPixel(pointCoordinate: newBottom - newValue)
                ml_y = newValue
            }
        }
    }
    public var bottom2: CGFloat {
        get { return ml_bottom2 }
        set { ml_bottom2 = newValue }
    }
    
    public var ml_left2: CGFloat {
        get { return ml_left }
        set {
            if newValue <= right {
                size.width += snapToPixel(pointCoordinate: left - newValue)
                x = newValue
            } else {
                // Swap right with left.
                let newLeft = right
                size.width = snapToPixel(pointCoordinate: newValue - newLeft)
                x = newLeft
            }
        }
    }
    public var left2: CGFloat {
        get { return ml_left2 }
        set { ml_left2 = newValue }
    }
    
}
