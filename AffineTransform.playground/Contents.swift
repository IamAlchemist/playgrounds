//: show the CGAffineTransform, see [仿射变换](https://zsisme.gitbooks.io/ios-/content/chapter5/affine-fransforms.html)

import UIKit
import XCPlayground

let image = UIImage(named: "swift")

let rootView = UIView(frame: CGRect(origin: CGPointZero, size: CGSize(width: 320 , height: 480)))
rootView.backgroundColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]

//: 原始视图旋转45度角度
let imageView1 = UIImageView(image: image)
imageView1.frame = CGRectMake(110, 50, 100, 100)
imageView1.backgroundColor = [#Color(colorLiteralRed: 0.8949507474899292, green: 0.1438436359167099, blue: 0.08480125665664673, alpha: 1)#]

let transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
imageView1.layer.setAffineTransform(transform)

rootView.addSubview(imageView1)

//: 先缩小50%，再旋转30度，最后向右移动100个像素
let imageView2 = UIImageView(image: image)
imageView2.backgroundColor = [#Color(colorLiteralRed: 0.9559464454650879, green: 0.7389599084854126, blue: 0.277831494808197, alpha: 1)#]
imageView2.frame = CGRectMake(110, 200, 100, 100)

var affineTransform = CGAffineTransformIdentity
affineTransform = CGAffineTransformScale(affineTransform, 0.5, 0.5)
affineTransform = CGAffineTransformRotate(affineTransform, CGFloat(M_PI) / 180.0 * 30.0)
affineTransform = CGAffineTransformTranslate(affineTransform, 100, 0)

imageView2.layer.setAffineTransform(affineTransform)

rootView.addSubview(imageView2)
XCPlaygroundPage.currentPage.liveView = rootView
//XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
