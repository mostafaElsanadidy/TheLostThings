//
//  ViewController.swift
//  TheLostThings
//
//  Created by mostafa elsanadidy on 10/23/19.
//  Copyright © 2019 mostafa elsanadidy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignUpBttn: UIButton!
    @IBOutlet weak var LoginBttn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//       // backgroundImage.contentMode = .scaleToFill
//        backgroundImage.image = UIImage(named: "lost-wallet-found")?.resized_Image(withBounds: backgroundImage.frame.size)
//        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
//        LoginBttn.layer.borderColor = #colorLiteral(red: 1, green: 0.4392156863, blue: 0.1764705882, alpha: 1)
//        LoginBttn.layer.borderWidth = 2
        SignUpBttn.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        SignUpBttn.layer.borderWidth = 2
        
        LoginBttn.layer.cornerRadius = 10
        SignUpBttn.layer.cornerRadius = 10
    }


}


extension UIImage {
    
    func resized_Image(withBounds bounds: CGSize) -> UIImage {
        let horizontalRatio = bounds.width / size.width
        let verticalRatio = bounds.height / size.height
        let ratio = min(horizontalRatio, verticalRatio)
        let newSize = CGSize(width: size.width * ratio,
                             height: size.height * ratio)
        
        UIGraphicsBeginImageContextWithOptions(newSize, true, 0)
        draw(in: CGRect(origin: CGPoint.zero, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }}

