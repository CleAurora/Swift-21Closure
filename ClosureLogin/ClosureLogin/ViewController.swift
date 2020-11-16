//
//  ViewController.swift
//  ClosureLogin
//
//  Created by Cleís Aurora Pereira on 03/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!


    @IBAction func actionRegister(_ sender: Any) {

        if let viewRegister = UIStoryboard(name: "Register", bundle: nil).instantiateInitialViewController() as? RegisterViewController{

            viewRegister.setOnSave{
                (email, password ) in
                self.emailTextField.text = email
                self.passwordTextField.text = password
            }

            viewRegister.setMyOnSave{ (email, password) in
                self.emailTextField.text = email
                self.passwordTextField.text = password
            }

            present(viewRegister, animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

