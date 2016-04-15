//: show Cube

import UIKit
import XCPlayground

struct CustomView {
    static let colors = [[#Color(colorLiteralRed: 0.1431525945663452, green: 0.4145618975162506, blue: 0.7041897773742676, alpha: 1)#],[#Color(colorLiteralRed: 0.1288586854934692, green: 0, blue: 0.4869538545608521, alpha: 1)#],[#Color(colorLiteralRed: 0.4931360483169556, green: 0, blue: 0.1765155345201492, alpha: 1)#],[#Color(colorLiteralRed: 0.8949507474899292, green: 0.1438436359167099, blue: 0.08480125665664673, alpha: 1)#],[#Color(colorLiteralRed: 0.9346159696578979, green: 0.6284804344177246, blue: 0.107728436589241, alpha: 1)#],[#Color(colorLiteralRed: 0.2818343937397003, green: 0.5693024396896362, blue: 0.1281824260950089, alpha: 1)#]]
    var view = UILabel(frame: CGRectMake(0, 0, 100, 100))
    let index : Int
    
    init (index : Int) {
        view.backgroundColor = CustomView.colors[index]
        view.text = "\(index)"
        view.adjustsFontSizeToFitWidth = true
        view.textColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]
        view.textAlignment = .Center
        view.center = rootView.center
        rootView.addSubview(view)
        
        self.index = index
    }
}

let rootView = UIView(frame: CGRect(origin: CGPointZero, size: CGSize(width: 320 , height: 480)))
rootView.backgroundColor = [#Color(colorLiteralRed: 1, green: 0.9999743700027466, blue: 0.9999912977218628, alpha: 1)#]

let customView1 = CustomView(index: 0)

XCPlaygroundPage.currentPage.liveView = rootView

