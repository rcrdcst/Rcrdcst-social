//
//  ViewController.swift
//  rcrdcst-social
//
//  Created by ricardo silva on 28/07/2016.
//  Copyright © 2016 ricardo silva. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase
import FirebaseAuth

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookLoginBtn(_ sender: AnyObject) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result: FBSDKLoginManagerLoginResult?, error: NSError?) in
            
            if error != nil {
                print("Unable to authenticate with facebook \(error)")
            } else if result?.isCancelled == true {
                print("User canceled")
            } else {
                print("Success")
                
                
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential: credential)
                
            }
            
        }
        
    }
    
    func firebaseAuth(credential: FIRAuthCredential){
        FIRAuth.auth()?.signIn(with: credential) { (user, error) in
            if error != nil {
                print("unable to authenticate with firebase \(error)")
            }else {
                print("Success")
            }
        }
    }

}

