//
//  NewGroceryViewController.swift
//  PullToRefresh
//
//  Created by Rimil Dey on 05/11/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class NewGroceryViewController: UIViewController {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }
    
    
    // MARK: - outlets
    
    @IBOutlet weak var textView: UITextView!
    
    
    // MARK: - interactions
    
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
        
        if textView.text.characters.count > 0 {
            model.data.append(textView.text)
        }
        let _ = navigationController?.popToRootViewController(animated: true)
    }
}
 
