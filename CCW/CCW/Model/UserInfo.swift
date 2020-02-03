//
//  UserInfo.swift
//  CCW
//
//  Created by seungbong on 2020/02/02.
//  Copyright © 2020 한승희. All rights reserved.
//

import Foundation

class UserInfo{
    
    static let UserShared: UserInfo = UserInfo()
    
    var id: String = ""
    var password: String = ""
    var birthDay: String = ""
    var introduction: String = ""
    var phoneNumber: String = ""
    //var Profile: URL?
}
