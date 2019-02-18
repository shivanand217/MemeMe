//
//  ViewController.swift
//  MemeME
//
//  Created by apple on 15/02/19.
//  Copyright © 2019 shiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let defaultTopTextFieldText = "TOP"
    let defaultBottomTextFieldText = "BOTTOM"
    
    let memeTextAttributes: [NSAttributedString.Key: Any] = [
        NSAttributedString.Key(rawValue: NSAttributedString.Key.strokeColor.rawValue): UIColor.black,
        NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): UIColor.white,
        NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue): UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
        NSAttributedString.Key(rawValue: NSAttributedString.Key.strokeWidth.rawValue): Float(-4.0)
    ]
    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var toolbar: UIToolbar!
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var topTextField: UILabel!
    @IBOutlet weak var bottomTextField: UILabel!
    @IBOutlet weak var cameraBarButtonItem: UIToolbar!
    @IBOutlet weak var sharedBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAttributes(forTextField: topTextField, initialText: defaultTopTextFieldText)
        setupAttributes(forTextField: bottomTextField, initialText: defaultBottomTextFieldText)
    }
    
    func setupAttributes(forTextField textField: UITextField, initialText: String) {
        textField.defaultTextAttributes = memeTextAttributes
        textField.textAlignment = .center
        textField.text = initialText
    }
    
}

