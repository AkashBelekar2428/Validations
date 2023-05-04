//
//  MainViewController.swift
//  Validations
//
//  Created by Akash Belekar on 03/05/23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfMobileNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func validationBtn(_ sender: UIButton) {
        //MARK: EmailValidation
        Utility.shared.showAlertFunc(title: "Email", msg: "vali", viewController: self) { [self] done in
            Utility.shared.isValideEmail(email: tfEmail.text!)
        }
       
      //  Utility.shared.showAlter(title: "Email", msg: "Valide", viewController: self)
       // Utility.shared.showAltersBtn(title: "Email", msg: "Incorrect Email", viewController: self)
//        if Utility.shared.isValideEmail(email: tfEmail.text!){
//            print("Valide Email")
//        }else{
//            Utility.shared.showAltersBtn(title: "Email", msg: "Incorrect Email", viewController: self, isCheckValid:.isvalideEmail, email: tfEmail.text!, password: tfPassword.text!, phoneNum: tfPassword.text!, doneAction: "Ok", cancleAction: "Cancle")
//        }
//
//        if Utility.shared.isPhoneValide(phone: tfMobileNumber.text!){
//            print("Valide phoneNumber")
//        }else{
//            Utility.shared.showAltersBtn(title: "Password", msg:"Inccorect PhoneNumber", viewController: self, isCheckValid:.isvalidePassword, email: tfEmail.text!, password: tfPassword.text!, phoneNum: tfPassword.text!, doneAction: "Ok", cancleAction: "Cancle")
//        }
//
//        if Utility.shared.isPasswordValide(password: tfPassword.text!){
//            print("Valide Password")
//        }else{
//            Utility.shared.showAltersBtn(title: "Phone", msg: "Password must contain at least one lowercase and uppercase letter also special characters (Password must be at least 8 characters long ", viewController: self, isCheckValid:.isValidePhone, email: tfEmail.text!, password: tfPassword.text!, phoneNum: tfPassword.text!, doneAction: "Ok", cancleAction: "Cancle")
//        }
//        let alter = UIAlertController(title: "Email", message: "Invalide Email", preferredStyle: .alert)
//        if Utility.shared.isValideEmail(email: self.tfEmail.text!){
//            print("Valide Email")
//        }
//        else{
//            alter.addAction(UIAlertAction(title: "Ok", style: .destructive, handler: { (_) in
//                self.dismiss(animated: true)
//            }))
//            self.present(alter, animated: true)
//        }
       
        //MARK: PasswordValidation
        
//        let passwordAlter = UIAlertController(title: "Password", message: "Password must contain at least one lowercase and uppercase letter also special characters (Password must be at least 8 characters long)", preferredStyle: .alert)
//        if Utility.shared.isPasswordValide(password: tfPassword.text!){
//            print("Valide Password")
//        }else{
//            passwordAlter.addAction(UIAlertAction(title: "Ok", style: .destructive,handler: { _ in
//                self.dismiss(animated: true)
//            }))
//            self.present(passwordAlter, animated: true)
//        }
//
//        let mobileAlter = UIAlertController(title: "Phone Number", message: "Invalide Phone Number", preferredStyle: .alert)
//        if Utility.shared.isPhoneValide(phone: tfMobileNumber.text!){
//            print("Valide Number")
//        }else{
//            mobileAlter.addAction(UIAlertAction(title: "Ok", style: .destructive,handler: { _ in
//                self.dismiss(animated: true)
//            }))
//            self.present(mobileAlter, animated: true)
//        }
        
        print("Login Success")
        
        
        
        
        
        
        
        
        
//        if (Utility.shared.isValideEmail(email: tfEmail.text!)){
//            print("Valide Email")
//        }
//        else{
//            print("Invalide Email")
//        }
//
//        //MARK: PasswordValidation
//        if (Utility.shared.isPasswordValide(password: tfPassword.text!)){
//            print("Valide Password")
//        }else{
//            print("Invalide Paswword")
//        }
//
//        //MARK: PhoneValidation
//        if (Utility.shared.isPhoneValide(phone: tfMobileNumber.text!)){
//            print("Valide number")
//        }
//        else{
//            print("Invalide Phone number")
//        }
    }
}
