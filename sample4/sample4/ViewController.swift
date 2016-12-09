//
//  ViewController.swift
//  sample4
//
//  Created by Fumiya Gemba on 2016/12/07.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 指定したURLからGET
        let URLstr = "https://private-7e76b-sample412.apiary-mock.com/questions"
        if let url = URL(string: URLstr) {
            let request = URLRequest(url: url)
            NSURLConnection.sendAsynchronousRequest(
                request,
                queue: .main,
                completionHandler: fetchResponse)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 取得したデータを加工
    func fetchResponse(res: URLResponse?, data: Data?, error: Error?){
        if error == nil {
            let myData = NSString(data: data!, encoding: String.Encoding.utf8.rawValue) as! String
            textView.text = myData
        }
    }
}

