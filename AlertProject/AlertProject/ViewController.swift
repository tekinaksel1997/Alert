//
//  ViewController.swift
//  AlertProject
//
//  Created by Tekin Aksel Demir on 31.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var password2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func singUp(_ sender: Any) {
        
   /*     let alert = UIAlertController(title: "Error!!!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Button Clicked")
        }
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil) */
        
        /*if userName.text == "" {
            let alert = UIAlertController(title: "Error!!!", message: "Kullanıcı Adı Girmediniz!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if password.text == "" {
            let alert = UIAlertController(title: "Error!!!", message: "Şifre Girmediniz!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if password.text != password2.text {
            let alert = UIAlertController(title: "Error!!!", message: "Şifreler Uyuşmuyor Kontrol Ediniz!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Successful", message: "Kayıt Başarılı", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }*/
        
        
        if userName.text == "" {
            singFunction(titleInput: "Error!!!", messageInput: "Username not found")
        } else if password.text == "" {
            singFunction(titleInput: "Error!!!", messageInput: "Password not found")
        } else if password2.text == "" {
            singFunction(titleInput: "Error!!!", messageInput: "Password not found")
        } else if password.text != password2.text {
            singFunction(titleInput: "Error!!!", messageInput: "Password do no match")
        }else {
            singFunction(titleInput: "Successful", messageInput: "Kayıt Başarılı")
        }
        
    }
    func singFunction(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
            }
    }
    
