//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
view.backgroundColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]

let textLayer = CATextLayer()
textLayer.frame = CGRectInset(view.bounds, 20, 20)
view.layer.addSublayer(textLayer)

textLayer.foregroundColor = [#Color(colorLiteralRed: 0, green: 0, blue: 0, alpha: 1)#].CGColor
textLayer.alignmentMode = kCAAlignmentJustified
textLayer.wrapped = true

textLayer.contentsScale = UIScreen.mainScreen().scale

textLayer.font = "HelveticaNeue-Light"
textLayer.fontSize = 15
let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc elementum, libero ut porttitor dictum, diam odio congue lacus, vel fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet lobortis";

let string = NSMutableAttributedString(string: text)
let attrib = [NSForegroundColorAttributeName: UIColor.blackColor(),
              NSFontAttributeName : UIFont.systemFontOfSize(15)]
string.setAttributes(attrib, range: NSRange(location: 0, length: text.characters.count))

let attrib2 = [NSForegroundColorAttributeName: UIColor.redColor(),
               NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue,
               NSFontAttributeName: UIFont.systemFontOfSize(20)]
string.setAttributes(attrib2, range: NSRange(location: 6, length: 5))

textLayer.string = string

XCPlaygroundPage.currentPage.liveView = view
