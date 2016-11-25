//
//  User.swift
//  sample3
//
//  Created by Fumiya Gemba on 2016/11/25.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import RealmSwift

class User: Object {
    dynamic var id = 0
    dynamic var name = ""
    dynamic var createdAt: Double = 0
}
