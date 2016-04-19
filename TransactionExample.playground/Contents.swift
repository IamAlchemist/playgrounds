//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let rootView = UIView(frame: CGRect(x: 0, y: 0, width: 480, height: 320))
rootView.backgroundColor = UIColor.grayColor()

let view = UIView(frame: CGRect(x: 140, y: 60, width: 200, height: 200))
view.backgroundColor = UIColor.whiteColor()
rootView.addSubview(view)

let colorLayer = CALayer()
colorLayer.frame = CGRectMake(50, 50, 100, 100)
colorLayer.backgroundColor = UIColor.blueColor().CGColor
view.layer.addSublayer(colorLayer)

let button = UIButton(type: .System)
button.frame = CGRectMake(50, 160, 100, 30)
button.setTitle("Change", forState: .Normal)
button.layer.borderColor = UIColor.blackColor().CGColor
button.layer.borderWidth = 1

class ButtonHandler: NSObject {
    func tapped(button : UIButton) {
        let red = CGFloat(arc4random()) / CGFloat(INT_MAX)
        let green = CGFloat(arc4random()) / CGFloat(INT_MAX)
        let blue = CGFloat(arc4random()) / CGFloat(INT_MAX)

        colorLayer.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0).CGColor
    }
}
let buttonHandler = ButtonHandler()
button.addTarget(buttonHandler, action: #selector(ButtonHandler.tapped(_:)), forControlEvents: .TouchUpInside)

view.addSubview(button)

XCPlaygroundPage.currentPage.liveView = rootView
