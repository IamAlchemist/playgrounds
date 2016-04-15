//: show transform3d

import UIKit
import XCPlayground

let rootView = UIView(frame: CGRect(origin: CGPointZero, size: CGSize(width: 320 , height: 480)))
rootView.backgroundColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]

//: show normal transform3d
let image = UIImage(named: "swift")
let imageView = UIImageView(image: image)
imageView.frame = CGRectMake(110, 50, 100, 100)
imageView.backgroundColor = [#Color(colorLiteralRed: 0.4028071761131287, green: 0.7315050363540649, blue: 0.2071235477924347, alpha: 1)#]

var transform3d = CATransform3DIdentity
transform3d.m34 = -1.0 / 500.0
transform3d = CATransform3DRotate(transform3d, CGFloat(M_PI), 0, 1, 0)

imageView.layer.transform = transform3d
//imageView.layer.doubleSided = false
rootView.addSubview(imageView)

//: show sublayerTransform
var perspective = CATransform3DIdentity
perspective.m34 = -1.0 / 500.0
rootView.layer.sublayerTransform = perspective

let imageViewLeft = UIImageView(image: image)
imageViewLeft.backgroundColor = [#Color(colorLiteralRed: 0.9446166753768921, green: 0.6509571671485901, blue: 0.155896782875061, alpha: 1)#]
imageViewLeft.frame = CGRectMake(50, 200, 100, 100)

let transformLeft = CATransform3DMakeRotation(CGFloat(M_PI_4), 0, 1, 0)
imageViewLeft.layer.transform = transformLeft

rootView.addSubview(imageViewLeft)

let imageViewRight = UIImageView(image: image)
imageViewRight.backgroundColor = [#Color(colorLiteralRed: 0.2856909930706024, green: 0, blue: 0.9589199423789978, alpha: 1)#]
imageViewRight.frame = CGRectMake(160, 200, 100, 100)

let transformRight = CATransform3DMakeRotation(-CGFloat(M_PI_4), 0, 1, 0)
imageViewRight.layer.transform = transformRight

rootView.addSubview(imageViewRight)

XCPlaygroundPage.currentPage.liveView = rootView

