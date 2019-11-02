//
//  LoginViewController.swift
//  TheLostThings
//
//  Created by mostafa elsanadidy on 10/29/19.
//  Copyright © 2019 mostafa elsanadidy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var socialMediaView: UIView!
    @IBOutlet weak var loginBttn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        mainView.layer.cornerRadius = 10
        socialMediaView.layer.cornerRadius = 10
        mainView.createShadowPath()
        socialMediaView.createShadowPath()
        loginBttn.layer.cornerRadius = 5
       // mainView.layer.borderWidth = 0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIView
    
{
    
    func createShadowPath(){
        // Initialize the path.
        let path = UIBezierPath()
        
        self.layer.cornerRadius = 8
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 4.0
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        
        path.move(to: CGPoint(x: 0.0, y: 5.0))
        path.addLine(to: CGPoint(x: self.bounds.width/2, y: self.bounds.height/2))
        print(self.bounds.width)
        path.addLine(to: CGPoint(x: self.bounds.width, y: 5.0))
        path.addLine(to: CGPoint(x: self.bounds.width, y: self.bounds.height+5.0))
        path.addLine(to: CGPoint(x: 0.0, y: self.bounds.height+5.0))
        
        self.layer.shadowPath = path.cgPath
    }
}
