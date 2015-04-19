//
//  ViewController.swift
//  AnimationSample
//
//  Created by Panaswift Teachers on 05/04/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var animationSampleLabel: UILabel!

    @IBOutlet weak var VIEW: UIView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        //centering heading label and login button
        animationSampleLabel.center.x = view.center.x
        loginButton.center.x = view.center.x
        
        //setting up satus label
        statusLabel = UILabel(frame: CGRectMake(0, 0, 150, 50))
        statusLabel.text = "Loading data..."
        statusLabel.center = CGPointMake(view.center.x, view.center.y - 80)
        statusLabel.textColor = UIColor.whiteColor()
        statusLabel.font = UIFont(name: "Helvetica", size: 18)
        
        animationSampleLabel.transform = CGAffineTransformMakeScale(0, 0)
        
        usernameLabel.frame.origin.x = -usernameLabel.frame.width
        usernameTextField.frame.origin.x = -usernameTextField.frame.width
        
        passwordTextField.frame.origin.x = -passwordTextField.frame.width
        passwordTextLabel.frame.origin.x = -passwordTextLabel.frame.width
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1.5,
            delay: 0,
            options: .CurveEaseOut,
            animations:
            {
                self.usernameTextField.center.x = self.view.center.x
                self.passwordTextField.center.x = self.view.center.x
                self.usernameLabel.frame.origin.x = self.usernameTextField.frame.origin.x
                self.passwordTextLabel.frame.origin.x = self.passwordTextField.frame.origin.x
            },
            completion: {_ in})
        
        UIView.animateWithDuration(1.5,
            delay: 0.5,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 15,
            options: .CurveEaseOut,
            animations:
            {
                self.animationSampleLabel.transform = CGAffineTransformIdentity
            },
            completion:
            {
                _ in
            })
    }

    
    @IBAction func loginTapped(sender: AnyObject) {
        
        UIView.animateWithDuration(1.5,
            delay: 0,
            usingSpringWithDamping: 0.2,
            initialSpringVelocity: 15,
            options: .CurveEaseInOut,
            animations:
            {
                let b = self.loginButton.bounds
                let f = self.loginButton.frame
                
                self.loginButton.frame = CGRectMake(f.origin.x-30, f.origin.y+30, b.width+60, b.height+10)
                
            },
            completion:
            {
                _ in
                self.showLoadingStatus()
                
            })
    }
    
    func showLoadingStatus() {
        UIView.transitionWithView(self.statusLabel,
            duration: 1.5,
            options: UIViewAnimationOptions.TransitionCurlDown,
            animations:
            {
                self.view.addSubview(self.statusLabel)
            },
            completion:
            {
                _ in
            })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}













