//
//  SysUtils.swift
//  CCW
//
//  Created by seungbong on 2020/02/02.
//  Copyright © 2020 한승희. All rights reserved.
//

import Foundation

import UIKit

class SysUtils {
    
    static let SCREEN_WIDTH = UIScreen.main.bounds.width
    static let SCREEN_HEIGHT = UIScreen.main.bounds.height
    
    // 1줄 ToastMessage
    static func makeToast(message: String, durationTime: Double, delayTime: Double) {
        
        let toastWidth: CGFloat = 250
        let toastHeight: CGFloat = 40
        
        let toastLabel = UILabel(frame: CGRect( x: (SCREEN_WIDTH - toastWidth) / 2,
                                                y: SCREEN_HEIGHT - toastHeight - 130,
                                                width: toastWidth, height: toastHeight))
        toastLabel.text = "  " + message + "  "
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center
        toastLabel.font = UIFont(name: toastLabel.font.fontName, size: 15)
        toastLabel.backgroundColor = UIColor.black
        toastLabel.alpha = 0.5
        toastLabel.layer.cornerRadius = 15;
        toastLabel.clipsToBounds  =  true
        
        UIApplication.shared.keyWindow!.addSubview(toastLabel)
        
        UIView.animate(withDuration: durationTime, delay: delayTime, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: { (isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    // 2줄 ToastMessage
    static func makeLongToast(message: String, durationTime: Double, delayTime: Double) {
        let toastWidth: CGFloat = 250
        let toastHeight: CGFloat = 50
        
        var toastLabel = UILabel(frame: CGRect( x: (SCREEN_WIDTH - toastWidth) / 2,
                                                y: SCREEN_HEIGHT - toastHeight - 130,
                                                width: toastWidth, height: toastHeight))
        toastLabel.text = "  " + message + "  "
        toastLabel.numberOfLines = 2
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center
        toastLabel.font = UIFont(name: toastLabel.font.fontName, size: 15)
        toastLabel.backgroundColor = UIColor.black
        toastLabel.alpha = 0.6
        toastLabel.layer.cornerRadius = 20;
        toastLabel.clipsToBounds  =  true
        
        UIApplication.shared.keyWindow!.addSubview(toastLabel)
        
        UIView.animate(withDuration: durationTime, delay: delayTime, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: { (isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }

    static func showDatePickerPopupView() {
        
    }
}
