//
//  ViewController.swift
//  sample3
//
//  Created by Fumiya Gemba on 2016/11/24.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let path = paths[0] + "/test.realm"
        let url = NSURL(fileURLWithPath: path) as URL
        let realm = try! Realm(fileURL: url)

        let me = User()
        me.name = "ほげほげ"
        
        try! realm.write {
            realm.add(me)
        }
        
        var text = ""
        
        for user in realm.objects(User) {
            text += user.name + "\n"
        }
        
        label.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

