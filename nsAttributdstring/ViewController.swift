//
//  ViewController.swift
//  nsAttributdstring
//
//  Created by Ayush Sharma on 11/11/22.
//

import UIKit

class ViewController: UIViewController {
     
    @IBOutlet weak var labName: UILabel!
    
   
    var myString:NSString = "I AM KIRIT MODI"
    var myMutableString = NSMutableAttributedString()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        changeColourFonts()
        
        
        
    }

    func changeColourFonts(){
        myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 18.0)!])
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location:6,length:9))

        // set label Attribute
          labName.attributedText = myMutableString
    }
}

