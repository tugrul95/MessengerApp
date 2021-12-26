//
//  ViewController.swift
//  MessengerApp
//
//  Created by Macbook on 26.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toSend: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var important: UISwitch!
    
    @IBOutlet weak var yourMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sendButton(_ sender: Any) {
        if (toSend.text!.contains("@")) {
            
            
            
            if(important.isOn){
                yourMessage.textColor = UIColor.red
            }
            
            var send = toSend.text!
    

            if (send.contains(",")) {
                let components = send.components(separatedBy: ",")
                self.yourMessage.text = "To: \(send) \n Mesaj: \(email.text)"
                //var commaChecker = toSend.text
                //var comma = Character(",")
                //var finalSend = str.split()
            }
            if(email.text != ""){
                self.yourMessage.text = "To: \(send) \n Mesaj: \(email.text)"
            }// if condition'a eğer virgül varsa message içerisine alt alta virgülle ayırarak yazdır
            else{
                yourMessage.text = "Sending a blank message is not permitted."
            }
        }
        else {
            yourMessage.text = "Please give a valid mail address."
        }
        func seperateWithComma() {
            var send = toSend.text!
            if(toSend.text!.contains(",")) {
                var seperated = send.components(separatedBy: ",")
                //var altalta = dump(seperated)
                //self.yourMessage.text = "To: \(altalta) \n Mesaj: \(email.text)"
                var mailfeedback : String = ""
                for item in seperated{
                    mailfeedback.append("To: ")
                    mailfeedback.append(contentsOf: item)
                    mailfeedback.append("\n")
                }
                self.yourMessage.text = "\(mailfeedback) Mesaj: \(email.text)"
            }
        }
        seperateWithComma()
    }
    
}

