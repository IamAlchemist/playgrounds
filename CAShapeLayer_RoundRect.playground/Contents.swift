//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
view.backgroundColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]

let rect = CGRect(x: 100, y: 100, width: 100, height: 200)
let radii = CGSizeMake(20, 20);
let corners : UIRectCorner = [.TopLeft,.TopRight]
let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: radii)

let layer = CAShapeLayer()
layer.strokeColor = [#Color(colorLiteralRed: 0.8949507474899292, green: 0.1438436359167099, blue: 0.08480125665664673, alpha: 1)#].CGColor
layer.lineWidth = 2
layer.path = path.CGPath

view.layer.addSublayer(layer)

XCPlaygroundPage.currentPage.liveView = view
