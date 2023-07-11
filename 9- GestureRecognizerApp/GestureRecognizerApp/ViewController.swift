//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by uludağ on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageRedfield: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    var isRedfield = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageRedfield.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageRedfield.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic() {
        
        
        
        if  isRedfield == true {
            imageRedfield.image = UIImage(named: "leon kennedy")
            myLabel.text = "Leon Kennedy"
            isRedfield = false
        }else{
            imageRedfield.image = UIImage(named: "chris redfield")
            myLabel.text = "Chris Redfield"
            isRedfield = true
        }
            
        
        
            print("tapped")
        }
                                                

}

