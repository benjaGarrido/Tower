//
//  ViewController.swift
//  Tower
//
//  Created by Benjamín Garrido Barreiro on 26/12/16.
//  Copyright © 2016 Benjamín Garrido Barreiro. All rights reserved.
//

import UIKit
enum BoxColor : Int {
    case Blue = 0
    case Green = 1
    case Red = 2
    case Orange = 3
    case Yellow = 4
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func randomColor() ->UIColor{
        let randomNumber = Int(arc4random_uniform(UInt32(5)))
        let color : BoxColor = BoxColor(rawValue: randomNumber)!
        switch color {
        case .Blue:
            return #colorLiteral(red: 0.2039215686, green: 0.5960784314, blue: 0.8588235294, alpha: 1)
        case .Green:
            return #colorLiteral(red: 0.1803921569, green: 0.8, blue: 0.4431372549, alpha: 1)
        case .Red:
            return #colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1)
        case .Orange:
            return #colorLiteral(red: 0.9019607843, green: 0.4941176471, blue: 0.1333333333, alpha: 1)
        case .Yellow:
            return #colorLiteral(red: 0.9450980392, green: 0.768627451, blue: 0.05882352941, alpha: 1)
        }
    }
    
    func randomSize() ->(width:Int, height:Int){
        let height = Int(arc4random_uniform(UInt32(100))) + 30
        let width = Int(arc4random_uniform(UInt32(100))) + 30
        return (width,height)
    }
}

