//
//  SavedViewHelper.swift
//  TryOn
//
//  Created by QiFeng on 7/26/15.
//  Copyright © 2015 QiFeng. All rights reserved.
//

import Foundation
import UIKit

class SavedViewHelper {
    class func addFloatingView (processingView: EditPageViewController) {
        let gridUnit = round(processingView.view.frame.size.width/12)
        let rectHud : CGRect = CGRectMake(0, 0, 5 * gridUnit, 5 * gridUnit)
        processingView.savedFloatingView = UIView(frame: rectHud)
        processingView.savedFloatingView.center = processingView.view.center
        processingView.savedFloatingView.layer.cornerRadius = 10
        processingView.savedFloatingView.backgroundColor = UIColor(red:CGFloat(51/255.0), green: CGFloat(51/255.0), blue: CGFloat(51/255.0), alpha: CGFloat(0.5))
        processingView.view.addSubview(processingView.savedFloatingView)
        
        let savedImg = UIImage(named: "saved")
        let savedImgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
        savedImgView.center = CGPointMake(processingView.savedFloatingView.center.x, processingView.savedFloatingView.center.y - 10)

        savedImgView.image = savedImg
        processingView.view.addSubview(savedImgView)
        
        //text
        let savedLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 5*gridUnit, height: 45))
        savedLabel.center = CGPointMake(processingView.savedFloatingView.center.x, processingView.savedFloatingView.center.y + 35)
        savedLabel.text = "Saved to album!"
        savedLabel.font = UIFont.systemFontOfSize(17)
        savedLabel.textColor = UIColor.whiteColor()
        savedLabel.textAlignment = NSTextAlignment.Center
        processingView.view.addSubview(savedLabel)
    }
    
    class func removeFloatingView (processingView: EditPageViewController) {
        processingView.savedFloatingView.removeFromSuperview()
    }
    
}