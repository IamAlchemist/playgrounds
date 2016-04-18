//: show Cube

import UIKit
import XCPlayground

struct Face {
    static let colors = [[#Color(colorLiteralRed: 0.1431525945663452, green: 0.4145618975162506, blue: 0.7041897773742676, alpha: 1)#],[#Color(colorLiteralRed: 0.1288586854934692, green: 0, blue: 0.4869538545608521, alpha: 1)#],[#Color(colorLiteralRed: 0.4931360483169556, green: 0, blue: 0.1765155345201492, alpha: 1)#],[#Color(colorLiteralRed: 0.8949507474899292, green: 0.1438436359167099, blue: 0.08480125665664673, alpha: 1)#],[#Color(colorLiteralRed: 0.9346159696578979, green: 0.6284804344177246, blue: 0.107728436589241, alpha: 1)#],[#Color(colorLiteralRed: 0.2818343937397003, green: 0.5693024396896362, blue: 0.1281824260950089, alpha: 1)#]]
    var view = UIView(frame: CGRectMake(0, 0, 200, 200))
    var label = UIButton(type: .System)
    let index : Int
    
    init (index : Int) {
        label.setTitle("\(index)", forState: .Normal)
        label.frame = CGRectMake(50, 50, 100, 100)
        label.layer.borderColor = Face.colors[index].CGColor
        label.layer.borderWidth = 1
//        label.text = "\(index)"
//        label.adjustsFontSizeToFitWidth = true
//        label.textColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]
//        label.textAlignment = .Center
        
        view.addSubview(label)
        
        view.backgroundColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]
        view.center = rootView.center
        view.layer.borderColor = Face.colors[index].CGColor
        view.layer.borderWidth = 1
        view.userInteractionEnabled = false
        
        rootView.addSubview(view)
        
        self.index = index
    }
}

let rootView = UIView(frame: CGRect(origin: CGPointZero, size: CGSize(width: 320 , height: 480)))
rootView.backgroundColor = [#Color(colorLiteralRed: 0.7602152824401855, green: 0.7601925134658813, blue: 0.7602053880691528, alpha: 1)#]

var perspective = CATransform3DIdentity
perspective.m34 = -1.0 / 500
perspective = CATransform3DRotate(perspective, -CGFloat(M_PI_4), 1, 0, 0)
perspective = CATransform3DRotate(perspective, -CGFloat(M_PI_4), 0, 1, 0)
rootView.layer.sublayerTransform = perspective

let face0 = Face(index:0)
let transform0 = CATransform3DMakeTranslation(0, 0, 100)
face0.view.layer.transform = transform0

let face1 = Face(index: 1)
var transform1 = CATransform3DMakeTranslation(100, 0, 0)
transform1 = CATransform3DRotate(transform1, CGFloat(M_PI_2), 0, 1, 0)
face1.view.layer.transform = transform1

let face2 = Face(index: 2)
var transform2 = CATransform3DMakeTranslation(0, -100, 0)
transform2 = CATransform3DRotate(transform2, CGFloat(M_PI_2), 1, 0, 0)
face2.view.layer.transform = transform2
face2.view.userInteractionEnabled = true

let face3 = Face(index: 3)
var transform3 = CATransform3DMakeTranslation(0, 100, 0)
transform3 = CATransform3DRotate(transform3, CGFloat(-M_PI_2), 1, 0, 0)
face3.view.layer.transform = transform3

let face4 = Face(index: 4)
var transform4 = CATransform3DMakeTranslation(-100, 0, 0)
transform4 = CATransform3DRotate(transform4, CGFloat(-M_PI_2), 0, 1, 0)
face4.view.layer.transform = transform4

let face5 = Face(index: 5)
var transform5 = CATransform3DMakeTranslation(0, 0, -100)
transform5 = CATransform3DRotate(transform5, CGFloat(M_PI), 0, 1, 0)
face5.view.layer.transform = transform5

var perspectiveRotateY : CGFloat = 0
class PanGestureHandler : NSObject {
    func panned(gesture : UIPanGestureRecognizer) {
        switch gesture.state {
        case .Changed:
            perspectiveRotateY += 0.02
            
        default:
            break
        }
    }
}

let panGestureHandler = PanGestureHandler()
let gesture = UIPanGestureRecognizer(target: panGestureHandler, action: #selector(PanGestureHandler.panned(_:)))

XCPlaygroundPage.currentPage.liveView = rootView

