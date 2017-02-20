//
//  KeyboardViewController.swift
//  CustomKeyboard
//
//  Created by Samantha Silveira on 2/19/17.
//  Copyright © 2017 Samantha Silveira. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

   // @IBOutlet var nextKeyboardButton: UIButton!
    
    
    @IBOutlet weak var numView: UIView!
    
    @IBOutlet weak var textView: UIView!
    
    @IBAction func goToNum(_ sender: UIButton) {
        numView.isHidden = false
        textView.isHidden = true
        
    }
    
    
    @IBAction func goToText(_ sender: UIButton) {
        numView.isHidden = true
        textView.isHidden = false
    }
 
    @IBAction func globePress(_ sender: UIButton) {
        advanceToNextInputMode()
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    @IBAction func spacePress(_ button: UIButton) {
        
        (textDocumentProxy as UIKeyInput).insertText(" ")
        
    }
    
    @IBAction func keyPress(_ button: UIButton) {
        let str = button.titleLabel!.text!
        let index = str.startIndex
        (textDocumentProxy as UIKeyInput).insertText("\(str[index])")
        
    }
    
    
    
    @IBAction func BlueButton(_ button: UIButton) {
        print("blue button")
        let str = button.titleLabel!.text!
        //let index = str.startIndex
        (textDocumentProxy as UIKeyInput).insertText(str)
        
       // numView_green.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  /*
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .system)
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), for: [])
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
        
        self.view.addSubview(self.nextKeyboardButton)
        
        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
     */
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
   /*     var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
       self.nextKeyboardButton.setTitleColor(textColor, for: []) */
    }

}
