//
//  RegisterViewController.swift
//  ClosureLogin
//
//  Created by Cleís Aurora Pereira on 03/11/20.
//

import UIKit

class User{}

typealias MyOnSave = (_ email: String, _ password: String) -> Void
typealias MyOnSaveUser = (_ user: User) -> Void


class RegisterViewController: UIViewController {

    private var onSave: (( _ email: String, _ password: String) -> Void)?
    private var myOnSave: MyOnSave?

    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!

    @IBAction func actionRegister(_ sender: Any) {

        onSave?(emailTextField.text!, passwordTextField.text!)
        myOnSave?(emailTextField.text!, passwordTextField.text!)

        dismiss(animated: true, completion: nil)
    }


    func setOnSave(onSave: @escaping (_ email: String, _ password: String) -> Void){
        self.onSave = onSave
    }

    func setMyOnSave(onSave: @escaping MyOnSave){
        self.myOnSave = onSave
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}


