//
//  ViewController.swift
//  validatenumber
//
//  Created by Ragulkumar K V on 20/07/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let maxLength = 10
        let currentString: NSString = textField.text! as NSString
            let newString: NSString =
        currentString.replacingCharacters(in: range, with: string) as NSString
            
        let allowedcharacters = "1234567890"
        let allowedCharactersset = CharacterSet(charactersIn:allowedcharacters)
                let typedcharacterSet = CharacterSet(charactersIn: string)
                return allowedCharactersset.isSuperset(of: typedcharacterSet) && newString.length <= maxLength

    }
    
    @IBAction func button(_ sender: Any) {
        let phonenumber = textfield.text
        if phonenumber == "7904150479"{
            let alert = UIAlertController(title: "validate", message: "Message", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}

