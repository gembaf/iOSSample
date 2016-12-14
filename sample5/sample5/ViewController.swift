//
//  ViewController.swift
//  sample5
//
//  Created by Fumiya Gemba on 2016/12/14.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var dataList = ""
    let SocketURL = NSURL(string:"http://localhost:8080/")
    var socket: SocketIOClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        socket = SocketIOClient(socketURL: SocketURL! as URL)
        socket.on("connect") { data, ack in
            print("socket connected!!")
        }
        socket.on("disconnect") { data, ack in
            print("socket disconnected!!")
        }
        
        socket.on("publish") { data, emitter in
            if let message = data as? [String] {
                self.dataList += message[0] + "\n"
                self.textView.text = self.dataList
            }
        }
        socket.connect()
    }

    @IBAction func clickButton(_ sender: Any) {
        socket.emit("publish", "button pushed!!")
    }
}

