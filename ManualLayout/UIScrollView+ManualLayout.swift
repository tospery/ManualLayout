//
//  UIScrollView+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 06/03/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

extension UIScrollView {

    // MARK: - Content Size
    public var ml_contentWidth: CGFloat {
        get { return contentSize.width }
        set { contentSize.width = snapToPixel(pointCoordinate: newValue) }
    }
    public var contentWidth: CGFloat {
        get { return ml_contentWidth }
        set { ml_contentWidth = newValue }
    }

    public var ml_contentHeight: CGFloat {
        get { return contentSize.height }
        set { contentSize.height = snapToPixel(pointCoordinate: newValue) }
    }
    public var contentHeight: CGFloat {
        get { return ml_contentHeight }
        set { ml_contentHeight = newValue }
    }

    // MARK: - Content Edges (For Convenience)
    public var ml_contentTop: CGFloat {
        return 0
    }
    public var contentTop: CGFloat {
        return ml_contentTop
    }

    public var ml_contentLeft: CGFloat {
        return 0
    }
    public var contentLeft: CGFloat {
        return ml_contentLeft
    }

    public var ml_contentBottom: CGFloat {
        get { return ml_contentHeight }
        set { ml_contentHeight = newValue }
    }
    public var contentBottom: CGFloat {
        get { return ml_contentBottom }
        set { ml_contentBottom = newValue }
    }

    public var ml_contentRight: CGFloat {
        get { return ml_contentWidth }
        set { ml_contentWidth = newValue }
    }
    public var contentRight: CGFloat {
        get { return ml_contentRight }
        set { ml_contentRight = newValue }
    }

    // MARK: - Viewport Edges
    public var ml_viewportTop: CGFloat {
        get { return contentOffset.y }
        set { contentOffset.y = snapToPixel(pointCoordinate: newValue) }
    }
    public var viewportTop: CGFloat {
        get { return ml_viewportTop }
        set { ml_viewportTop = newValue }
    }

    public var ml_viewportLeft: CGFloat {
        get { return contentOffset.x }
        set { contentOffset.x = snapToPixel(pointCoordinate: newValue) }
    }
    public var viewportLeft: CGFloat {
        get { return ml_viewportLeft }
        set { ml_viewportLeft = newValue }
    }

    public var ml_viewportBottom: CGFloat {
        get { return contentOffset.y + ml_height }
        set { contentOffset.y = snapToPixel(pointCoordinate: newValue - ml_height) }
    }
    public var viewportBottom: CGFloat {
        get { return ml_viewportBottom }
        set { ml_viewportBottom = newValue }
    }

    public var ml_viewportRight: CGFloat {
        get { return contentOffset.x + width }
        set { contentOffset.x = snapToPixel(pointCoordinate: newValue - ml_width) }
    }
    public var viewportRight: CGFloat {
        get { return ml_viewportRight }
        set { ml_viewportRight = newValue }
    }
    
}
