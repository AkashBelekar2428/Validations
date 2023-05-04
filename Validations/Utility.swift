//
//  Utility.swift
//  Validations
//
//  Created by Akash Belekar on 03/05/23.
//

import Foundation
import UIKit

public class Utility{
    
    static var shared = Utility()
    
    public func showAlter(title:String,msg:String,viewController:UIViewController) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default,handler:{ _ in
        })
        
        alert.addAction(action)
        
        DispatchQueue.main.async(execute:{
            viewController.present(alert, animated: true)})
    }
    
   public func showAltersBtn(title:String, msg:String, viewController: UIViewController, doneAction:String, cancleAction:String){
        
        let alter = UIAlertController(title: title, message: msg, preferredStyle: .alert)
       
        let ok = UIAlertAction(title: doneAction, style: .default, handler: { _ in
            print("Ok")
        })
        
        let cancle = UIAlertAction(title: cancleAction, style: .cancel,handler: { _ in
            print("Cancle")
        })
       
        alter.addAction(ok)
        alter.addAction(cancle)
       
        DispatchQueue.main.async(execute: {
            viewController.present(alter, animated: true)
        })
    }
    
    //MARK: ComplitionHandler
    public func showAlertFunc(title:String, msg:String,viewController: UIViewController, complitionHandler:@escaping([String]) -> Void){
        let alter = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: { _ in
            print("Ok")
        })
        
        let cancle = UIAlertAction(title: "cancle", style: .cancel,handler: { _ in
            print("Cancle")
        })
       
        alter.addAction(ok)
        alter.addAction(cancle)
       
        DispatchQueue.main.async(execute: {
            viewController.present(alter, animated: true)
        })
        
        
    }
    
    //MARK: ValideEmail
    public func isValideEmail(email EnterEmail:String) -> Bool{
        let emailReg = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailReg)
        return emailTest.evaluate(with: EnterEmail)
    }
    
    //MARK: ValidePassword
    public func isPasswordValide(password EnterPassword:String) -> Bool {
        let passwordReg = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordReg)
        return passwordTest.evaluate(with: EnterPassword)
    }
    
    //MARK: ValidePhone
    public func isPhoneValide(phone EnterPhone:String) -> Bool{
        let phoneNumber = "^[6-9]\\d{9}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneNumber)
        return phoneTest.evaluate(with: EnterPhone)
    }
}
